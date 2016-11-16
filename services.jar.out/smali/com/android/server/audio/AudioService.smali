.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$MediaPlayerInfo;,
        Lcom/android/server/audio/AudioService$DeviceListSpec;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$ScoClient;,
        Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$StreamOverride;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$ControllerService;,
        Lcom/android/server/audio/AudioService$1;,
        Lcom/android/server/audio/AudioService$2;,
        Lcom/android/server/audio/AudioService$3;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field public static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field public static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field public static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field public static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field public static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field public static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_DEVICES:Z

.field protected static final DEBUG_MODE:Z

.field protected static final DEBUG_VOL:Z

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field private static MAX_STREAM_VOLUME:[I = null

.field private static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x19

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x1a

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_MICROPHONE_MUTE:I = 0x17

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MSG_UNMUTE_STREAM:I = 0x18

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VISUALIZER_WHITELIST:[Ljava/lang/String;

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field private static final mMediaPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$MediaPlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private mA2dpConnectedDevice:Ljava/lang/String;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private mConnectedBTDevicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioService$DeviceListSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field mFixedVolumeDevices:I

.field private mForceAnalogCarDock:Z

.field private mForceAnalogDeskDock:Z

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field mFullVolumeDevices:I

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mHotwordAudioInputPackage:Ljava/lang/String;

.field private mHotwordInputLock:Ljava/lang/Object;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLinkNotificationWithVolume:Z

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mSafeVolumeEnabled:Z

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private final mUseFixedVolume:Z

.field private mVibrateSetting:I

.field private mVisualizerLocked:Z

.field private final mVoiceCapable:Z

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumeKeysControlRingStream:Z

.field private mVolumePolicy:Landroid/media/VolumePolicy;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedBTDevicesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ControllerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic -get2()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mForceAnalogCarDock:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mForceAnalogDeskDock:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mLinkNotificationWithVolume:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic -get29(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/AudioService;)[[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic -get31(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic -get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get33(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic -get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/server/audio/AudioService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic -get43(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic -get44(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic -get45()I
    .locals 1

    sget v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mSafeVolumeEnabled:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mVolumeKeysControlRingStream:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mLinkNotificationWithVolume:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "exceptPid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->safeVolumeEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "skipStream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p1, "userSwitch"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap37(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/audio/AudioService;II)I
    .locals 1
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/audio/AudioService;IZ)V
    .locals 0
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0
    .param p1, "updateVolumes"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/audio/AudioService;III)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v1, 0xa

    const/4 v4, 0x3

    .line 150
    const-string/jumbo v0, "AudioService.MOD"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    .line 153
    const-string/jumbo v0, "AudioService.AP"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    .line 156
    const-string/jumbo v0, "AudioService.VOL"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    .line 159
    const-string/jumbo v0, "AudioService.DEVICES"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    sput-object v0, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 288
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 302
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 366
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    .line 592
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 614
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 615
    const-string/jumbo v1, "android"

    aput-object v1, v0, v5

    .line 616
    const-string/jumbo v1, "com.android.systemui"

    aput-object v1, v0, v6

    .line 617
    const-string/jumbo v1, "com.android.keyguard"

    aput-object v1, v0, v7

    .line 618
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v4

    .line 614
    sput-object v0, Lcom/android/server/audio/AudioService;->VISUALIZER_WHITELIST:[Ljava/lang/String;

    .line 6100
    new-array v0, v4, [Ljava/lang/String;

    .line 6101
    const-string/jumbo v1, "SILENT"

    aput-object v1, v0, v5

    .line 6102
    const-string/jumbo v1, "VIBRATE"

    aput-object v1, v0, v6

    .line 6103
    const-string/jumbo v1, "NORMAL"

    aput-object v1, v0, v7

    .line 6100
    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    .line 145
    return-void

    .line 288
    nop

    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
    .end array-data

    .line 302
    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    .line 366
    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x3

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 628
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 209
    new-instance v0, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 210
    new-instance v0, Lcom/android/server/audio/AudioService$ControllerService;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$ControllerService;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    .line 270
    iput v6, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 275
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 285
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    filled-new-array {v3, v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 324
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 336
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 348
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 381
    new-instance v0, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 404
    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 414
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHotwordInputLock:Ljava/lang/Object;

    .line 433
    new-instance v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 462
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpConnectedDevice:Ljava/lang/String;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedBTDevicesList:Ljava/util/ArrayList;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 526
    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 530
    iput v6, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 535
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 536
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 540
    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 544
    iput v6, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    .line 548
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 551
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 553
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 552
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 556
    const v0, 0x2c1400

    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 561
    iput v6, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 567
    iput-boolean v11, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 572
    iput v6, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 586
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 588
    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 595
    sget-object v0, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 1981
    iput v6, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1982
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 3236
    new-instance v0, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 3235
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 5177
    const v0, 0x27f8c

    .line 5176
    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    .line 5884
    iput v6, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 5890
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    .line 6000
    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 6011
    new-instance v0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-direct {v0, p0, v5}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    .line 6528
    new-instance v0, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 6527
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 6617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6616
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 6618
    iput v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 629
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 630
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 631
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 633
    invoke-static {p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 635
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 636
    .local v9, "pm":Landroid/os/PowerManager;
    const-string/jumbo v0, "handleAudioEvent"

    invoke-virtual {v9, v11, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 638
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    .line 639
    .local v10, "vibrator":Landroid/os/Vibrator;
    if-nez v10, :cond_4

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 642
    const-string/jumbo v0, "ro.config.vc_call_vol_steps"

    .line 643
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v6

    .line 642
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 644
    .local v8, "maxVolume":I
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v6

    if-eq v8, v0, :cond_0

    .line 645
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v8, v0, v6

    .line 646
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v1, v8, 0x3

    div-int/lit8 v1, v1, 0x4

    aput v1, v0, v6

    .line 648
    :cond_0
    const-string/jumbo v0, "ro.config.media_vol_steps"

    .line 649
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v2

    .line 648
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 650
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v2

    if-eq v8, v0, :cond_1

    .line 651
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v8, v0, v2

    .line 652
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v1, v8, 0x3

    div-int/lit8 v1, v1, 0x4

    aput v1, v0, v2

    .line 655
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 656
    const v1, 0x10e0005

    .line 655
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    .line 658
    iput v6, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 660
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 661
    const v1, 0x1120068

    .line 660
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mVoiceCapable:Z

    .line 663
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    .line 665
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 667
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v7

    .line 668
    .local v7, "cameraSoundForced":Z
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 669
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 673
    if-eqz v7, :cond_5

    .line 674
    const/16 v4, 0xb

    .line 670
    :goto_1
    const/16 v1, 0x8

    .line 671
    const/4 v2, 0x2

    .line 672
    const/4 v3, 0x4

    .line 669
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 678
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 679
    const-string/jumbo v2, "audio_safe_volume_state"

    .line 678
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 683
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 684
    const v1, 0x10e0093

    .line 683
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 686
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 687
    const v1, 0x1120091

    .line 686
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 689
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 690
    const v1, 0x1120044

    .line 689
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mForceAnalogDeskDock:Z

    .line 691
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 692
    const v1, 0x1120046

    .line 691
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mForceAnalogCarDock:Z

    .line 695
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 696
    const-string/jumbo v1, "volume_link_notification"

    .line 695
    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_6

    move v0, v11

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mLinkNotificationWithVolume:Z

    .line 700
    const-string/jumbo v0, "AudioService"

    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 701
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 702
    new-instance v0, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    .line 704
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initVolumeSteps()V

    .line 705
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    .line 707
    new-instance v0, Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 708
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 707
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService$VolumeController;Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 710
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 714
    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    .line 715
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 719
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 720
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string/jumbo v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    const-string/jumbo v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    const-string/jumbo v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    .line 733
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_2

    .line 734
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    .line 738
    :cond_2
    const-string/jumbo v0, "ro.audio.monitorRotation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 739
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_3

    .line 740
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v0, v1}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 743
    :cond_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 745
    const-class v0, Landroid/media/AudioManagerInternal;

    new-instance v1, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 628
    return-void

    .line 639
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "maxVolume":I
    :cond_4
    invoke-virtual {v10}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_0

    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "maxVolume":I
    :cond_5
    move v4, v6

    .line 674
    goto/16 :goto_1

    :cond_6
    move v0, v6

    .line 695
    goto/16 :goto_2

    .line 324
    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
    .end array-data

    .line 336
    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    .line 348
    :array_2
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
    .end array-data
.end method

.method private adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 28
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 1352
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_0

    .line 1353
    return-void

    .line 1355
    :cond_0
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adjustStreamVolume() stream="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", dir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1356
    const-string/jumbo v7, ", flags="

    .line 1355
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1356
    const-string/jumbo v7, ", caller="

    .line 1355
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    .line 1359
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1361
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v19

    .line 1363
    .local v19, "isMuteAdjust":Z
    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1370
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v5, p1

    .line 1372
    .local v8, "streamTypeAlias":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v5, v8

    .line 1374
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v12

    .line 1376
    .local v12, "device":I
    invoke-virtual {v14, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v17

    .line 1377
    .local v17, "aliasIndex":I
    const/16 v16, 0x1

    .line 1382
    .local v16, "adjustVolume":Z
    and-int/lit16 v5, v12, 0x380

    if-nez v5, :cond_4

    .line 1383
    and-int/lit8 v5, p3, 0x40

    if-eqz v5, :cond_4

    .line 1384
    return-void

    .line 1364
    .end local v8    # "streamTypeAlias":I
    .end local v12    # "device":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v16    # "adjustVolume":Z
    .end local v17    # "aliasIndex":I
    :cond_3
    return-void

    .line 1389
    .restart local v8    # "streamTypeAlias":I
    .restart local v12    # "device":I
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v16    # "adjustVolume":Z
    .restart local v17    # "aliasIndex":I
    :cond_4
    const/16 v5, 0x3e8

    move/from16 v0, p6

    if-ne v0, v5, :cond_5

    .line 1390
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v5

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result p6

    .line 1392
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v6, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v6, v6, v8

    move/from16 v0, p6

    move-object/from16 v1, p4

    invoke-virtual {v5, v6, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    .line 1394
    return-void

    .line 1398
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v5

    .line 1399
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 1402
    and-int/lit8 p3, p3, -0x21

    .line 1403
    const/4 v5, 0x3

    if-ne v8, v5, :cond_12

    .line 1404
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v5, v12

    if-eqz v5, :cond_12

    .line 1405
    or-int/lit8 p3, p3, 0x20

    .line 1410
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_11

    .line 1411
    and-int/lit8 v5, v12, 0xc

    if-eqz v5, :cond_11

    .line 1412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v26, v0

    .line 1416
    .local v26, "step":I
    :goto_0
    if-eqz v17, :cond_7

    .line 1417
    move/from16 v17, v26

    .line 1426
    :cond_7
    :goto_1
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_8

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v5

    if-ne v8, v5, :cond_b

    .line 1428
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v24

    .line 1430
    .local v24, "ringerMode":I
    const/4 v5, 0x1

    move/from16 v0, v24

    if-ne v0, v5, :cond_9

    .line 1431
    and-int/lit8 p3, p3, -0x11

    .line 1436
    :cond_9
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    .line 1435
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZ)I

    move-result v23

    .line 1437
    .local v23, "result":I
    and-int/lit8 v5, v23, 0x1

    if-eqz v5, :cond_13

    const/16 v16, 0x1

    .line 1439
    :goto_2
    move/from16 v0, v23

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_a

    .line 1440
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    .line 1443
    :cond_a
    move/from16 v0, v23

    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_b

    .line 1444
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    .line 1448
    .end local v23    # "result":I
    .end local v24    # "ringerMode":I
    :cond_b
    const/4 v5, 0x3

    if-ne v8, v5, :cond_c

    .line 1449
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_c

    .line 1450
    const/16 v16, 0x0

    .line 1453
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v22

    .line 1455
    .local v22, "oldIndex":I
    if-eqz v16, :cond_20

    if-eqz p2, :cond_20

    .line 1456
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 1459
    const/4 v5, 0x3

    if-ne v8, v5, :cond_e

    .line 1460
    and-int/lit16 v5, v12, 0x380

    if-eqz v5, :cond_e

    .line 1461
    and-int/lit8 v5, p3, 0x40

    if-nez v5, :cond_e

    .line 1462
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1463
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v5, :cond_d

    .line 1464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_d
    monitor-exit v6

    .line 1469
    :cond_e
    if-eqz v19, :cond_19

    .line 1471
    const/16 v5, 0x65

    move/from16 v0, p2

    if-ne v0, v5, :cond_15

    .line 1472
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/16 v25, 0x0

    .line 1476
    .local v25, "state":Z
    :goto_3
    const/4 v5, 0x3

    if-ne v8, v5, :cond_f

    .line 1477
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1479
    :cond_f
    const/16 v27, 0x0

    .local v27, "stream":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v5, v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_1d

    .line 1480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v27

    if-ne v8, v5, :cond_10

    .line 1481
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v27

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v5

    .line 1483
    const/4 v6, 0x7

    .line 1482
    if-ne v5, v6, :cond_17

    const/4 v5, 0x1

    .line 1481
    :goto_5
    if-nez v5, :cond_10

    .line 1484
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v27

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1479
    :cond_10
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 1398
    .end local v22    # "oldIndex":I
    .end local v25    # "state":Z
    .end local v26    # "step":I
    .end local v27    # "stream":I
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 1414
    :cond_11
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v26

    .restart local v26    # "step":I
    goto/16 :goto_0

    .line 1421
    .end local v26    # "step":I
    :cond_12
    const/16 v5, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v8}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v26

    .restart local v26    # "step":I
    goto/16 :goto_1

    .line 1437
    .restart local v23    # "result":I
    .restart local v24    # "ringerMode":I
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1462
    .end local v23    # "result":I
    .end local v24    # "ringerMode":I
    .restart local v22    # "oldIndex":I
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1472
    :cond_14
    const/16 v25, 0x1

    .restart local v25    # "state":Z
    goto :goto_3

    .line 1474
    .end local v25    # "state":Z
    :cond_15
    const/16 v5, -0x64

    move/from16 v0, p2

    if-ne v0, v5, :cond_16

    const/16 v25, 0x1

    .restart local v25    # "state":Z
    goto :goto_3

    .end local v25    # "state":Z
    :cond_16
    const/16 v25, 0x0

    .restart local v25    # "state":Z
    goto :goto_3

    .line 1482
    .restart local v27    # "stream":I
    :cond_17
    const/4 v5, 0x0

    goto :goto_5

    .line 1481
    :cond_18
    const/4 v5, 0x0

    goto :goto_5

    .line 1488
    .end local v25    # "state":Z
    .end local v27    # "stream":I
    :cond_19
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_1a

    .line 1489
    add-int v5, v17, v26

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v12}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1492
    :cond_1a
    mul-int v5, p2, v26

    move-object/from16 v0, p5

    invoke-virtual {v14, v5, v12, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 1493
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    .line 1492
    if-eqz v5, :cond_1d

    .line 1496
    :cond_1b
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1498
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_22

    .line 1500
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1508
    :cond_1c
    :goto_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 1509
    const/4 v10, 0x0

    .line 1510
    const/4 v11, 0x2

    .line 1512
    const/4 v13, 0x0

    .line 1514
    const/4 v15, 0x0

    .line 1508
    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1518
    :cond_1d
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v21

    .line 1519
    .local v21, "newIndex":I
    const/4 v5, 0x3

    if-ne v8, v5, :cond_1e

    .line 1520
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 1522
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v5, :cond_20

    .line 1523
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v6

    .line 1525
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    if-eqz v5, :cond_1f

    .line 1526
    const/4 v5, 0x3

    if-ne v8, v5, :cond_1f

    .line 1527
    move/from16 v0, v22

    move/from16 v1, v21

    if-eq v0, v1, :cond_1f

    .line 1528
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1529
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_23

    const/16 v20, 0x19

    .line 1531
    .local v20, "keyCode":I
    :goto_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v9, 0x1

    move/from16 v0, v20

    invoke-virtual {v5, v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v9, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v20    # "keyCode":I
    :cond_1f
    monitor-exit v6

    .line 1538
    .end local v21    # "newIndex":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v18

    .line 1539
    .local v18, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v18

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 1351
    return-void

    .line 1490
    .end local v18    # "index":I
    :cond_21
    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    goto/16 :goto_7

    .line 1501
    :cond_22
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_1c

    .line 1502
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1c

    .line 1503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x18

    const/4 v7, 0x2

    .line 1504
    const/4 v10, 0x0

    const/16 v11, 0x15e

    move/from16 v9, p3

    .line 1503
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_6

    .line 1530
    .restart local v21    # "newIndex":I
    :cond_23
    const/16 v20, 0x18

    .restart local v20    # "keyCode":I
    goto :goto_8

    .line 1528
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v7

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1523
    .end local v20    # "keyCode":I
    :catchall_3
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 1313
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1314
    const-string/jumbo v3, ", flags="

    .line 1313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1314
    const-string/jumbo v3, ", caller="

    .line 1313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v7

    .line 1317
    .local v7, "isMute":Z
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1318
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 1322
    .local v1, "streamType":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1323
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v0, v1

    .line 1326
    .local v8, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    .line 1327
    const/4 v0, 0x2

    if-eq v8, v0, :cond_1

    .line 1328
    and-int/lit8 p3, p3, -0x5

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v8, p3, v7}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1334
    const/4 p1, 0x0

    .line 1335
    and-int/lit8 p3, p3, -0x5

    .line 1336
    and-int/lit8 p3, p3, -0x11

    .line 1337
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "Volume controller suppressed adjustment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1340
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1312
    return-void

    .line 1320
    .end local v1    # "streamType":I
    .end local v8    # "resolvedStream":I
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamType":I
    goto :goto_0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 1862
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1864
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1866
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1861
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .prologue
    .line 3799
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3800
    .local v0, "broadcast":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3801
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3803
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3797
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 3177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x13

    .line 3178
    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    .line 3177
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3176
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    .line 3808
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3809
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3810
    .local v0, "broadcast":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3811
    const-string/jumbo v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3812
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3806
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 5020
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 5019
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 6

    .prologue
    .line 1078
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 1079
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1080
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1081
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    .line 1083
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    .line 1084
    const-string/jumbo v5, "AudioService"

    .line 1082
    invoke-virtual {v2, v4, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1087
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1088
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    .line 1077
    return-void

    .line 1078
    .end local v0    # "numStreamTypes":I
    .end local v1    # "streamType":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    .prologue
    .line 1096
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1097
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1098
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1097
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1094
    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1102
    return-void
.end method

.method private checkForRingerModeChange(IIIZ)I
    .locals 11
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I
    .param p4, "isMuted"    # Z

    .prologue
    const/16 v10, 0x64

    const/16 v9, 0x65

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, -0x1

    .line 3503
    iget v5, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    if-ne v5, v7, :cond_1

    const/4 v2, 0x1

    .line 3504
    .local v2, "isTv":Z
    :goto_0
    const/4 v3, 0x1

    .line 3505
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v4

    .line 3507
    .local v4, "ringerMode":I
    packed-switch v4, :pswitch_data_0

    .line 3587
    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :cond_0
    :goto_1
    const-string/jumbo v5, "AudioService.checkForRingerModeChange"

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 3593
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 3595
    return v3

    .line 3503
    .end local v2    # "isTv":Z
    .end local v3    # "result":I
    .end local v4    # "ringerMode":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isTv":Z
    goto :goto_0

    .line 3509
    .restart local v3    # "result":I
    .restart local v4    # "ringerMode":I
    :pswitch_0
    if-ne p2, v6, :cond_3

    .line 3510
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v5, :cond_2

    .line 3516
    if-gt p3, p1, :cond_0

    mul-int/lit8 v5, p3, 0x2

    if-ge p1, v5, :cond_0

    .line 3517
    const/4 v4, 0x1

    .line 3518
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    goto :goto_1

    .line 3521
    :cond_2
    if-ne p1, p3, :cond_0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v5, :cond_0

    .line 3522
    const/4 v4, 0x0

    goto :goto_1

    .line 3525
    :cond_3
    if-eqz v2, :cond_0

    if-eq p2, v9, :cond_4

    .line 3526
    const/16 v5, -0x64

    if-ne p2, v5, :cond_0

    .line 3527
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v5, :cond_5

    .line 3528
    const/4 v4, 0x1

    .line 3533
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 3530
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 3537
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v5, :cond_6

    .line 3538
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3542
    :cond_6
    if-ne p2, v6, :cond_a

    .line 3544
    if-eqz v2, :cond_8

    mul-int/lit8 v5, p3, 0x2

    if-lt p1, v5, :cond_8

    if-eqz p4, :cond_8

    .line 3545
    const/4 v4, 0x2

    .line 3563
    :cond_7
    :goto_3
    and-int/lit8 v3, v3, -0x2

    .line 3564
    goto :goto_1

    .line 3546
    :cond_8
    iget v5, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    if-eq v5, v6, :cond_7

    .line 3547
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v5, :cond_9

    .line 3548
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3549
    iget-wide v8, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    .line 3548
    sub-long v0, v6, v8

    .line 3550
    .local v0, "diff":J
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-lez v5, :cond_7

    .line 3551
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v5}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    move-result v5

    .line 3550
    if-eqz v5, :cond_7

    .line 3552
    const/4 v4, 0x0

    goto :goto_3

    .line 3555
    .end local v0    # "diff":J
    :cond_9
    const/16 v3, 0x801

    goto :goto_3

    .line 3558
    :cond_a
    if-eq p2, v8, :cond_b

    .line 3559
    if-ne p2, v9, :cond_c

    .line 3561
    :cond_b
    :goto_4
    const/4 v4, 0x2

    goto :goto_3

    .line 3560
    :cond_c
    if-ne p2, v10, :cond_7

    goto :goto_4

    .line 3566
    :pswitch_2
    if-eqz v2, :cond_e

    if-ne p2, v6, :cond_e

    mul-int/lit8 v5, p3, 0x2

    if-lt p1, v5, :cond_e

    if-eqz p4, :cond_e

    .line 3568
    const/4 v4, 0x2

    .line 3584
    :cond_d
    :goto_5
    and-int/lit8 v3, v3, -0x2

    .line 3585
    goto/16 :goto_1

    .line 3569
    :cond_e
    if-eq p2, v8, :cond_f

    .line 3570
    if-ne p2, v9, :cond_10

    .line 3572
    :cond_f
    :goto_6
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v5, :cond_11

    .line 3573
    const/16 v3, 0x81

    goto :goto_5

    .line 3571
    :cond_10
    if-ne p2, v10, :cond_d

    goto :goto_6

    .line 3575
    :cond_11
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v5, :cond_12

    if-ne p2, v8, :cond_12

    .line 3576
    const/4 v4, 0x1

    .line 3575
    goto :goto_5

    .line 3580
    :cond_12
    const/4 v4, 0x2

    goto :goto_5

    .line 3507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkMuteAffectedStreams()V
    .locals 5

    .prologue
    .line 1108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1109
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v2, v0

    .line 1110
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get2(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1111
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    .end local v1    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_1
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 5950
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 5951
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSafeVolumeEnabled:Z

    if-eqz v0, :cond_0

    .line 5952
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 5953
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    if-ne v0, v3, :cond_0

    .line 5954
    and-int/lit8 v0, p3, 0xc

    if-eqz v0, :cond_0

    .line 5955
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p2, v0, :cond_0

    monitor-exit v1

    .line 5956
    return v2

    .line 5958
    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 5950
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 3084
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    .line 3085
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 3086
    const/16 v1, 0xa

    .line 3085
    if-eq v0, v1, :cond_0

    .line 3087
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 3082
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 16
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    .line 5185
    const/4 v9, 0x0

    .line 5186
    .local v9, "delay":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedBTDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 5187
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkSendBecomingNoisyIntent on state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    return v9

    .line 5191
    :cond_0
    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int v2, v2, p1

    if-eqz v2, :cond_3

    .line 5192
    const/4 v11, 0x0

    .line 5193
    .local v11, "devices":I
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "checkSendBecomingNoisyIntent update the noise"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5194
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 5195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v10, v2, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    .line 5196
    .local v10, "dev":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v10

    if-nez v2, :cond_1

    .line 5197
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v2, v10

    if-eqz v2, :cond_1

    .line 5198
    or-int/2addr v11, v10

    .line 5194
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 5201
    .end local v10    # "dev":I
    :cond_2
    move/from16 v0, p1

    if-ne v11, v0, :cond_3

    .line 5202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5203
    const/16 v3, 0xf

    .line 5204
    const/4 v4, 0x0

    .line 5205
    const/4 v5, 0x0

    .line 5206
    const/4 v6, 0x0

    .line 5207
    const/4 v7, 0x0

    .line 5208
    const/4 v8, 0x0

    .line 5202
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5209
    const/16 v9, 0x3e8

    .line 5213
    .end local v11    # "devices":I
    .end local v12    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v2

    .line 5213
    if-nez v2, :cond_4

    .line 5215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v2

    .line 5213
    if-eqz v2, :cond_6

    .line 5216
    :cond_4
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v3

    .line 5217
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 5218
    .local v14, "time":J
    sget-object v2, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v14

    if-lez v2, :cond_5

    .line 5219
    sget-object v2, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    sub-long/2addr v4, v14

    long-to-int v2, v4

    add-int/lit8 v9, v2, 0x1e

    :cond_5
    monitor-exit v3

    .line 5223
    .end local v14    # "time":J
    :cond_6
    return v9

    .line 5216
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .prologue
    .line 5375
    const-string/jumbo v17, "android.media.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5376
    const-string/jumbo v17, "android.media.extra.AUDIO_PLUG_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5377
    const/16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 5378
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5379
    .local v15, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [I

    .line 5380
    .local v14, "portGeneration":[I
    invoke-static {v15, v14}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v16

    .line 5381
    .local v16, "status":I
    if-nez v16, :cond_8

    .line 5382
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "port$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPort;

    .line 5383
    .local v12, "port":Landroid/media/AudioPort;
    instance-of v0, v12, Landroid/media/AudioDevicePort;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v4, v12

    .line 5384
    check-cast v4, Landroid/media/AudioDevicePort;

    .line 5385
    .local v4, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->type()I

    move-result v17

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 5386
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->type()I

    move-result v17

    const/high16 v18, 0x40000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 5388
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v8

    .line 5389
    .local v8, "formats":[I
    array-length v0, v8

    move/from16 v17, v0

    if-lez v17, :cond_5

    .line 5390
    new-instance v6, Ljava/util/ArrayList;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5391
    .local v6, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    array-length v0, v8

    move/from16 v18, v0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget v7, v8, v17

    .line 5393
    .local v7, "format":I
    if-eqz v7, :cond_2

    .line 5394
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5391
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 5397
    .end local v7    # "format":I
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v5, v0, [I

    .line 5398
    .local v5, "encodingArray":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    .line 5399
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aput v17, v5, v9

    .line 5398
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 5401
    :cond_4
    const-string/jumbo v17, "android.media.extra.ENCODINGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 5404
    .end local v5    # "encodingArray":[I
    .end local v6    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "i":I
    :cond_5
    const/4 v11, 0x0

    .line 5405
    .local v11, "maxChannels":I
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    aget v10, v18, v17

    .line 5406
    .local v10, "mask":I
    invoke-static {v10}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v3

    .line 5407
    .local v3, "channelCount":I
    if-le v3, v11, :cond_6

    .line 5408
    move v11, v3

    .line 5405
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 5411
    .end local v3    # "channelCount":I
    .end local v10    # "mask":I
    :cond_7
    const-string/jumbo v17, "android.media.extra.MAX_CHANNEL_COUNT"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 5374
    .end local v4    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v8    # "formats":[I
    .end local v11    # "maxChannels":I
    .end local v12    # "port":Landroid/media/AudioPort;
    .end local v13    # "port$iterator":Ljava/util/Iterator;
    .end local v14    # "portGeneration":[I
    .end local v15    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v16    # "status":I
    :cond_8
    return-void
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 958
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    .line 959
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    .line 960
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    .line 957
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .prologue
    .line 1117
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1118
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1120
    .local v2, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1121
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$VolumeStreamState;)V

    aput-object v3, v2, v0

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1124
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 1125
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 1126
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 1116
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1958
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1959
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1960
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    .line 1961
    .local v0, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1962
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 1963
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1964
    const/4 v2, 0x1

    return v2

    .line 1967
    .end local v0    # "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .param p1, "exceptPid"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 3144
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3145
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    .line 3146
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    .line 3147
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 3148
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 3149
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 3150
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 3151
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3150
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3152
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x9

    .line 3153
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3152
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v7

    .line 3143
    return-void

    .line 3155
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    .line 3156
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    .line 3155
    if-eqz v0, :cond_1

    .line 3157
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3144
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 3161
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6516
    const-string/jumbo v2, "\nAudio policies:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6517
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    .line 6518
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "policy$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6519
    .local v0, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6517
    .end local v0    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v1    # "policy$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "policy$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 6515
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6107
    const-string/jumbo v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6110
    const-string/jumbo v0, "affected"

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 6111
    const-string/jumbo v0, "muted"

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 6112
    const-string/jumbo v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6106
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "streams"    # I

    .prologue
    const/16 v4, 0x2c

    .line 6116
    const-string/jumbo v3, "- ringer mode "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " streams = 0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6117
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6118
    if-eqz p3, :cond_5

    .line 6119
    const-string/jumbo v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6120
    const/4 v0, 0x1

    .line 6121
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 6122
    const/4 v3, 0x1

    shl-int v2, v3, v1

    .line 6123
    .local v2, "stream":I
    and-int v3, p3, v2

    if-eqz v3, :cond_1

    .line 6124
    if-nez v0, :cond_0

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 6125
    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6126
    not-int v3, v2

    and-int/2addr p3, v3

    .line 6127
    const/4 v0, 0x0

    .line 6121
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6130
    .end local v2    # "stream":I
    :cond_2
    if-eqz p3, :cond_4

    .line 6131
    if-nez v0, :cond_3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 6132
    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 6134
    :cond_4
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 6136
    .end local v0    # "first":Z
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6115
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1130
    const-string/jumbo v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1132
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-wrap0(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1135
    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1137
    :cond_0
    const-string/jumbo v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 5925
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 5926
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/16 v7, 0xc

    .line 5927
    .local v7, "devices":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 5929
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    if-eqz v7, :cond_2

    .line 5930
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    const/4 v0, 0x1

    shl-int v3, v0, v9

    .line 5931
    .local v3, "device":I
    and-int v0, v3, v7

    if-nez v0, :cond_0

    move v9, v8

    .line 5932
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 5934
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_0
    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 5935
    .local v10, "index":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_1

    .line 5936
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5937
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5939
    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    .line 5937
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5945
    :cond_1
    not-int v0, v3

    and-int/2addr v7, v0

    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 5924
    .end local v3    # "device":I
    .end local v10    # "index":I
    :cond_2
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 6186
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$ControllerService;->-get0(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService$ControllerService;->-get0(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6187
    return-void

    .line 6189
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 6190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6189
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6185
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 3669
    sparse-switch p1, :sswitch_data_0

    .line 3678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3668
    :sswitch_0
    return-void

    .line 3669
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 2173
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2172
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 3683
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 3684
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3682
    :cond_1
    return-void
.end method

.method private getActiveStreamType(I)I
    .locals 6
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x5

    const/high16 v1, -0x80000000

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 3718
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    packed-switch v0, :pswitch_data_0

    .line 3758
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3759
    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 3761
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    :cond_0
    const/4 v0, 0x6

    return v0

    .line 3720
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3721
    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3724
    const/4 v0, 0x6

    return v0

    .line 3727
    :cond_1
    return v3

    .line 3729
    :cond_2
    if-ne p1, v1, :cond_8

    .line 3730
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3731
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_3

    .line 3732
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    :cond_3
    return v2

    .line 3735
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mVolumeKeysControlRingStream:Z

    if-eqz v0, :cond_6

    .line 3736
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_5

    .line 3737
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    :cond_5
    return v5

    .line 3740
    :cond_6
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_7

    .line 3741
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_MUSIC b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    :cond_7
    return v2

    .line 3745
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3746
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_9

    .line 3747
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    :cond_9
    return v2

    .line 3752
    :pswitch_1
    if-ne p1, v1, :cond_15

    .line 3754
    return v2

    .line 3764
    :cond_a
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    :cond_b
    return v3

    .line 3768
    :cond_c
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    .line 3767
    invoke-static {v4, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3770
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    .line 3769
    invoke-static {v5, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 3767
    if-eqz v0, :cond_f

    .line 3771
    :cond_d
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    :cond_e
    return v4

    .line 3773
    :cond_f
    if-ne p1, v1, :cond_15

    .line 3774
    sget v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3775
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    :cond_10
    return v2

    .line 3778
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mVolumeKeysControlRingStream:Z

    if-eqz v0, :cond_13

    .line 3779
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_12

    .line 3780
    const-string/jumbo v0, "AudioService"

    .line 3781
    const-string/jumbo v1, "getActiveStreamType: using STREAM_NOTIFICATION as default"

    .line 3780
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    :cond_12
    return v4

    .line 3784
    :cond_13
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_14

    .line 3785
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_MUSIC b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    :cond_14
    return v2

    .line 3792
    :cond_15
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    :cond_16
    return p1

    .line 3718
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 3128
    const/4 v8, 0x0

    .line 3129
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 3130
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3132
    const/4 v3, 0x1

    .line 3131
    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 3138
    .end local v8    # "result":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 3139
    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    .line 3138
    :goto_0
    const/16 v1, 0x9

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3140
    return v8

    :cond_1
    move v6, v2

    .line 3139
    goto :goto_0
.end method

.method private getCurrentUserId()I
    .locals 5

    .prologue
    .line 1819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1821
    .local v2, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1822
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1826
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1822
    return v4

    .line 1823
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .line 1826
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1828
    const/4 v4, 0x0

    return v4

    .line 1825
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 1826
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1825
    throw v4
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 3863
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 3864
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 3871
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 3872
    const/4 v0, 0x2

    .line 3883
    :cond_0
    :goto_0
    return v0

    .line 3873
    :cond_1
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 3874
    const/high16 v0, 0x40000

    goto :goto_0

    .line 3875
    :cond_2
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 3876
    const/high16 v0, 0x80000

    goto :goto_0

    .line 3877
    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 3878
    const/high16 v0, 0x200000

    goto :goto_0

    .line 3880
    :cond_4
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method private getDevicesForStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 3887
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .locals 2
    .param p1, "stream"    # I
    .param p2, "checkOthers"    # Z

    .prologue
    .line 3891
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3892
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 3893
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 3892
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .prologue
    .line 3092
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3093
    const/4 v0, 0x0

    .line 3094
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3095
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .local v1, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3096
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3097
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_0

    monitor-exit v5

    .line 3098
    return-object v0

    .line 3095
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_0

    .line 3100
    :cond_1
    if-eqz p2, :cond_2

    .line 3101
    :try_start_3
    new-instance v0, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$ScoClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3102
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    monitor-exit v5

    .line 3104
    return-object v0

    .line 3092
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5

    throw v4

    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_2

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_1
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5718
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 5720
    .local v9, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_0

    .line 5721
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    .line 5722
    .local v11, "newOrientation":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    if-eq v11, v0, :cond_0

    .line 5723
    iput v11, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    .line 5724
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    .line 5727
    .end local v11    # "newOrientation":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5732
    const-string/jumbo v5, "AudioService"

    .line 5728
    const/16 v1, 0x10

    .line 5729
    const/4 v2, 0x0

    .line 5730
    const/4 v3, 0x0

    .line 5731
    const/4 v4, 0x0

    .line 5733
    const/4 v6, 0x0

    .line 5727
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5735
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v7

    .line 5736
    .local v7, "cameraSoundForced":Z
    iget-object v13, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5737
    const/4 v8, 0x0

    .line 5738
    .local v8, "cameraSoundForcedChanged":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5739
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v7, v0, :cond_1

    .line 5740
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5741
    const/4 v8, 0x1

    :cond_1
    :try_start_3
    monitor-exit v1

    .line 5744
    if-eqz v8, :cond_3

    .line 5745
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5746
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v12, v0, v1

    .line 5747
    .local v12, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v7, :cond_4

    .line 5748
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 5749
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 5757
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 5760
    .end local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5764
    if-eqz v7, :cond_5

    .line 5765
    const/16 v4, 0xb

    .line 5761
    :goto_1
    const/16 v1, 0x8

    .line 5762
    const/4 v2, 0x2

    .line 5763
    const/4 v3, 0x4

    .line 5766
    const/4 v5, 0x0

    .line 5767
    const/4 v6, 0x0

    .line 5760
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5769
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5774
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x7

    aget-object v5, v1, v2

    .line 5770
    const/16 v1, 0xa

    .line 5771
    const/4 v2, 0x2

    .line 5772
    const/4 v3, 0x0

    .line 5773
    const/4 v4, 0x0

    .line 5774
    const/4 v6, 0x0

    .line 5769
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :try_start_4
    monitor-exit v13

    .line 5777
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5714
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :goto_2
    return-void

    .line 5738
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5736
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v13

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 5778
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    .line 5779
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Error handling configuration change: "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5752
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string/jumbo v1, "AudioService"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 5753
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 5765
    .end local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5138
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_0

    .line 5139
    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleDeviceConnection("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " dev:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5140
    const-string/jumbo v6, " address:"

    .line 5139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5140
    const-string/jumbo v6, " name:"

    .line 5139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5140
    const-string/jumbo v6, ")"

    .line 5139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5142
    :cond_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 5143
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5144
    .local v0, "deviceKey":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_1

    .line 5145
    const-string/jumbo v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deviceKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5147
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5148
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 5149
    .local v2, "isConnected":Z
    :goto_0
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_2

    .line 5150
    const-string/jumbo v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deviceSpec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is(already)Connected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5152
    :cond_2
    if-eqz p1, :cond_3

    if-eqz v2, :cond_5

    .line 5162
    :cond_3
    if-nez p1, :cond_7

    if-eqz v2, :cond_7

    .line 5164
    const/4 v4, 0x0

    .line 5163
    invoke-static {p2, v4, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 5166
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 5167
    return v9

    .line 5148
    .end local v2    # "isConnected":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isConnected":Z
    goto :goto_0

    .line 5154
    :cond_5
    const/4 v4, 0x1

    .line 5153
    :try_start_1
    invoke-static {p2, v4, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 5155
    .local v3, "res":I
    if-eqz v3, :cond_6

    .line 5156
    const-string/jumbo v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not connecting device 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5157
    const-string/jumbo v7, " due to command error "

    .line 5156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 5158
    return v8

    .line 5160
    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v6, p0, p2, p4, p3}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 5161
    return v9

    .end local v3    # "res":I
    :cond_7
    monitor-exit v5

    .line 5170
    return v8

    .line 5142
    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "isConnected":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1972
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1973
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1974
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1975
    const/4 v1, 0x1

    return v1

    .line 1978
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 5025
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private initVolumeSteps()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 916
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 917
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_voice_call"

    .line 918
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v4

    .line 917
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 916
    aput v1, v0, v4

    .line 920
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 921
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_system"

    .line 922
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v5

    .line 921
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 920
    aput v1, v0, v5

    .line 924
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 925
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_ring"

    .line 926
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v6

    .line 925
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 924
    aput v1, v0, v6

    .line 928
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 929
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_music"

    .line 930
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v7

    .line 929
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 928
    aput v1, v0, v7

    .line 932
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 933
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_alarm"

    .line 934
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v8

    .line 933
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 932
    aput v1, v0, v8

    .line 936
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 937
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_notification"

    .line 938
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    .line 937
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 936
    const/4 v2, 0x5

    aput v1, v0, v2

    .line 940
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 941
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_bluetooth_sco"

    .line 942
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    .line 941
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 940
    const/4 v2, 0x6

    aput v1, v0, v2

    .line 944
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 945
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_system_enforced"

    .line 946
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    .line 945
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 944
    const/4 v2, 0x7

    aput v1, v0, v2

    .line 948
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 949
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_dtmf"

    .line 950
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    .line 949
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 948
    const/16 v2, 0x8

    aput v1, v0, v2

    .line 952
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 953
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_tts"

    .line 954
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    .line 953
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 952
    const/16 v2, 0x9

    aput v1, v0, v2

    .line 903
    return-void
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2
    .param p1, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 3713
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3714
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    .line 3713
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInCommunication()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 3694
    const/4 v0, 0x0

    .line 3697
    .local v0, "IsInCall":Z
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "telecom"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 3699
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3700
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 3701
    .local v0, "IsInCall":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3703
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isMuteAdjust(I)Z
    .locals 2
    .param p1, "adjust"    # I

    .prologue
    const/4 v0, 0x1

    .line 3689
    const/16 v1, -0x64

    if-eq p1, v1, :cond_0

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 3690
    :cond_1
    const/16 v1, 0x65

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformTelevision()Z
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformVoice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 201
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3604
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .locals 12
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v10, 0x0

    .line 5572
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 5575
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 5576
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 5577
    const-class v8, Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    .line 5578
    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    .line 5577
    invoke-virtual {v8, v9}, Landroid/app/ActivityManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 5580
    .end local v1    # "homeActivityName":Landroid/content/ComponentName;
    :cond_0
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v8, "android.permission.RECORD_AUDIO"

    aput-object v8, v4, v10

    .line 5583
    .local v4, "permissions":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 5584
    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x0

    .line 5583
    invoke-interface {v8, v4, v10, v9}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 5588
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_4

    .line 5589
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 5591
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x2710

    if-ge v8, v9, :cond_2

    .line 5588
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5585
    .end local v2    # "j":I
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 5586
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Landroid/util/AndroidRuntimeException;

    invoke-direct {v8, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 5595
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "j":I
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    const-string/jumbo v8, "android.permission.INTERACT_ACROSS_USERS"

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 5599
    if-eqz v1, :cond_3

    .line 5600
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 5599
    if-eqz v8, :cond_3

    .line 5601
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    .line 5599
    if-nez v8, :cond_1

    .line 5605
    :cond_3
    :try_start_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5606
    .local v7, "uid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 5607
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 5608
    const-string/jumbo v11, "killBackgroundUserProcessesWithAudioRecordPermission"

    .line 5606
    invoke-interface {v8, v9, v10, v11}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 5609
    .end local v7    # "uid":I
    :catch_1
    move-exception v0

    .line 5610
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "AudioService"

    const-string/jumbo v9, "Error calling killUid"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5571
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_4
    return-void
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2548
    sget-object v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string/jumbo v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2549
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2550
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    .line 2551
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 2549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2547
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 18

    .prologue
    .line 2556
    const/4 v13, 0x0

    .line 2559
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 2560
    return-void

    .line 2563
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    .line 2566
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1110001

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 2568
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v15, "audio_assets"

    invoke-static {v13, v15}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2569
    const-string/jumbo v15, "version"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2570
    .local v14, "version":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2572
    .local v11, "inTouchSoundsGroup":Z
    const-string/jumbo v15, "1.0"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2574
    :cond_1
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2575
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2576
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 2587
    :goto_0
    if-eqz v11, :cond_2

    .line 2588
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2589
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 2590
    if-nez v5, :cond_5

    .line 2624
    .end local v5    # "element":Ljava/lang/String;
    :cond_2
    if-eqz v13, :cond_3

    .line 2625
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2555
    .end local v11    # "inTouchSoundsGroup":Z
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "version":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 2579
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v11    # "inTouchSoundsGroup":Z
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "version":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v15, "group"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2580
    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2581
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v15, "touch_sounds"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2582
    const/4 v11, 0x1

    .line 2583
    goto :goto_0

    .line 2593
    .end local v12    # "name":Ljava/lang/String;
    :cond_5
    const-string/jumbo v15, "asset"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2594
    const-string/jumbo v15, "id"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2595
    .local v10, "id":Ljava/lang/String;
    const-string/jumbo v15, "file"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 2599
    .local v7, "file":Ljava/lang/String;
    :try_start_2
    const-class v15, Landroid/media/AudioManager;

    invoke-virtual {v15, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 2600
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .line 2606
    .local v8, "fx":I
    :try_start_3
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 2607
    .local v9, "i":I
    const/4 v15, -0x1

    if-ne v9, v15, :cond_6

    .line 2608
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    .line 2609
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2611
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v15, v15, v8

    const/16 v16, 0x0

    aput v9, v15, v16
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2617
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "fx":I
    .end local v9    # "i":I
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "inTouchSoundsGroup":Z
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2618
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    const-string/jumbo v15, "AudioService"

    const-string/jumbo v16, "audio assets file not found"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2624
    if-eqz v13, :cond_3

    .line 2625
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 2601
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "file":Ljava/lang/String;
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v11    # "inTouchSoundsGroup":Z
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "version":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 2602
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v15, "AudioService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid touch sound ID: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2619
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "inTouchSoundsGroup":Z
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "version":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 2620
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string/jumbo v15, "AudioService"

    const-string/jumbo v16, "XML parser exception reading touch sound assets"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2624
    if-eqz v13, :cond_3

    .line 2625
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 2621
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v2

    .line 2622
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v15, "AudioService"

    const-string/jumbo v16, "I/O exception reading touch sound assets"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2624
    if-eqz v13, :cond_3

    .line 2625
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 2623
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 2624
    if-eqz v13, :cond_7

    .line 2625
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2623
    :cond_7
    throw v15
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x80

    .line 4949
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 4950
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4952
    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 4953
    invoke-static {v3, v7, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 4956
    const-string/jumbo v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4957
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 4958
    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4959
    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v2, p0, v3, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 4957
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4946
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .prologue
    .line 4990
    const-string/jumbo v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4992
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 4993
    const/16 v2, 0x80

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4992
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4995
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4996
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4987
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 4969
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4970
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4973
    const-string/jumbo v0, ""

    .line 4972
    invoke-static {v3, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 4974
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 4975
    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4974
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4976
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v7

    .line 4978
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 4979
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 4980
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xc

    .line 4981
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4980
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    monitor-exit v7

    .line 4968
    return-void

    .line 4969
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 4976
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v4, -0x7ffe0000

    .line 5003
    const-string/jumbo v0, ""

    const/4 v1, 0x1

    .line 5002
    invoke-static {v4, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 5004
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 5005
    invoke-direct {p0, v4, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5006
    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const-string/jumbo v3, ""

    invoke-direct {v2, p0, v4, v3, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 5004
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5001
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x7ffe0000

    .line 5013
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    .line 5012
    invoke-static {v2, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 5014
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 5015
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5014
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5011
    return-void
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .locals 2
    .param p0, "card"    # I
    .param p1, "device"    # I

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private muteRingerModeStreams()V
    .locals 17

    .prologue
    .line 2247
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    .line 2248
    .local v10, "numStreamTypes":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2249
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-nez v1, :cond_1

    const/4 v11, 0x1

    .line 2250
    .local v11, "ringerModeMute":Z
    :goto_0
    add-int/lit8 v13, v10, -0x1

    .local v13, "streamType":I
    :goto_1
    if-ltz v13, :cond_8

    .line 2251
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v9

    .line 2252
    .local v9, "isMuted":Z
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v12

    .line 2253
    :goto_2
    if-ne v9, v12, :cond_3

    .line 2250
    :goto_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 2248
    .end local v9    # "isMuted":Z
    .end local v11    # "ringerModeMute":Z
    .end local v13    # "streamType":I
    :cond_0
    const/4 v11, 0x1

    .restart local v11    # "ringerModeMute":Z
    goto :goto_0

    .line 2249
    .end local v11    # "ringerModeMute":Z
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "ringerModeMute":Z
    goto :goto_0

    .line 2252
    .restart local v9    # "isMuted":Z
    .restart local v13    # "streamType":I
    :cond_2
    const/4 v12, 0x0

    .local v12, "shouldMute":Z
    goto :goto_2

    .line 2254
    .end local v12    # "shouldMute":Z
    :cond_3
    if-nez v12, :cond_7

    .line 2257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v13

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 2258
    const-class v16, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v16

    .line 2259
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v1, v13

    .line 2260
    .local v15, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 2261
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2262
    .local v4, "device":I
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 2263
    .local v14, "value":I
    if-nez v14, :cond_4

    .line 2264
    const-string/jumbo v1, "AudioService"

    const/16 v2, 0xa

    invoke-virtual {v15, v2, v4, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 2260
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2268
    .end local v4    # "device":I
    .end local v14    # "value":I
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v4

    .line 2269
    .restart local v4    # "device":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 2274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v2, v13

    .line 2270
    const/4 v2, 0x1

    .line 2271
    const/4 v3, 0x2

    .line 2273
    const/4 v5, 0x0

    .line 2275
    const/16 v7, 0x1f4

    .line 2269
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v16

    .line 2278
    .end local v4    # "device":I
    .end local v8    # "i":I
    .end local v15    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v13

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2279
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    const/4 v2, 0x1

    shl-int/2addr v2, v13

    not-int v2, v2

    and-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    goto :goto_3

    .line 2258
    :catchall_0
    move-exception v1

    monitor-exit v16

    throw v1

    .line 2282
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v13

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2283
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    const/4 v2, 0x1

    shl-int/2addr v2, v13

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_3

    .line 2242
    .end local v9    # "isMuted":Z
    :cond_8
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .locals 4
    .param p1, "skipStream"    # I

    .prologue
    .line 3898
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 3899
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3900
    if-eq v0, p1, :cond_0

    .line 3901
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3899
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    .line 3897
    return-void

    .line 3898
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 3182
    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 3183
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3184
    .local v0, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3185
    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    .line 3186
    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 3185
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3187
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3188
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 3181
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const v10, 0xea60

    .line 3413
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3414
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSafeVolumeEnabled:Z

    if-eqz v0, :cond_1

    .line 3415
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3416
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 3418
    .local v7, "device":I
    and-int/lit8 v0, v7, 0xc

    if-eqz v0, :cond_1

    .line 3419
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 3420
    const/16 v1, 0xe

    .line 3421
    const/4 v2, 0x0

    .line 3422
    const/4 v3, 0x0

    .line 3423
    const/4 v4, 0x0

    .line 3425
    const v6, 0xea60

    move-object v5, p1

    .line 3419
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3426
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 3427
    .local v8, "index":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3428
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_1

    .line 3430
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 3431
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_0

    .line 3432
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 3433
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 3435
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_1
    monitor-exit v9

    .line 3412
    return-void

    .line 3413
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .locals 11
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 3447
    iget-object v10, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v10

    .line 3448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    .line 3449
    .local v7, "mcc":I
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v0, v7, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 3450
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3451
    const v1, 0x10e0093

    .line 3450
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 3453
    const-string/jumbo v0, "audio.safemedia.force"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3454
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3455
    const v1, 0x112008a

    .line 3454
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 3458
    :goto_0
    const-string/jumbo v0, "audio.safemedia.bypass"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 3463
    .local v8, "safeMediaVolumeBypass":Z
    if-eqz v9, :cond_1

    if-eqz v8, :cond_5

    .line 3478
    :cond_1
    const/4 v3, 0x1

    .line 3479
    .local v3, "persistedState":I
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 3481
    :cond_2
    :goto_1
    iput v7, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 3482
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 3483
    const/16 v1, 0x12

    .line 3484
    const/4 v2, 0x2

    .line 3486
    const/4 v4, 0x0

    .line 3487
    const/4 v5, 0x0

    .line 3488
    const/4 v6, 0x0

    .line 3482
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeBypass":Z
    :cond_3
    monitor-exit v10

    .line 3446
    return-void

    .line 3453
    :cond_4
    const/4 v9, 0x1

    .local v9, "safeMediaVolumeEnabled":Z
    goto :goto_0

    .line 3464
    .end local v9    # "safeMediaVolumeEnabled":Z
    .restart local v8    # "safeMediaVolumeBypass":Z
    :cond_5
    const/4 v3, 0x3

    .line 3468
    .restart local v3    # "persistedState":I
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 3469
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    if-nez v0, :cond_6

    .line 3470
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 3471
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3447
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeBypass":Z
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 3474
    .restart local v3    # "persistedState":I
    .restart local v7    # "mcc":I
    .restart local v8    # "safeMediaVolumeBypass":Z
    :cond_6
    const/4 v0, 0x2

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 9
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 6538
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDynamicPolicyMixStateUpdate("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6539
    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v6

    .line 6540
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "policy$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6541
    .local v3, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mix$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    .line 6542
    .local v1, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 6544
    :try_start_1
    iget-object v5, v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v5, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v6

    .line 6549
    return-void

    .line 6545
    :catch_0
    move-exception v0

    .line 6546
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6547
    iget-object v8, v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 6546
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6539
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "mix":Landroid/media/audiopolicy/AudioMix;
    .end local v2    # "mix$iterator":Ljava/util/Iterator;
    .end local v3    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v4    # "policy$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v4    # "policy$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v6

    .line 6537
    return-void
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 2

    .prologue
    .line 4964
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4963
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 15
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 5030
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_0

    .line 5031
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5033
    :cond_0
    if-nez p1, :cond_1

    .line 5034
    return-void

    .line 5036
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 5037
    .local v8, "address":Ljava/lang/String;
    invoke-static {v8}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5038
    const-string/jumbo v8, ""

    .line 5041
    :cond_2
    iget-object v13, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v13

    .line 5043
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 5042
    const/16 v2, 0x80

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5044
    .local v11, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5045
    .local v9, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v9, :cond_6

    const/4 v10, 0x1

    .line 5047
    .local v10, "isConnected":Z
    :goto_0
    if-eqz v10, :cond_8

    const/4 v1, 0x2

    move/from16 v0, p2

    if-eq v0, v1, :cond_8

    .line 5048
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5049
    if-nez p2, :cond_3

    .line 5053
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f40

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    .line 5060
    :cond_3
    :goto_1
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5061
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 5062
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 5063
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xc

    .line 5064
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 5063
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_2
    monitor-exit v13

    .line 5028
    return-void

    .line 5045
    .end local v10    # "isConnected":Z
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "isConnected":Z
    goto :goto_0

    .line 5057
    :cond_7
    :try_start_3
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "All devices are disconneted, update Policymanager "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 5041
    .end local v9    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v10    # "isConnected":Z
    .end local v11    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1

    .line 5060
    .restart local v9    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v10    # "isConnected":Z
    .restart local v11    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v14

    throw v1

    .line 5067
    :cond_8
    if-nez v10, :cond_5

    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 5069
    const-string/jumbo v1, "BluetoothA2dp"

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mA2dpConnectedDevice:Ljava/lang/String;

    .line 5070
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5072
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 5073
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mA2dpConnectedDevice:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    .line 5082
    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 5084
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5085
    :try_start_5
    iget-object v12, p0, Lcom/android/server/audio/AudioService;->mA2dpConnectedDevice:Ljava/lang/String;

    .line 5086
    .local v12, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 5087
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v12, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 5088
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xc

    .line 5089
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 5088
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_a
    :try_start_6
    monitor-exit v14

    goto :goto_2

    .line 5077
    .end local v12    # "name":Ljava/lang/String;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5078
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 5079
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    goto :goto_3

    .line 5084
    :catchall_2
    move-exception v1

    monitor-exit v14

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 8
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x2

    .line 5098
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v4, :cond_0

    .line 5099
    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    :cond_0
    if-nez p1, :cond_1

    .line 5102
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "onSetA2dpSourceConnectionState device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5103
    return-void

    .line 5105
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5106
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5107
    const-string/jumbo v0, ""

    .line 5110
    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 5111
    const/high16 v4, -0x7ffe0000

    :try_start_0
    invoke-direct {p0, v4, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5112
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5113
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 5115
    .local v2, "isConnected":Z
    :goto_0
    if-eqz v2, :cond_5

    if-eq p2, v7, :cond_5

    .line 5116
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v5

    .line 5096
    return-void

    .line 5113
    .end local v2    # "isConnected":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isConnected":Z
    goto :goto_0

    .line 5117
    :cond_5
    if-nez v2, :cond_3

    if-ne p2, v7, :cond_3

    .line 5118
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5110
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "isConnected":Z
    .end local v3    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1598
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    .local v1, "stream":I
    move-object v0, p0

    move v2, p2

    move v3, p4

    move-object v5, p5

    .line 1599
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 1601
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    .line 1602
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 1604
    :cond_0
    if-nez p2, :cond_5

    .line 1605
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    .line 1611
    .local v6, "newRingerMode":I
    :goto_0
    const-string/jumbo v0, "AudioService.onSetStreamVolume"

    invoke-direct {p0, v6, v0, v4}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1614
    .end local v6    # "newRingerMode":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v1

    if-nez p2, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1597
    return-void

    .line 1606
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v0, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v0, :cond_4

    const/4 v6, 0x0

    .restart local v6    # "newRingerMode":I
    goto :goto_0

    .line 1607
    .end local v6    # "newRingerMode":I
    :cond_4
    const/4 v6, 0x2

    .restart local v6    # "newRingerMode":I
    goto :goto_0

    .line 1609
    .end local v6    # "newRingerMode":I
    :cond_5
    const/4 v6, 0x2

    .restart local v6    # "newRingerMode":I
    goto :goto_0
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5310
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v2, :cond_0

    .line 5311
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetWiredDeviceConnectionState(dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5312
    const-string/jumbo v4, " state:"

    .line 5311
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5312
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 5311
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5313
    const-string/jumbo v4, " address:"

    .line 5311
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5314
    const-string/jumbo v4, " deviceName:"

    .line 5311
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5315
    const-string/jumbo v4, " caller: "

    .line 5311
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5315
    const-string/jumbo v4, ");"

    .line 5311
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    :cond_0
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 5319
    if-nez p2, :cond_2

    if-eq p1, v5, :cond_1

    .line 5320
    if-ne p1, v6, :cond_3

    .line 5322
    :cond_1
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5324
    :cond_2
    and-int/lit16 v2, p1, -0x6001

    if-eqz v2, :cond_4

    .line 5325
    const/high16 v2, -0x80000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_6

    .line 5326
    const v2, 0x7fffe7ff

    and-int/2addr v2, p1

    if-nez v2, :cond_5

    const/4 v7, 0x1

    .line 5327
    .local v7, "isUsb":Z
    :goto_1
    if-ne p2, v0, :cond_7

    :goto_2
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    monitor-exit v8

    .line 5329
    return-void

    .line 5321
    .end local v7    # "isUsb":Z
    :cond_3
    const/high16 v2, 0x20000

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 5324
    :cond_4
    const/4 v7, 0x1

    .restart local v7    # "isUsb":Z
    goto :goto_1

    .line 5326
    .end local v7    # "isUsb":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "isUsb":Z
    goto :goto_1

    .line 5325
    .end local v7    # "isUsb":Z
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "isUsb":Z
    goto :goto_1

    :cond_7
    move v0, v1

    .line 5327
    goto :goto_2

    .line 5331
    :cond_8
    if-eqz p2, :cond_10

    .line 5332
    if-eq p1, v5, :cond_9

    .line 5333
    if-ne p1, v6, :cond_f

    .line 5335
    :cond_9
    :goto_3
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5337
    :cond_a
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_b

    .line 5338
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5339
    const/16 v1, 0xe

    .line 5340
    const/4 v2, 0x0

    .line 5341
    const/4 v3, 0x0

    .line 5342
    const/4 v4, 0x0

    .line 5344
    const v6, 0xea60

    move-object v5, p5

    .line 5338
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5347
    :cond_b
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_d

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_d

    .line 5348
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 5349
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 5350
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_d

    .line 5351
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5352
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v0, :cond_c

    .line 5353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 5354
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    :try_start_3
    monitor-exit v1

    .line 5368
    :cond_d
    :goto_4
    if-nez v7, :cond_e

    const v0, -0x7ffffff0

    if-eq p1, v0, :cond_e

    .line 5369
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_e
    monitor-exit v8

    .line 5309
    return-void

    .line 5334
    :cond_f
    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_a

    goto :goto_3

    .line 5351
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5318
    .end local v7    # "isUsb":Z
    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0

    .line 5360
    .restart local v7    # "isUsb":Z
    :cond_10
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_d

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_d

    .line 5361
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_d

    .line 5362
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5363
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v0

    goto :goto_4

    .line 5362
    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private onUnmuteStream(II)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1544
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, p1

    .line 1545
    .local v2, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1547
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1548
    .local v0, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 1549
    .local v1, "index":I
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 1543
    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 10
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3823
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3826
    .local v8, "ident":J
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3827
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3828
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3822
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 4

    .prologue
    .line 6179
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    .line 6180
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 6181
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6177
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 9
    .param p1, "userSwitch"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 2738
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 2741
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 2742
    .local v0, "numStreamTypes":I
    const/4 v2, 0x0

    .local v2, "streamType":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2743
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v3, v2

    .line 2745
    .local v1, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v3, v8, :cond_0

    .line 2742
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2749
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 2750
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 2752
    :try_start_0
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2753
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 2752
    if-eqz v3, :cond_3

    .line 2754
    :cond_2
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-set0(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v4

    goto :goto_1

    .line 2750
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2761
    .end local v1    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 2763
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 2764
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 2765
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 2767
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    .line 2768
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 2769
    const-string/jumbo v5, "unsafe_volume_music_active_ms"

    const/4 v6, 0x0

    const/4 v7, -0x2

    .line 2768
    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 2770
    const/4 v5, 0x0

    const v6, 0x44aa200

    .line 2768
    invoke-static {v3, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 2771
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mSafeVolumeEnabled:Z

    if-eqz v3, :cond_5

    .line 2772
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 2773
    const-string/jumbo v3, "AudioService"

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    monitor-exit v4

    .line 2736
    return-void

    .line 2767
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private readCameraSoundForced()Z
    .locals 2

    .prologue
    .line 5700
    const-string/jumbo v0, "audio.camerasound.force"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5701
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5702
    const v1, 0x112008c

    .line 5701
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 5700
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1194
    const-string/jumbo v2, "dock_audio_media_enabled"

    .line 1193
    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 1196
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 1200
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v2, :cond_1

    move v4, v1

    .line 1198
    :goto_1
    const/4 v2, 0x2

    .line 1199
    const/4 v3, 0x3

    .line 1202
    const/4 v5, 0x0

    .line 1196
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1191
    return-void

    :cond_0
    move v0, v6

    .line 1193
    goto :goto_0

    :cond_1
    move v4, v6

    .line 1201
    goto :goto_1
.end method

.method private readPersistedSettings()V
    .locals 13

    .prologue
    const/4 v5, 0x2

    const/4 v12, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1220
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v8, "mode_ringer"

    .line 1219
    invoke-static {v0, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1221
    .local v4, "ringerModeFromSettings":I
    move v3, v4

    .line 1224
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1225
    const/4 v3, 0x2

    .line 1227
    :cond_0
    if-ne v3, v6, :cond_1

    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_7

    .line 1230
    :cond_1
    :goto_0
    if-eq v3, v4, :cond_2

    .line 1231
    const-string/jumbo v8, "mode_ringer"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1233
    :cond_2
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v8, :cond_3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1234
    :cond_3
    const/4 v3, 0x2

    .line 1236
    :cond_4
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1237
    :try_start_0
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 1238
    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_5

    .line 1239
    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v8, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 1247
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_8

    move v8, v5

    .line 1245
    :goto_1
    const/4 v10, 0x0

    .line 1246
    const/4 v11, 0x1

    .line 1245
    invoke-static {v10, v11, v8}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v8

    iput v8, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1249
    iget v8, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1251
    iget-boolean v10, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v10, :cond_9

    .line 1250
    :goto_2
    const/4 v10, 0x0

    .line 1249
    invoke-static {v8, v10, v5}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v5

    iput v5, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1254
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    .line 1255
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1256
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->safeVolumeEnabled(Landroid/content/ContentResolver;)Z

    move-result v8

    invoke-direct {v5, v8}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mSafeVolumeEnabled:Z

    .line 1259
    const-string/jumbo v5, "volume_keys_control_ring_stream"

    const/4 v8, 0x1

    .line 1260
    const/4 v10, -0x2

    .line 1258
    invoke-static {v0, v5, v8, v10}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_a

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mVolumeKeysControlRingStream:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 1264
    const-string/jumbo v5, "volume_link_notification"

    .line 1263
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_b

    move v5, v6

    :goto_4
    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mLinkNotificationWithVolume:Z

    .line 1267
    const-string/jumbo v5, "mute_streams_affected"

    const/16 v8, 0x2e

    .line 1266
    invoke-static {v0, v5, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1270
    const-string/jumbo v5, "volume_master_mute"

    invoke-static {v0, v5, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_c

    const/4 v1, 0x1

    .line 1272
    .local v1, "masterMute":Z
    :goto_5
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_6

    .line 1273
    const/4 v1, 0x0

    .line 1274
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1276
    :cond_6
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1277
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1280
    const-string/jumbo v5, "microphone_mute"

    invoke-static {v0, v5, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_d

    const/4 v2, 0x1

    .line 1281
    .local v2, "microphoneMute":Z
    :goto_6
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1286
    const-string/jumbo v5, "android.media.RINGER_MODE_CHANGED"

    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v5, v8}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1287
    const-string/jumbo v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-direct {p0, v5, v8}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1290
    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1291
    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1294
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1215
    return-void

    .line 1228
    .end local v1    # "masterMute":Z
    .end local v2    # "microphoneMute":Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    move v8, v7

    .line 1248
    goto/16 :goto_1

    :cond_9
    move v5, v7

    .line 1252
    goto/16 :goto_2

    :cond_a
    move v5, v7

    .line 1258
    goto :goto_3

    .line 1236
    :catchall_0
    move-exception v5

    monitor-exit v9

    throw v5

    :cond_b
    move v5, v7

    .line 1263
    goto :goto_4

    .line 1270
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "masterMute":Z
    goto :goto_5

    .line 1280
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "microphoneMute":Z
    goto :goto_6
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3167
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3168
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 3169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 3170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3172
    const-string/jumbo v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3173
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(Z)V

    .line 3166
    return-void

    .line 3167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Ljava/lang/Integer;

    .prologue
    .line 6167
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6173
    const/4 v0, 0x0

    return-object v0

    .line 6168
    :pswitch_0
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object v0

    .line 6169
    :pswitch_1
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object v0

    .line 6170
    :pswitch_2
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object v0

    .line 6171
    :pswitch_3
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object v0

    .line 6167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private safeVolumeEnabled(Landroid/content/ContentResolver;)Z
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 1207
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1208
    const v4, 0x112008a

    .line 1207
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1210
    .local v1, "safeMediaVolumeEnabled":Z
    const-string/jumbo v3, "safe_headset_volume"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1211
    :cond_0
    const/4 v4, -0x3

    .line 1209
    invoke-static {p1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1212
    .local v0, "safeHeadsetVolumeEnabled":Z
    :goto_0
    return v0

    .line 1209
    .end local v0    # "safeHeadsetVolumeEnabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "safeHeadsetVolumeEnabled":Z
    goto :goto_0
.end method

.method private saveMusicActiveMs()V
    .locals 4

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3442
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1794
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1793
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 1798
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1799
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1802
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1804
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1797
    return-void

    .line 1803
    :catchall_0
    move-exception v2

    .line 1804
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1803
    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 5228
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v2, :cond_0

    .line 5229
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5230
    const-string/jumbo v4, " state:0x"

    .line 5229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5230
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 5229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5230
    const-string/jumbo v4, " address:"

    .line 5229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5231
    const-string/jumbo v4, " name:"

    .line 5229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5231
    const-string/jumbo v4, ");"

    .line 5229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5233
    :cond_0
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 5235
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5236
    const-string/jumbo v2, "address"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5237
    const-string/jumbo v2, "portName"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5239
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5241
    const/4 v9, 0x0

    .line 5243
    .local v9, "connType":I
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 5244
    const/4 v9, 0x1

    .line 5245
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5246
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5247
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 5248
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->startMusicPlayer()V

    .line 5267
    :cond_1
    :goto_0
    iget-object v14, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v14

    .line 5268
    if-eqz v9, :cond_2

    .line 5269
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v13, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 5270
    .local v13, "newConn":I
    if-eqz p2, :cond_8

    .line 5271
    or-int/2addr v13, v9

    .line 5275
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v13, v2, :cond_2

    .line 5276
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v13, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 5277
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    .line 5278
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5277
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v13    # "newConn":I
    :cond_2
    monitor-exit v14

    .line 5283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 5285
    .local v10, "ident":J
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_1
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5287
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5227
    return-void

    .line 5250
    .end local v10    # "ident":J
    :cond_3
    const/16 v2, 0x8

    move/from16 v0, p1

    if-eq v0, v2, :cond_4

    .line 5251
    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 5253
    :cond_4
    const/4 v9, 0x2

    .line 5254
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5255
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5256
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 5257
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->startMusicPlayer()V

    goto :goto_0

    .line 5259
    :cond_5
    const/16 v2, 0x400

    move/from16 v0, p1

    if-eq v0, v2, :cond_6

    .line 5260
    const/high16 v2, 0x40000

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 5261
    :cond_6
    const/16 v9, 0x8

    .line 5262
    move/from16 v0, p2

    invoke-direct {p0, v12, v0}, Lcom/android/server/audio/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5263
    :cond_7
    const/16 v2, 0x4000

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 5264
    const/16 v9, 0x10

    goto :goto_0

    .line 5273
    .restart local v13    # "newConn":I
    :cond_8
    not-int v2, v9

    and-int/2addr v13, v2

    goto :goto_1

    .line 5267
    .end local v13    # "newConn":I
    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2

    .line 5286
    .restart local v10    # "ident":J
    :catchall_1
    move-exception v2

    .line 5287
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5286
    throw v2
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 1858
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1856
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3834
    if-nez p2, :cond_3

    .line 3835
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3839
    :cond_0
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v3

    .line 3840
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p6

    add-long v0, v4, v6

    .line 3841
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3842
    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    .line 3843
    const/16 v2, 0x65

    if-ne p1, v2, :cond_4

    .line 3845
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 3832
    return-void

    .line 3836
    .end local v0    # "time":J
    :cond_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3837
    return-void

    .line 3844
    .restart local v0    # "time":J
    :cond_4
    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 3839
    .end local v0    # "time":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1809
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1812
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1814
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1808
    return-void

    .line 1813
    :catchall_0
    move-exception v2

    .line 1814
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1813
    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    .line 1835
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1836
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result p4

    .line 1838
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 1832
    return-void
.end method

.method private setForceUseInt_SyncDevices(II)V
    .locals 1
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 5820
    packed-switch p1, :pswitch_data_0

    .line 5838
    :goto_0
    :pswitch_0
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5819
    return-void

    .line 5822
    :pswitch_1
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 5823
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x381

    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_0

    .line 5825
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x380

    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_0

    .line 5829
    :pswitch_2
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 5830
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_0

    .line 5832
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_0

    .line 5820
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .locals 8
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    const/16 v1, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2028
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_0

    .line 2029
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 2031
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x21

    invoke-virtual {v0, v4, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2033
    return-void

    .line 2035
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_2

    .line 2036
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2037
    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2036
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2039
    return-void

    .line 2041
    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p5, :cond_5

    .line 2042
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_3

    .line 2043
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 2044
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 2046
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz p1, :cond_4

    :goto_0
    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2048
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 2050
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2051
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2052
    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 2025
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v3, v2

    .line 2047
    goto :goto_0

    .line 2057
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz p1, :cond_6

    :goto_2
    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1

    :cond_6
    move v3, v2

    .line 2058
    goto :goto_2
.end method

.method protected static setMaxStreamVolume(II)V
    .locals 1
    .param p0, "streamType"    # I
    .param p1, "maxVol"    # I

    .prologue
    .line 2073
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput p1, v0, p0

    .line 2072
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 15
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .prologue
    .line 2433
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setModeInt(mode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", pid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", caller="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2434
    const-string/jumbo v6, ")"

    .line 2433
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :cond_0
    const/4 v12, 0x0

    .line 2436
    .local v12, "newModeOwnerPid":I
    if-nez p2, :cond_1

    .line 2437
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "setModeInt() called with null binder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    return v12

    .line 2441
    :cond_1
    const/4 v10, 0x0

    .line 2442
    .local v10, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2443
    .local v11, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2444
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 2445
    .local v9, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_2

    .line 2446
    move-object v10, v9

    .line 2448
    .local v10, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 2449
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v10, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2453
    .end local v9    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v10    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_3
    const/4 v13, 0x0

    .line 2455
    .local v13, "status":I
    :cond_4
    if-nez p1, :cond_a

    .line 2457
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2458
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 2459
    .restart local v10    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 2460
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 2461
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v2, :cond_5

    .line 2462
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " using mode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " instead due to death hdlr at pid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2463
    invoke-static {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->-get0(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v6

    .line 2462
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    .end local v10    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_5
    :goto_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_f

    .line 2485
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v13

    .line 2486
    if-nez v13, :cond_c

    .line 2487
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mode successfully set to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :cond_6
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 2501
    :goto_1
    if-eqz v13, :cond_7

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2503
    :cond_7
    if-nez v13, :cond_9

    .line 2504
    if-eqz p1, :cond_8

    .line 2505
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2506
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    :cond_8
    :goto_2
    const/high16 v2, -0x80000000

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v14

    .line 2512
    .local v14, "streamType":I
    invoke-direct {p0, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v5

    .line 2513
    .local v5, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v14

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    .line 2514
    .local v4, "index":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v2, v14

    const/4 v6, 0x1

    move-object v2, p0

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2516
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 2518
    .end local v4    # "index":I
    .end local v5    # "device":I
    .end local v14    # "streamType":I
    :cond_9
    return v12

    .line 2467
    :cond_a
    if-nez v10, :cond_b

    .line 2468
    new-instance v10, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v10, p0, v0, v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    .line 2472
    :cond_b
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v10, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2480
    :goto_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2481
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_0

    .line 2473
    :catch_0
    move-exception v8

    .line 2475
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMode() could not link to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " binder death"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2490
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_c
    if-eqz v10, :cond_d

    .line 2491
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2492
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2495
    :cond_d
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_e
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 2499
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 2508
    :cond_10
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v12

    goto/16 :goto_2
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .prologue
    .line 5785
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 5803
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5784
    :goto_0
    return-void

    .line 5788
    :pswitch_0
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5792
    :pswitch_1
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5796
    :pswitch_2
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5800
    :pswitch_3
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5785
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 12
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2193
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2194
    :cond_0
    return-void

    .line 2196
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 2197
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2199
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    .line 2200
    if-ne p1, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_7

    .line 2203
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2205
    .local v10, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2206
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v4

    .line 2207
    .local v4, "ringerModeInternal":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v1

    .line 2208
    .local v1, "ringerModeExternal":I
    if-eqz p3, :cond_8

    .line 2209
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 2210
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_5

    .line 2211
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 2212
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v2, p1

    move-object v3, p2

    .line 2211
    invoke-interface/range {v0 .. v5}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result p1

    .line 2214
    :cond_5
    if-eq p1, v4, :cond_6

    .line 2215
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2229
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2192
    return-void

    .line 2201
    .end local v1    # "ringerModeExternal":I
    .end local v4    # "ringerModeInternal":I
    .end local v10    # "identity":J
    :cond_7
    const/4 p1, 0x0

    goto :goto_0

    .line 2218
    .restart local v1    # "ringerModeExternal":I
    .restart local v4    # "ringerModeInternal":I
    .restart local v10    # "identity":J
    :cond_8
    if-eq p1, v4, :cond_9

    .line 2219
    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 2221
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_a

    .line 2222
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 2223
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, p1

    move-object v6, p2

    move v7, v1

    .line 2222
    invoke-interface/range {v3 .. v8}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result p1

    .line 2225
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2205
    .end local v1    # "ringerModeExternal":I
    .end local v4    # "ringerModeInternal":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2228
    :catchall_1
    move-exception v0

    .line 2229
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2228
    throw v0
.end method

.method private setRingerModeExt(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 2234
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2235
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit v1

    return-void

    .line 2236
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 2239
    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 2233
    return-void

    .line 2234
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setRingerModeInt(IZ)V
    .locals 8
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2290
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2291
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v0, p1, :cond_2

    const/4 v7, 0x1

    .line 2292
    .local v7, "change":Z
    :goto_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2295
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    .line 2298
    if-eqz p2, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x3

    .line 2300
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    .line 2299
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2302
    :cond_0
    if-eqz v7, :cond_1

    .line 2304
    const-string/jumbo v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 2288
    :cond_1
    return-void

    .line 2291
    .end local v7    # "change":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "change":Z
    goto :goto_0

    .line 2290
    .end local v7    # "change":Z
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 8
    .param p1, "on"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5901
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 5902
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSafeVolumeEnabled:Z

    if-eqz v0, :cond_0

    .line 5903
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5904
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 5905
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 5906
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 5907
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v7

    .line 5900
    return-void

    .line 5908
    :cond_1
    if-nez p1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 5909
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 5910
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 5911
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 5912
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5913
    const/16 v1, 0xe

    .line 5914
    const/4 v2, 0x0

    .line 5915
    const/4 v3, 0x0

    .line 5916
    const/4 v4, 0x0

    .line 5918
    const v6, 0xea60

    move-object v5, p2

    .line 5912
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5901
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 1625
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_0

    .line 1626
    return-void

    .line 1629
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1630
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v11, v2, p1

    .line 1631
    .local v11, "streamTypeAlias":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v2, v11

    .line 1633
    .local v10, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 1638
    .local v7, "device":I
    and-int/lit16 v2, v7, 0x380

    if-nez v2, :cond_1

    .line 1639
    and-int/lit8 v2, p3, 0x40

    if-eqz v2, :cond_1

    .line 1640
    return-void

    .line 1644
    :cond_1
    const/16 v2, 0x3e8

    move/from16 v0, p6

    if-ne v0, v2, :cond_2

    .line 1645
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v2

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p6

    .line 1647
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v3, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v3, v3, v11

    move/from16 v0, p6

    move-object/from16 v1, p4

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1649
    return-void

    .line 1652
    :cond_3
    iget-object v12, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v12

    .line 1654
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1656
    invoke-virtual {v10, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v9

    .line 1658
    .local v9, "oldIndex":I
    mul-int/lit8 v2, p2, 0xa

    invoke-direct {p0, v2, p1, v11}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 1660
    const/4 v2, 0x3

    if-ne v11, v2, :cond_5

    .line 1661
    and-int/lit16 v2, v7, 0x380

    if-eqz v2, :cond_5

    .line 1662
    and-int/lit8 v2, p3, 0x40

    if-nez v2, :cond_5

    .line 1663
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1664
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v2, :cond_4

    .line 1665
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v4, p2, 0xa

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    monitor-exit v3

    .line 1670
    :cond_5
    const/4 v2, 0x3

    if-ne v11, v2, :cond_6

    .line 1671
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v2

    move/from16 v0, p3

    invoke-direct {p0, v9, p2, v2, v0}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 1674
    :cond_6
    and-int/lit8 p3, p3, -0x21

    .line 1675
    const/4 v2, 0x3

    if-ne v11, v2, :cond_7

    .line 1676
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_7

    .line 1677
    or-int/lit8 p3, p3, 0x20

    .line 1680
    if-eqz p2, :cond_7

    .line 1681
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 1682
    and-int/lit8 v2, v7, 0xc

    if-eqz v2, :cond_8

    .line 1683
    iget p2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 1690
    :cond_7
    :goto_0
    invoke-direct {p0, v11, p2, v7}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1691
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1692
    new-instance v2, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit v12

    .line 1699
    move/from16 v0, p3

    invoke-direct {p0, p1, v9, p2, v0}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 1624
    return-void

    .line 1663
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1652
    .end local v9    # "oldIndex":I
    :catchall_1
    move-exception v2

    monitor-exit v12

    throw v2

    .line 1685
    .restart local v9    # "oldIndex":I
    :cond_8
    :try_start_4
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_0

    :cond_9
    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p5

    .line 1695
    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 1696
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result p2

    goto :goto_1
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1884
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 1886
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 1891
    const/4 v2, 0x2

    move v3, p3

    move v4, v1

    move v6, v1

    .line 1889
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1883
    :cond_1
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 1900
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 1901
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1902
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_2

    monitor-exit v3

    return-void

    .line 1903
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1904
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 1906
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1908
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v3

    .line 1899
    return-void

    .line 1907
    :catchall_0
    move-exception v2

    .line 1908
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1907
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1903
    .end local v0    # "token":J
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v4

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1901
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 5
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1553
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    .line 1554
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_1

    .line 1556
    :cond_0
    return-void

    .line 1555
    :cond_1
    if-eq p1, p2, :cond_0

    .line 1556
    and-int/lit16 v2, p4, 0x100

    if-nez v2, :cond_0

    .line 1560
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1561
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_2

    monitor-exit v3

    return-void

    .line 1562
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1563
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 1565
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1567
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v3

    .line 1552
    return-void

    .line 1566
    :catchall_0
    move-exception v2

    .line 1567
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1566
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1562
    .end local v0    # "token":J
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v4

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1560
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private startMusicPlayer()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5292
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5293
    const-string/jumbo v5, "headset_connect_player"

    const/4 v6, -0x2

    .line 5292
    invoke-static {v4, v5, v7, v6}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 5294
    .local v1, "launchPlayer":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "telecom"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 5296
    .local v3, "tm":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5291
    :cond_0
    :goto_1
    return-void

    .line 5292
    .end local v1    # "launchPlayer":Z
    .end local v3    # "tm":Landroid/telecom/TelecomManager;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "launchPlayer":Z
    goto :goto_0

    .line 5298
    .restart local v3    # "tm":Landroid/telecom/TelecomManager;
    :cond_2
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5299
    .local v2, "playerIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.APP_MUSIC"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5300
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5301
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5302
    .end local v2    # "playerIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 5303
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "No music player Activity could be found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateFlagsForSystemAudio(I)I
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 1845
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v0

    .line 1846
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1847
    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_0

    .line 1848
    and-int/lit8 p1, p1, -0x2

    :cond_0
    monitor-exit v0

    .line 1852
    :cond_1
    return p1

    .line 1845
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateRingerModeAffectedStreams()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x2

    .line 3608
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3609
    const-string/jumbo v2, "mode_ringer_streams_affected"

    .line 3610
    const/16 v3, 0xa6

    .line 3608
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3614
    .local v0, "ringerModeAffectedStreams":I
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    if-ne v1, v5, :cond_1

    .line 3615
    const/4 v0, 0x0

    .line 3620
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 3621
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 3622
    and-int/lit16 v0, v0, -0x81

    :goto_1
    monitor-exit v2

    .line 3627
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    if-ne v1, v5, :cond_3

    .line 3628
    or-int/lit16 v0, v0, 0x100

    .line 3633
    :goto_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_4

    .line 3634
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3635
    const-string/jumbo v2, "mode_ringer_streams_affected"

    .line 3634
    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3638
    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 3639
    const/4 v1, 0x1

    return v1

    .line 3616
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v1, :cond_0

    .line 3617
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v1, v0}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v0

    goto :goto_0

    .line 3624
    :cond_2
    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    .line 3620
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3630
    :cond_3
    and-int/lit16 v0, v0, -0x101

    goto :goto_2

    .line 3641
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .locals 8
    .param p1, "updateVolumes"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/16 v4, 0x8

    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 1144
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    packed-switch v0, :pswitch_data_0

    .line 1154
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1155
    const/4 v7, 0x3

    .line 1158
    .local v7, "dtmfStreamAlias":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 1169
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v4

    .line 1171
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mLinkNotificationWithVolume:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_3

    .line 1172
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aput v2, v0, v1

    .line 1177
    :goto_2
    if-eqz p1, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1182
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 1187
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v1, v4

    .line 1183
    const/16 v1, 0xa

    move v4, v3

    move v6, v3

    .line 1182
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1141
    :cond_0
    return-void

    .line 1146
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1147
    const/4 v7, 0x2

    .line 1148
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 1150
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1151
    const/4 v7, 0x3

    .line 1152
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 1161
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    const/4 v7, 0x0

    .line 1163
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 1165
    :cond_2
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 1174
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aput v1, v0, v1

    goto :goto_2

    .line 1144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 965
    monitor-enter p0

    .line 966
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 969
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 965
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    .line 964
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 5688
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public addMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 981
    sget-object v5, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 982
    :try_start_0
    const-string/jumbo v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addMediaPlayerAndUpdateRemoteController: size of existing list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 983
    sget-object v7, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 982
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v2, 0x1

    .line 985
    .local v2, "playerToAdd":Z
    sget-object v4, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 986
    sget-object v4, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 987
    .local v3, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$MediaPlayerInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 988
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$MediaPlayerInfo;

    .line 989
    .local v1, "player":Lcom/android/server/audio/AudioService$MediaPlayerInfo;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 990
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v6, "Player entry present, no need to add"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v2, 0x0

    .line 992
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->setFocus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 981
    .end local v1    # "player":Lcom/android/server/audio/AudioService$MediaPlayerInfo;
    .end local v2    # "playerToAdd":Z
    .end local v3    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$MediaPlayerInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 994
    .restart local v1    # "player":Lcom/android/server/audio/AudioService$MediaPlayerInfo;
    .restart local v2    # "playerToAdd":Z
    .restart local v3    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$MediaPlayerInfo;>;"
    :cond_0
    :try_start_1
    const-string/jumbo v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Player: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Lost Focus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->setFocus(Z)V

    goto :goto_0

    .line 999
    .end local v1    # "player":Lcom/android/server/audio/AudioService$MediaPlayerInfo;
    .end local v3    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$MediaPlayerInfo;>;"
    :cond_1
    if-eqz v2, :cond_2

    .line 1000
    const-string/jumbo v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding Player: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to available player list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    sget-object v4, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/audio/AudioService$MediaPlayerInfo;

    const/4 v7, 0x1

    invoke-direct {v6, p0, p1, v7}, Lcom/android/server/audio/AudioService$MediaPlayerInfo;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1006
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1007
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1008
    const-string/jumbo v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updating focussed RCC change to RCD: CallingPackageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 980
    return-void
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1347
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    .line 1346
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1345
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 1308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1307
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1306
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 5125
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5126
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 5127
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5129
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v1, v2

    .line 5127
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 5128
    const/16 v3, 0x80

    const/4 v4, 0x0

    .line 5129
    const/4 v6, 0x0

    .line 5127
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5130
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5132
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x2

    aget-object v5, v1, v2

    .line 5130
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 5131
    const/16 v3, 0x80

    const/4 v4, 0x0

    .line 5132
    const/4 v6, 0x0

    .line 5130
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 5123
    return-void

    .line 5125
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3851
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3853
    const/4 v1, 0x1

    return v1

    .line 3855
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3856
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 3855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3857
    const-string/jumbo v2, ", uid="

    .line 3855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3857
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3858
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    return v3
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .prologue
    .line 3109
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3110
    const/4 v2, 0x0

    .line 3111
    .local v2, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3112
    .local v3, "size":I
    const/4 v1, 0x0

    .end local v2    # "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3113
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;

    .line 3114
    .local v0, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 3115
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    .line 3112
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3117
    :cond_0
    move-object v2, v0

    .local v2, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_1

    .line 3120
    .end local v0    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3121
    if-eqz v2, :cond_2

    .line 3122
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v5

    .line 3108
    return-void

    .line 3109
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 5964
    const-string/jumbo v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 5965
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 5966
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 5967
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_0

    .line 5968
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    .line 5969
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    .line 5970
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    .line 5971
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    move-object v0, p0

    move-object v5, p1

    .line 5968
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 5973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v6

    .line 5963
    return-void

    .line 5965
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6141
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6143
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 6144
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 6145
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 6146
    const-string/jumbo v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6147
    const-string/jumbo v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6148
    const-string/jumbo v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6150
    const-string/jumbo v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6151
    const-string/jumbo v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6152
    const-string/jumbo v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6153
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6154
    const-string/jumbo v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6155
    const-string/jumbo v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6156
    const-string/jumbo v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6157
    const-string/jumbo v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6158
    const-string/jumbo v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6159
    const-string/jumbo v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6160
    const-string/jumbo v0, "  mControllerService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6161
    const-string/jumbo v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6163
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 6140
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    .line 1986
    if-nez p2, :cond_0

    .line 1987
    return-void

    .line 1989
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1990
    const-string/jumbo v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    .line 1989
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1991
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    return-void

    .line 1994
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1995
    const/4 v0, 0x0

    .line 1996
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_5

    .line 1997
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1998
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1999
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_2

    .line 2000
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 2001
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 2002
    const/4 v0, 0x1

    .line 2004
    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2016
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 2018
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 2019
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v2

    .line 1985
    return-void

    .line 2007
    :cond_5
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v1, :cond_3

    .line 2008
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2009
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_3

    .line 2010
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 2011
    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2012
    const/4 v0, 0x1

    goto :goto_0

    .line 1994
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1744
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1745
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 1746
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1747
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 1749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 1743
    return-void

    .line 1752
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1744
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    .prologue
    .line 5696
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getCurrentHotwordInputPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHotwordAudioInputPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 2116
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2117
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2118
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 2523
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .locals 1

    .prologue
    .line 5645
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getRemoteControlClientNowPlayingEntries()V

    .line 5644
    return-void
.end method

.method public getRingerModeExternal()I
    .locals 2

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2161
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 2160
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRingerModeInternal()I
    .locals 2

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2168
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 2167
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .prologue
    .line 5849
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 2097
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2098
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 2110
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2111
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    .line 2078
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2079
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2080
    .local v0, "device":I
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 2081
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2084
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2085
    const/4 v1, 0x0

    .line 2087
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 2088
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 2089
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 2091
    :cond_1
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    .line 2080
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getUiSoundsStreamType()I
    .locals 2

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .param p1, "vibrateType"    # I

    .prologue
    .line 2331
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2332
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public handleHotwordInput(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 1721
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHotwordInputLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1722
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.bluros.intent.action.HOTWORD_INPUT_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1723
    .local v0, "broadcastIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1724
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1723
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1725
    .local v1, "packages":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 1726
    if-eqz p1, :cond_0

    .line 1727
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHotwordAudioInputPackage:Ljava/lang/String;

    .line 1729
    :cond_0
    const-string/jumbo v2, "com.bluros.intent.extra.CURRENT_PACKAGE_NAME"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1731
    :cond_1
    const-string/jumbo v4, "com.bluros.intent.extra.HOTWORD_INPUT_STATE"

    .line 1732
    if-eqz p1, :cond_3

    const/4 v2, 0x3

    .line 1731
    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1735
    if-nez p1, :cond_2

    .line 1736
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHotwordAudioInputPackage:Ljava/lang/String;

    .line 1738
    :cond_2
    const-string/jumbo v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1720
    return-void

    .line 1733
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 1721
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "packages":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 2842
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2843
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 2842
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 2826
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .prologue
    .line 6095
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 6096
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 6095
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    .prologue
    .line 6039
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isMasterMute()Z
    .locals 1

    .prologue
    .line 2064
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2800
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3646
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3600
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 1916
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 1917
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 1919
    :cond_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 1920
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1919
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isValidRingerMode(I)Z
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 2180
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVisualizerLocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 3651
    const/4 v1, 0x0

    .line 3652
    .local v1, "isSystem":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/audio/AudioService;->VISUALIZER_WHITELIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3653
    sget-object v2, Lcom/android/server/audio/AudioService;->VISUALIZER_WHITELIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3654
    const/4 v1, 0x1

    .line 3658
    :cond_0
    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mVisualizerLocked:Z

    :goto_1
    return v2

    .line 3652
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3658
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public loadSoundEffects()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2651
    const/4 v7, 0x3

    .line 2652
    .local v7, "attempts":I
    new-instance v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 2654
    .local v5, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    .line 2655
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v7

    .line 2656
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_0
    :try_start_1
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v10, :cond_0

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_1

    .line 2658
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {v5, v0, v1}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v8, v7

    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    :cond_0
    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_1
    monitor-exit v5

    .line 2664
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_2

    move v0, v10

    :goto_2
    return v0

    .line 2659
    :catch_0
    move-exception v9

    .line 2660
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2654
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    :goto_3
    monitor-exit v5

    throw v0

    :cond_2
    move v0, v11

    .line 2664
    goto :goto_2

    .line 2654
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_1
    move-exception v0

    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_3
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 6226
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6229
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6230
    return-void

    .line 6233
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    .line 6234
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6225
    :cond_1
    return-void
.end method

.method onIndicateSystemReady()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 803
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_0

    .line 804
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 807
    const/16 v1, 0x1a

    .line 811
    const/4 v5, 0x0

    .line 812
    const/16 v6, 0x3e8

    move v3, v2

    move v4, v2

    .line 806
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 802
    return-void
.end method

.method public onMediaServerDied()V
    .locals 14

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 816
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 817
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    :cond_0
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v4, "Media server died."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 820
    const/16 v6, 0x1f4

    move v4, v3

    .line 819
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 821
    return-void

    .line 823
    :cond_1
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "Media server started."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string/jumbo v0, "restarting=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 831
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 834
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 835
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 838
    .local v11, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v0, v11, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    .line 840
    iget-object v4, v11, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    .line 841
    iget-object v5, v11, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    .line 839
    const/4 v6, 0x1

    .line 837
    invoke-static {v0, v6, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v11    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2
    monitor-exit v2

    .line 845
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 848
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 849
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v2, 0x2

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 850
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 851
    const/16 v0, 0xb

    .line 850
    :goto_1
    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 854
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 855
    .local v8, "numStreamTypes":I
    add-int/lit8 v13, v8, -0x1

    .local v13, "streamType":I
    :goto_2
    if-ltz v13, :cond_4

    .line 856
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v12, v0, v13

    .line 857
    .local v12, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get1(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {v13, v3, v0}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 859
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 855
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 834
    .end local v8    # "numStreamTypes":I
    .end local v12    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v13    # "streamType":I
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move v0, v3

    .line 851
    goto :goto_1

    .line 863
    .restart local v8    # "numStreamTypes":I
    .restart local v13    # "streamType":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 866
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_5

    .line 867
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    .line 869
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_6

    .line 870
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 873
    :cond_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 875
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_a

    move v0, v3

    .line 874
    :goto_3
    const/4 v2, 0x1

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v1

    .line 879
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 881
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_7

    .line 882
    const/16 v3, 0x8

    .line 880
    :cond_7
    const/4 v0, 0x3

    invoke-static {v0, v3}, Landroid/media/AudioSystem;->setForceUse(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v1

    .line 884
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_9

    .line 885
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 886
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_8

    .line 887
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_8
    monitor-exit v1

    .line 892
    :cond_9
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 893
    :try_start_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "policy$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 894
    .local v9, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 892
    .end local v9    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v10    # "policy$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 876
    :cond_a
    const/16 v0, 0xa

    goto :goto_3

    .line 873
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 879
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 885
    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    .restart local v10    # "policy$iterator":Ljava/util/Iterator;
    :cond_b
    monitor-exit v1

    .line 898
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 900
    const-string/jumbo v0, "restarting=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 815
    return-void
.end method

.method public onSystemReady()V
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    .line 755
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 759
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 758
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 760
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 761
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    .line 762
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    .line 765
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .local v9, "newIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 770
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    .line 771
    .local v8, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v8, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "hdmi_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 776
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 778
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_2

    .line 779
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 781
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 782
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const v2, -0x2c0003

    and-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 789
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 794
    const-string/jumbo v6, "AudioService"

    .line 790
    const/16 v2, 0x11

    .line 795
    const/16 v7, 0x7530

    move v4, v3

    move v5, v3

    .line 789
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 797
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    .line 798
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ControllerService;->init()V

    .line 799
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 753
    return-void

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .prologue
    .line 2632
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 2631
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    const/4 v6, 0x0

    .line 2637
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2638
    :cond_0
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    return-void

    .line 2642
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 2643
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p2

    float-to-int v4, v1

    .line 2642
    const/4 v1, 0x5

    const/4 v2, 0x2

    .line 2643
    const/4 v5, 0x0

    move v3, p1

    .line 2642
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2636
    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;
    .locals 9
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z

    .prologue
    const/4 v8, 0x0

    .line 6428
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v4}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    .line 6430
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerAudioPolicy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6431
    const-string/jumbo v6, " with config:"

    .line 6430
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6432
    :cond_0
    const/4 v3, 0x0

    .line 6435
    .local v3, "regId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 6436
    const-string/jumbo v5, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 6435
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 6437
    .local v2, "hasPermissionForPolicy":Z
    :goto_0
    if-nez v2, :cond_2

    .line 6438
    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t register audio policy for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6439
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 6438
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6439
    const-string/jumbo v6, ", need MODIFY_AUDIO_ROUTING"

    .line 6438
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6440
    return-object v8

    .line 6435
    .end local v2    # "hasPermissionForPolicy":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "hasPermissionForPolicy":Z
    goto :goto_0

    .line 6443
    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v5

    .line 6445
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6446
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v6, "Cannot re-register policy"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 6447
    return-object v8

    .line 6449
    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 6450
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 6451
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v3

    .line 6452
    .local v3, "regId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 6460
    return-object v3

    .line 6453
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v3    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 6455
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Audio policy registration failed, could not link to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6456
    const-string/jumbo v7, " binder death"

    .line 6455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 6457
    return-object v8

    .line 6443
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 5624
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v0

    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 5620
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .locals 1

    .prologue
    .line 2733
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 2732
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 5632
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 5631
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 5637
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 5636
    return-void
.end method

.method public removeMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1045
    sget-object v6, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1046
    :try_start_0
    const-string/jumbo v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeMediaPlayerAndUpdateRemoteController: size of existing list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1047
    sget-object v8, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1046
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v3, 0x0

    .line 1049
    .local v3, "playerToRemove":Z
    const/4 v0, -0x1

    .line 1050
    .local v0, "index":I
    sget-object v5, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1051
    sget-object v5, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1052
    .local v4, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$MediaPlayerInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1053
    add-int/lit8 v0, v0, 0x1

    .line 1054
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$MediaPlayerInfo;

    .line 1055
    .local v2, "player":Lcom/android/server/audio/AudioService$MediaPlayerInfo;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1056
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v7, "Player entry present remove and update RemoteController"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v3, 0x1

    .line 1064
    .end local v2    # "player":Lcom/android/server/audio/AudioService$MediaPlayerInfo;
    .end local v4    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$MediaPlayerInfo;>;"
    :cond_0
    if-eqz v3, :cond_1

    .line 1065
    const-string/jumbo v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing Player: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " from index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    sget-object v5, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1068
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    const-string/jumbo v5, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1071
    const-string/jumbo v5, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1072
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1073
    const-string/jumbo v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Updated List size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1044
    return-void

    .line 1060
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "player":Lcom/android/server/audio/AudioService$MediaPlayerInfo;
    .restart local v4    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$MediaPlayerInfo;>;"
    :cond_2
    :try_start_1
    const-string/jumbo v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Player entry for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not present"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1045
    .end local v0    # "index":I
    .end local v2    # "player":Lcom/android/server/audio/AudioService$MediaPlayerInfo;
    .end local v3    # "playerToRemove":Z
    .end local v4    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$MediaPlayerInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 8
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 5665
    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5666
    const-string/jumbo v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5667
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 5668
    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    .line 5667
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5669
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Invalid permission to (un)lock audio focus"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5670
    const/4 v0, 0x0

    return v0

    .line 5674
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 5675
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5676
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5677
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_1
    monitor-exit v1

    .line 5683
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 5674
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 3946
    const/4 v6, 0x0

    .line 3947
    .local v6, "delay":I
    if-eq p3, v5, :cond_0

    const/16 v2, 0xb

    if-eq p3, v2, :cond_0

    .line 3948
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3951
    :cond_0
    if-ne p2, v0, :cond_1

    .line 3952
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Device is still connecting "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    return v6

    .line 3955
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedBTDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3956
    if-ne p2, v5, :cond_2

    .line 3957
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Device conn is updated again, ignore "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    return v6

    .line 3960
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedBTDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3961
    if-ne p2, v5, :cond_3

    .line 3963
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Add new connected device in the list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedBTDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3965
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedBTDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_6

    .line 3966
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Second device connected, add new device "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    return v6

    .line 3969
    :cond_3
    if-eqz p2, :cond_4

    .line 3970
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    .line 3971
    :cond_4
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device is getting disconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedBTDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3973
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "Remove the BT device "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedBTDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3976
    :cond_5
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedBTDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 3977
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Not all are disconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    return v6

    .line 3981
    :cond_6
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 3982
    if-ne p3, v5, :cond_8

    .line 3984
    if-ne p2, v5, :cond_7

    .line 3983
    :goto_0
    const/16 v1, 0x80

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 3988
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 3989
    if-ne p3, v5, :cond_9

    .line 3990
    const/16 v2, 0x66

    .line 3992
    :goto_2
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    .line 3988
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 3996
    return v6

    :cond_7
    move v0, v1

    .line 3984
    goto :goto_0

    .line 3986
    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    .line 3990
    :cond_9
    const/16 v2, 0x65

    goto :goto_2

    .line 3981
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2831
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2832
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 2833
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 2835
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_0

    .line 2833
    :goto_0
    const/16 v1, 0xd

    const/4 v2, 0x2

    .line 2834
    const/4 v3, 0x1

    .line 2836
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2833
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 2830
    return-void

    .line 2835
    :cond_0
    const/16 v4, 0xa

    goto :goto_0

    .line 2831
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 5810
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5811
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 5812
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 5814
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5813
    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 5809
    return-void

    .line 5814
    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    .line 5810
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 2805
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2806
    return-void

    .line 2808
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(Z)V

    .line 2804
    return-void
.end method

.method public setBluetoothScoOnInt(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2812
    if-eqz p1, :cond_1

    .line 2813
    iput v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 2818
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 2819
    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    move v6, v3

    .line 2818
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2820
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 2821
    iget v10, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v2

    move-object v11, v5

    move v12, v3

    .line 2820
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2811
    return-void

    .line 2814
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v0, v4, :cond_0

    .line 2815
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_0
.end method

.method setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 9
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 3193
    if-nez p1, :cond_0

    .line 3194
    return-void

    .line 3197
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3198
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 3199
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    const/16 v5, 0x10

    .line 3200
    .local v5, "outDevice":I
    const v4, -0x7ffffff8

    .line 3201
    .local v4, "inDevice":I
    if-eqz v1, :cond_1

    .line 3202
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 3213
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3214
    const-string/jumbo v0, ""

    .line 3217
    :cond_2
    const/4 v7, 0x2

    if-ne p2, v7, :cond_4

    const/4 v3, 0x1

    .line 3219
    .local v3, "connected":Z
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3221
    .local v2, "btDeviceName":Ljava/lang/String;
    invoke-direct {p0, v3, v5, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3222
    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 3223
    :goto_2
    if-eqz v6, :cond_3

    .line 3224
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v8

    .line 3225
    if-eqz v3, :cond_6

    .line 3226
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v8

    .line 3192
    :cond_3
    return-void

    .line 3205
    .end local v2    # "btDeviceName":Ljava/lang/String;
    .end local v3    # "connected":Z
    :sswitch_0
    const/16 v5, 0x20

    .line 3206
    goto :goto_0

    .line 3208
    :sswitch_1
    const/16 v5, 0x40

    .line 3209
    goto :goto_0

    .line 3217
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "connected":Z
    goto :goto_1

    .line 3221
    .restart local v2    # "btDeviceName":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    .local v6, "success":Z
    goto :goto_2

    .line 3228
    .end local v6    # "success":Z
    :cond_6
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3229
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 3224
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 3202
    nop

    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 10
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x1

    .line 6480
    sget-boolean v6, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6481
    const-string/jumbo v8, " policy "

    .line 6480
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6481
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 6480
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6484
    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 6485
    const-string/jumbo v7, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 6484
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    const/4 v1, 0x1

    .line 6486
    .local v1, "hasPermissionForPolicy":Z
    :goto_0
    if-nez v1, :cond_2

    .line 6487
    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot change audio policy ducking handling for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6488
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 6487
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6488
    const-string/jumbo v6, " / uid "

    .line 6487
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6489
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 6487
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6489
    const-string/jumbo v6, ", need MODIFY_AUDIO_ROUTING"

    .line 6487
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6490
    return v9

    .line 6484
    .end local v1    # "hasPermissionForPolicy":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hasPermissionForPolicy":Z
    goto :goto_0

    .line 6493
    :cond_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v6

    .line 6494
    :try_start_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 6495
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 6496
    return v9

    .line 6498
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6499
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-ne p1, v4, :cond_5

    .line 6501
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "policy$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6502
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v7, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v7, v4, :cond_4

    .line 6503
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 6504
    return v9

    .line 6508
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v3    # "policy$iterator":Ljava/util/Iterator;
    :cond_5
    :try_start_2
    iput p1, v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 6509
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 6510
    if-ne p1, v4, :cond_6

    .line 6509
    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    .line 6512
    return v5

    :cond_6
    move v4, v5

    .line 6510
    goto :goto_1

    .line 6493
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6015
    const/4 v0, 0x0

    .line 6016
    .local v0, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_3

    .line 6017
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2

    .line 6018
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v3, :cond_0

    .line 6019
    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    .line 6020
    return v1

    .line 6023
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6024
    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v4, p1, :cond_2

    .line 6025
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 6027
    if-eqz p1, :cond_1

    const/16 v1, 0xc

    .line 6026
    :cond_1
    const/4 v4, 0x5

    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6030
    :cond_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v2

    .line 6034
    :cond_3
    return v0

    .line 6023
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6017
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 2068
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    .line 2067
    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .locals 8
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2131
    .local v7, "uid":I
    const/16 v0, 0x3e8

    if-ne v7, v0, :cond_0

    .line 2132
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 2134
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v7, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2136
    return-void

    .line 2138
    :cond_1
    const-string/jumbo v0, "setMicrophoneMute()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2139
    return-void

    .line 2141
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_3

    .line 2142
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2143
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2142
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2145
    return-void

    .line 2150
    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_4

    .line 2151
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 2154
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :goto_0
    const/16 v1, 0x17

    .line 2155
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, p3

    .line 2154
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2127
    return-void

    :cond_5
    move v3, v2

    .line 2155
    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 2397
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :cond_0
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2399
    return-void

    .line 2402
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2403
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2404
    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    .line 2403
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2406
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2407
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2407
    const-string/jumbo v3, ", uid="

    .line 2406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    return-void

    .line 2411
    :cond_2
    if-lt p1, v4, :cond_3

    const/4 v1, 0x4

    if-lt p1, v1, :cond_4

    .line 2412
    :cond_3
    return-void

    .line 2415
    :cond_4
    const/4 v0, 0x0

    .line 2416
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2417
    if-ne p1, v4, :cond_5

    .line 2418
    :try_start_0
    iget p1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 2420
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v2

    .line 2424
    if-eqz v0, :cond_6

    .line 2425
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    .line 2396
    :cond_6
    return-void

    .line 2416
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .locals 1

    .prologue
    .line 5649
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->setRemoteControlClientBrowsedPlayer()V

    .line 5648
    return-void
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    .line 5641
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->setRemoteControlClientPlayItem(JI)V

    .line 5640
    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5654
    const-string/jumbo v0, "set the remote stream volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 5655
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->setRemoteStreamVolume(I)V

    .line 5653
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 2184
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2183
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 2188
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 2189
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2187
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .prologue
    .line 5843
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5844
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 5842
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 2780
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2781
    return-void

    .line 2784
    :cond_0
    if-eqz p1, :cond_3

    .line 2785
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 2786
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2789
    :cond_1
    iput v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 2794
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 2795
    iget v10, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    .line 2794
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2779
    return-void

    .line 2790
    :cond_3
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v0, v7, :cond_2

    .line 2791
    iput v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_0
.end method

.method public setStreamMaxVolume(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "maxVol"    # I

    .prologue
    .line 2103
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2104
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setMaxIndex(I)V

    .line 2105
    invoke-static {p1, p2}, Lcom/android/server/audio/AudioService;->setMaxStreamVolume(II)V

    .line 2102
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1620
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    .line 1619
    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1618
    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2338
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    return-void

    .line 2340
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 2344
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 2336
    return-void
.end method

.method public setVisualizerLocked(Z)V
    .locals 1
    .param p1, "doLock"    # Z

    .prologue
    .line 3663
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mVisualizerLocked:Z

    if-eq v0, p1, :cond_0

    .line 3664
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mVisualizerLocked:Z

    .line 3662
    :cond_0
    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 4
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6195
    const-string/jumbo v1, "set the volume controller"

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6198
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6199
    return-void

    .line 6203
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 6204
    if-eqz p1, :cond_1

    .line 6207
    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    .line 6215
    const/4 v3, 0x0

    .line 6207
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6220
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 6221
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Volume controller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6194
    :cond_2
    return-void

    .line 6216
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 3
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    .line 6239
    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6240
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6238
    :cond_0
    :goto_0
    return-void

    .line 6241
    :cond_1
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 6242
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Volume policy changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 3929
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 3930
    :try_start_0
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_0

    .line 3931
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWiredDeviceConnectionState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3932
    const-string/jumbo v2, ")"

    .line 3931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v7

    .line 3935
    .local v7, "delay":I
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 3939
    new-instance v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3936
    const/16 v3, 0x64

    .line 3937
    const/4 v4, 0x0

    .line 3938
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v6, v0

    .line 3935
    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 3928
    return-void

    .line 3929
    .end local v7    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2310
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    return v1

    .line 2312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2325
    return v1

    .line 2315
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 2318
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2322
    :pswitch_2
    return v1

    .line 2312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .prologue
    .line 2850
    const/16 v1, 0x12

    if-ge p2, v1, :cond_0

    .line 2851
    const/4 v0, 0x0

    .line 2852
    .local v0, "scoAudioMode":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 2848
    return-void

    .line 2851
    .end local v0    # "scoAudioMode":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "scoAudioMode":I
    goto :goto_0
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .prologue
    .line 2861
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2862
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 2865
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 2871
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2872
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->incCount(I)V

    .line 2873
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2860
    return-void

    .line 2863
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "ident":J
    :cond_0
    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2857
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 2856
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .prologue
    .line 5854
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5855
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5856
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 5857
    return-object v0

    .line 5854
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2878
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2879
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v1, :cond_1

    .line 2882
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 2886
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2887
    .local v2, "ident":J
    if-eqz v0, :cond_0

    .line 2888
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->decCount()V

    .line 2890
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2877
    return-void

    .line 2880
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "ident":J
    :cond_1
    return-void
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 749
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    .line 750
    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    .line 749
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 748
    return-void
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2673
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2672
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 5692
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 5691
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 6464
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6465
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 6466
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6467
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_1

    .line 6468
    const-string/jumbo v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6469
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 6468
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6469
    const-string/jumbo v4, " / uid "

    .line 6468
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 6468
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 6470
    return-void

    .line 6472
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 6474
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 6463
    return-void

    .line 6465
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 5628
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 5627
    return-void
.end method

.method public updateRemoteControllerOnExistingMediaPlayers()V
    .locals 7

    .prologue
    .line 1017
    sget-object v4, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1018
    :try_start_0
    const-string/jumbo v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRemoteControllerOnExistingMediaPlayers: size of Player list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1019
    sget-object v6, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1018
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    sget-object v3, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1021
    const-string/jumbo v3, "AudioService"

    const-string/jumbo v5, "Inform RemoteController regarding existing RCC entry"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    sget-object v3, Lcom/android/server/audio/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1023
    .local v2, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$MediaPlayerInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1024
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$MediaPlayerInfo;

    .line 1025
    .local v1, "player":Lcom/android/server/audio/AudioService$MediaPlayerInfo;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    .line 1027
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1026
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    .line 1029
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->isFocussed()Z

    move-result v5

    .line 1028
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1030
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1031
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1032
    const-string/jumbo v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updating RCC change: CallingPackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1033
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1032
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1017
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "player":Lcom/android/server/audio/AudioService$MediaPlayerInfo;
    .end local v2    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$MediaPlayerInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1036
    :cond_0
    :try_start_1
    const-string/jumbo v3, "AudioService"

    const-string/jumbo v5, "No RCC entry present to update"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 1016
    return-void
.end method
