.class public Landroid/app/Activity;
.super Landroid/view/ContextThemeWrapper;
.source "Activity.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$ManagedDialog;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$TranslucentConversionListener;,
        Landroid/app/Activity$HostCallbacks;,
        Landroid/app/Activity$1;
    }
.end annotation


# static fields
.field private static final DEBUG_LIFECYCLE:Z = false

.field public static final DEFAULT_KEYS_DIALER:I = 0x1

.field public static final DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final DEFAULT_KEYS_SHORTCUT:I = 0x2

.field protected static final FOCUSED_STATE_SET:[I

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final HAS_CURENT_PERMISSIONS_REQUEST_KEY:Ljava/lang/String; = "android:hasCurrentPermissionsRequest"

.field private static final REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field private static final SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final SAVED_WINDOW_LAYOUT_IDS_KEY:Ljava/lang/String; = "android:savedWindowLayoutIds"

.field private static final SAVED_WINDOW_LAYOUT_TAG:Ljava/lang/String; = "android:savedWindowLayout"

.field private static final TAG:Ljava/lang/String; = "Activity"

.field private static final WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"


# instance fields
.field private final MOVE_MAX_RANGE:I

.field private final SNAP_BOTTOM:I

.field private final SNAP_LEFT:I

.field private final SNAP_NONE:I

.field private final SNAP_RIGHT:I

.field private final SNAP_TOP:I

.field private final UNKNOWN:I

.field private isAlreadyAttachToWindow:Z

.field private leftFromScreen:Ljava/lang/Float;

.field mActionBar:Landroid/app/ActionBar;

.field private mActionModeTypeStarting:I

.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private mAppFloatViewHeight:I

.field private mAppFloatViewWidth:I

.field private mAppMinimumHeight:I

.field private mAppMinimumWidth:I

.field private mApplication:Landroid/app/Application;

.field mCalled:Z

.field private mChangeCanvasToTranslucent:Z

.field private mChangedFlags:Z

.field private mChangedPreviousRange:Z

.field mChangingConfigurations:Z

.field private mComponent:Landroid/content/ComponentName;

.field mConfigChangeFlags:I

.field mCurrentConfig:Landroid/content/res/Configuration;

.field private mCurrentScreenHeight:I

.field private mCurrentScreenWidth:I

.field mDecor:Landroid/view/View;

.field mDecorActionBar:Lcom/android/internal/app/WindowDecorActionBar;

.field private mDefaultKeyMode:I

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDestroyed:Z

.field private mDoReportFullyDrawn:Z

.field mEmbeddedID:Ljava/lang/String;

.field private mEnableDefaultActionBarUp:Z

.field mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field mExitTransitionListener:Landroid/app/SharedElementCallback;

.field mFinished:Z

.field private mFloatingWindowView:Lcom/android/internal/widget/FloatingWindowView;

.field final mFragments:Landroid/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field private mHasCurrentPermissionsRequest:Z

.field private mIdent:I

.field private final mInstanceTracker:Ljava/lang/Object;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field mIntent:Landroid/content/Intent;

.field public mIsFullscreenApp:Z

.field private mIsSplitView:Z

.field private mLastLayout:[I

.field mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field private mLayoutRunnable:Ljava/lang/Runnable;

.field mMainThread:Landroid/app/ActivityThread;

.field private final mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private mOldLayout:[I

.field private mOldParam:[I

.field private mOriginalBounds:Landroid/graphics/Rect;

.field mParent:Landroid/app/Activity;

.field private mPreviousOrientation:I

.field private mPreviousRange:[F

.field private mRange:I

.field mReferrer:Ljava/lang/String;

.field private mRestorePosition:Z

.field mResultCode:I

.field mResultData:Landroid/content/Intent;

.field mResumed:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSensitivity:I

.field private mSnap:I

.field private mSnapParam:[I

.field private mSnapped:Z

.field mStartedActivity:Z

.field private mStopped:Z

.field mTemporaryPause:Z

.field private mTimeoutDone:Z

.field private mTimeoutRunning:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleReady:Z

.field private mToken:Landroid/os/IBinder;

.field private mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private mUiThread:Ljava/lang/Thread;

.field mVisibleBehind:Z

.field mVisibleFromClient:Z

.field mVisibleFromServer:Z

.field private mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private mWindow:Landroid/view/Window;

.field mWindowAdded:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private screenX:Ljava/lang/Float;

.field private screenY:Ljava/lang/Float;

.field private topFromScreen:Ljava/lang/Float;

.field private viewX:Ljava/lang/Float;

.field private viewY:Ljava/lang/Float;


# direct methods
.method static synthetic -get0(Landroid/app/Activity;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/Activity;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/Activity;->mTimeoutDone:Z

    return p1
.end method

.method static synthetic -set1(Landroid/app/Activity;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/Activity;->mTimeoutRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;->discardLayoutProgress()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;->setCurrentLayoutApp()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;->setProgressLayoutApp()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 807
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009c

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    .line 682
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 682
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    .line 736
    iput-boolean v3, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 738
    iput-boolean v1, p0, Landroid/app/Activity;->mTemporaryPause:Z

    .line 740
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 758
    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 759
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 760
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 761
    iput-boolean v3, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 762
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 763
    iput-object v2, p0, Landroid/app/Activity;->mDecorActionBar:Lcom/android/internal/app/WindowDecorActionBar;

    .line 769
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 772
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 773
    new-instance v0, Landroid/app/Activity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 789
    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    .line 793
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 794
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 801
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 802
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 804
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 805
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 810
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    .line 814
    new-instance v0, Landroid/app/ActivityTransitionState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 815
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 816
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 823
    const/16 v0, -0x2710

    iput v0, p0, Landroid/app/Activity;->UNKNOWN:I

    .line 824
    iput v1, p0, Landroid/app/Activity;->SNAP_NONE:I

    .line 825
    iput v3, p0, Landroid/app/Activity;->SNAP_LEFT:I

    .line 826
    iput v4, p0, Landroid/app/Activity;->SNAP_TOP:I

    .line 827
    iput v5, p0, Landroid/app/Activity;->SNAP_RIGHT:I

    .line 828
    const/4 v0, 0x4

    iput v0, p0, Landroid/app/Activity;->SNAP_BOTTOM:I

    .line 829
    const/16 v0, 0xa

    iput v0, p0, Landroid/app/Activity;->MOVE_MAX_RANGE:I

    .line 833
    const/16 v0, 0x64

    iput v0, p0, Landroid/app/Activity;->mRange:I

    .line 834
    const/16 v0, 0x32

    iput v0, p0, Landroid/app/Activity;->mSensitivity:I

    .line 835
    iput v1, p0, Landroid/app/Activity;->mSnap:I

    .line 836
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    .line 837
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/app/Activity;->mOldParam:[I

    .line 845
    new-array v0, v4, [F

    iput-object v0, p0, Landroid/app/Activity;->mPreviousRange:[F

    .line 860
    iput-boolean v1, p0, Landroid/app/Activity;->mChangedFlags:Z

    .line 861
    iput-boolean v1, p0, Landroid/app/Activity;->isAlreadyAttachToWindow:Z

    .line 862
    iput-boolean v1, p0, Landroid/app/Activity;->mIsFullscreenApp:Z

    .line 3549
    new-instance v0, Landroid/app/Activity$1;

    invoke-direct {v0, p0}, Landroid/app/Activity$1;-><init>(Landroid/app/Activity;)V

    .line 3548
    iput-object v0, p0, Landroid/app/Activity;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 682
    return-void
.end method

.method private calculateSnap()V
    .locals 6

    .prologue
    const/16 v1, -0x2710

    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3369
    iget v0, p0, Landroid/app/Activity;->mSnap:I

    packed-switch v0, :pswitch_data_0

    .line 3368
    :goto_0
    return-void

    .line 3371
    :pswitch_0
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    iget v1, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    .line 3372
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    aput v5, v0, v3

    .line 3373
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    const/16 v1, 0x33

    aput v1, v0, v4

    goto :goto_0

    .line 3376
    :pswitch_1
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    iget v1, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    .line 3377
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    aput v5, v0, v3

    .line 3378
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    const/4 v1, 0x5

    aput v1, v0, v4

    goto :goto_0

    .line 3381
    :pswitch_2
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    aput v5, v0, v2

    .line 3382
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    iget v1, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v3

    .line 3383
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    const/16 v1, 0x30

    aput v1, v0, v4

    goto :goto_0

    .line 3386
    :pswitch_3
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    aput v5, v0, v2

    .line 3387
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    iget v1, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v3

    .line 3388
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    const/16 v1, 0x50

    aput v1, v0, v4

    goto :goto_0

    .line 3391
    :pswitch_4
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    aput v1, v0, v2

    .line 3392
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    aput v1, v0, v3

    .line 3393
    iget-object v0, p0, Landroid/app/Activity;->mSnapParam:[I

    aput v1, v0, v4

    goto :goto_0

    .line 3369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4775
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 4776
    :goto_0
    if-eqz v0, :cond_0

    .line 4777
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 4779
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/app/Activity;->isTopOfTask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4774
    :cond_1
    :goto_1
    return-void

    .line 4775
    :cond_2
    const/4 v0, 0x0

    .local v0, "decor":Landroid/view/View;
    goto :goto_0

    .line 4780
    .end local v0    # "decor":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private changeFloatingWindowColor(II)V
    .locals 1
    .param p1, "bg_color"    # I
    .param p2, "ic_color"    # I

    .prologue
    .line 1303
    iget-object v0, p0, Landroid/app/Activity;->mFloatingWindowView:Lcom/android/internal/widget/FloatingWindowView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingWindowView;->setFloatingBackgroundColor(I)V

    .line 1304
    iget-object v0, p0, Landroid/app/Activity;->mFloatingWindowView:Lcom/android/internal/widget/FloatingWindowView;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/FloatingWindowView;->setFloatingColorFilter(I)V

    .line 1302
    return-void
.end method

.method private changeTitleBarColor()V
    .locals 17

    .prologue
    .line 1309
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Activity;->mFloatingWindowView:Lcom/android/internal/widget/FloatingWindowView;

    if-eqz v15, :cond_0

    .line 1311
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1313
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v15, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1314
    .local v2, "am":Landroid/app/ActivityManager;
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v13

    .line 1315
    .local v13, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1316
    .local v12, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v11, v12, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1317
    .local v11, "rootActivity":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1319
    .local v3, "appPackageName":Ljava/lang/String;
    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 1320
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v15, 0x2

    new-array v4, v15, [I

    .line 1321
    const-string/jumbo v15, "colorPrimary"

    const-string/jumbo v16, "attr"

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x0

    aput v15, v4, v16

    .line 1322
    const v15, 0x1010433

    const/16 v16, 0x1

    aput v15, v4, v16

    .line 1325
    .local v4, "attrs":[I
    invoke-virtual {v10}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    .line 1326
    .local v14, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1327
    .local v5, "cn":Landroid/content/ComponentName;
    const/4 v15, 0x0

    invoke-virtual {v9, v5, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ActivityInfo;->theme:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1329
    invoke-virtual {v14, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1331
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v0, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 1333
    .local v6, "colorPrimary":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1334
    const/4 v1, 0x0

    .line 1337
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-static {v6}, Lcom/android/internal/util/screwd/ColorUtils;->isBrightColor(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1338
    const/high16 v8, -0x1000000

    .line 1342
    .local v8, "iconTint":I
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Landroid/app/Activity;->changeFloatingWindowColor(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "appPackageName":Ljava/lang/String;
    .end local v4    # "attrs":[I
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v6    # "colorPrimary":I
    .end local v8    # "iconTint":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "rootActivity":Landroid/content/ComponentName;
    .end local v12    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v14    # "theme":Landroid/content/res/Resources$Theme;
    :cond_0
    :goto_1
    return-void

    .line 1340
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "appPackageName":Ljava/lang/String;
    .restart local v4    # "attrs":[I
    .restart local v5    # "cn":Landroid/content/ComponentName;
    .restart local v6    # "colorPrimary":I
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "res":Landroid/content/res/Resources;
    .restart local v11    # "rootActivity":Landroid/content/ComponentName;
    .restart local v12    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v14    # "theme":Landroid/content/res/Resources$Theme;
    :cond_1
    const/4 v8, -0x1

    .restart local v8    # "iconTint":I
    goto :goto_0

    .line 1343
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "appPackageName":Ljava/lang/String;
    .end local v4    # "attrs":[I
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v6    # "colorPrimary":I
    .end local v8    # "iconTint":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "rootActivity":Landroid/content/ComponentName;
    .end local v12    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v14    # "theme":Landroid/content/res/Resources$Theme;
    :catch_0
    move-exception v7

    .line 1344
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # Ljava/lang/Integer;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1188
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1189
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 1190
    return-object v2

    .line 1192
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 1193
    return-object v0
.end method

.method private discardLayoutProgress()V
    .locals 2

    .prologue
    .line 3487
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Activity;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3486
    return-void
.end method

.method private dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 7450
    iput-boolean v3, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 7452
    if-eqz p2, :cond_0

    .line 7453
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    .line 7452
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7454
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 7455
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    .line 7454
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 7456
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7449
    return-void

    .line 7453
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 7455
    :cond_1
    new-array v0, v3, [I

    .restart local v0    # "grantResults":[I
    goto :goto_1
.end method

.method private dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 7462
    if-eqz p2, :cond_0

    .line 7463
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    .line 7462
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7464
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 7465
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    .line 7464
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 7466
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7460
    return-void

    .line 7463
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 7465
    :cond_1
    new-array v0, v3, [I

    .restart local v0    # "grantResults":[I
    goto :goto_1
.end method

.method private ensureSearchManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6068
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_0

    .line 6069
    return-void

    .line 6072
    :cond_0
    new-instance v0, Landroid/app/SearchManager;

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    .line 6067
    return-void
.end method

.method private finish(Z)V
    .locals 5
    .param p1, "finishTask"    # Z

    .prologue
    .line 5668
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_2

    .line 5671
    monitor-enter p0

    .line 5672
    :try_start_0
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 5673
    .local v1, "resultCode":I
    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "resultData":Landroid/content/Intent;
    monitor-exit p0

    .line 5677
    if-eqz v2, :cond_0

    .line 5678
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 5680
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 5681
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5680
    invoke-interface {v3, v4, v1, v2, p1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5682
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5667
    .end local v1    # "resultCode":I
    .end local v2    # "resultData":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 5671
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 5688
    :cond_2
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    goto :goto_0

    .line 5684
    .restart local v1    # "resultCode":I
    .restart local v2    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getActionBarHeight(Z)I
    .locals 2
    .param p1, "smaller"    # Z

    .prologue
    .line 3124
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3125
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    .line 3127
    .local v1, "actionBarHeight":I
    :goto_0
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/app/Activity;->getAppDimensionPixel(Z)I

    move-result v1

    .end local v1    # "actionBarHeight":I
    :cond_0
    return v1

    .line 3126
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/Activity;->getAppDimensionPixel(Z)I

    move-result v1

    .restart local v1    # "actionBarHeight":I
    goto :goto_0
.end method

.method private getAppDimensionPixel(Z)I
    .locals 5
    .param p1, "smaller"    # Z

    .prologue
    .line 3435
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 3436
    .local v1, "scale":F
    if-eqz p1, :cond_0

    const/16 v2, 0x20

    .line 3437
    .local v2, "sized":I
    :goto_0
    int-to-float v3, v2

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 3438
    .local v0, "pixel":I
    return v0

    .line 3436
    .end local v0    # "pixel":I
    .end local v2    # "sized":I
    :cond_0
    const/16 v2, 0x30

    .restart local v2    # "sized":I
    goto :goto_0
.end method

.method private initLayoutParams(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3143
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3144
    .local v0, "param":Landroid/view/WindowManager$LayoutParams;
    float-to-int v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3145
    float-to-int v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3146
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3142
    return-void
.end method

.method private initSnappable(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3283
    iget-object v0, p0, Landroid/app/Activity;->mOldParam:[I

    aget v0, v0, v2

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/app/Activity;->mSensitivity:I

    if-gt v0, v1, :cond_0

    .line 3284
    iget-object v0, p0, Landroid/app/Activity;->mOldParam:[I

    aget v0, v0, v3

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/app/Activity;->mSensitivity:I

    if-le v0, v1, :cond_1

    .line 3285
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mOldParam:[I

    aput p1, v0, v2

    .line 3286
    iget-object v0, p0, Landroid/app/Activity;->mOldParam:[I

    aput p2, v0, v3

    .line 3287
    return v2

    .line 3289
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mOldParam:[I

    aput p1, v0, v2

    .line 3290
    iget-object v0, p0, Landroid/app/Activity;->mOldParam:[I

    aput p2, v0, v3

    .line 3292
    iget v0, p0, Landroid/app/Activity;->mRange:I

    if-ge p1, v0, :cond_2

    .line 3293
    iput v3, p0, Landroid/app/Activity;->mSnap:I

    .line 3304
    :goto_0
    return v3

    .line 3294
    :cond_2
    iget v0, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    iget v1, p0, Landroid/app/Activity;->mRange:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_3

    .line 3295
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/Activity;->mSnap:I

    goto :goto_0

    .line 3296
    :cond_3
    iget v0, p0, Landroid/app/Activity;->mRange:I

    if-ge p2, v0, :cond_4

    .line 3297
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/Activity;->mSnap:I

    goto :goto_0

    .line 3298
    :cond_4
    iget v0, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    iget v1, p0, Landroid/app/Activity;->mRange:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_5

    .line 3299
    const/4 v0, 0x4

    iput v0, p0, Landroid/app/Activity;->mSnap:I

    goto :goto_0

    .line 3301
    :cond_5
    iput v2, p0, Landroid/app/Activity;->mSnap:I

    .line 3302
    return v2
.end method

.method private initWindowDecorActionBar()V
    .locals 3

    .prologue
    .line 2410
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2414
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2416
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 2417
    :cond_0
    return-void

    .line 2420
    :cond_1
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2421
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 2423
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 2424
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 2409
    return-void
.end method

.method private isTopOfTask()Z
    .locals 3

    .prologue
    .line 6445
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6446
    :catch_0
    move-exception v0

    .line 6447
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private isUnSnap()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3251
    iget v1, p0, Landroid/app/Activity;->mSnap:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private makeNewWindow(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 7053
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x3000

    const/16 v8, 0x3000

    if-ne v7, v8, :cond_2

    const/4 v1, 0x1

    .line 7054
    .local v1, "floating":Z
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "floating_window_mode"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_3

    const/4 v2, 0x1

    .line 7055
    .local v2, "floatingswitch":Z
    :goto_1
    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 7057
    iget v7, p3, Landroid/content/pm/ActivityInfo;->theme:I

    sget-object v8, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 7058
    .local v6, "styleArray":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 7061
    .local v0, "backgroundValue":Landroid/util/TypedValue;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 7062
    .local v3, "outValue":Landroid/util/TypedValue;
    const/4 v7, 0x3

    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    .line 7064
    .local v5, "result":Z
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/TypedValue;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "light"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7065
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x10304a4

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 7071
    :goto_2
    invoke-static {p0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v7

    iput-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 7072
    iget-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iput-boolean v9, v7, Landroid/view/Window;->mIsFloatingWindow:Z

    .line 7073
    iget-boolean v7, p0, Landroid/app/Activity;->isAlreadyAttachToWindow:Z

    if-nez v7, :cond_0

    .line 7074
    iput-boolean v9, p0, Landroid/app/Activity;->isAlreadyAttachToWindow:Z

    .line 7075
    iget-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v7, v9}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 7076
    iget-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    .line 7078
    invoke-direct {p0}, Landroid/app/Activity;->scaleFloatingWindow()V

    .line 7081
    :cond_0
    iget-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 7082
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 7083
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_1

    .line 7084
    iget-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v7, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 7086
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 7087
    const/high16 v7, 0x3e800000    # 0.25f

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 7089
    :cond_1
    iget-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7091
    invoke-direct {p0}, Landroid/app/Activity;->refreshAppLayoutSize()V

    .line 7092
    return v9

    .line 7053
    .end local v0    # "backgroundValue":Landroid/util/TypedValue;
    .end local v1    # "floating":Z
    .end local v2    # "floatingswitch":Z
    .end local v3    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "result":Z
    .end local v6    # "styleArray":Landroid/content/res/TypedArray;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "floating":Z
    goto/16 :goto_0

    .line 7054
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "floatingswitch":Z
    goto/16 :goto_1

    .line 7067
    .restart local v0    # "backgroundValue":Landroid/util/TypedValue;
    .restart local v3    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "result":Z
    .restart local v6    # "styleArray":Landroid/content/res/TypedArray;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x10304a3

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_2

    .line 7094
    .end local v0    # "backgroundValue":Landroid/util/TypedValue;
    .end local v3    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "result":Z
    .end local v6    # "styleArray":Landroid/content/res/TypedArray;
    :cond_5
    invoke-static {p0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v7

    iput-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 7095
    const/4 v7, 0x0

    return v7
.end method

.method private missingDialog(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 4297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was ever "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4298
    const-string/jumbo v2, "shown via Activity#showDialog"

    .line 4297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private refreshAppFloatViewSize()V
    .locals 5

    .prologue
    .line 3329
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 3332
    .local v2, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getFloatViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 3333
    .local v1, "windowBounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/app/Activity;->mAppFloatViewWidth:I

    .line 3334
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/app/Activity;->mAppFloatViewHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3328
    .end local v1    # "windowBounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3335
    :catch_0
    move-exception v0

    .line 3336
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Activity"

    const-string/jumbo v4, "Could not perform float view layout"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private refreshAppLayoutSize()V
    .locals 7

    .prologue
    .line 3308
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    .line 3311
    .local v4, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v4}, Landroid/view/IWindowManager;->getFloatViewRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 3312
    .local v2, "windowFloatViewBounds":Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/app/Activity;->mAppFloatViewWidth:I

    .line 3313
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/app/Activity;->mAppFloatViewHeight:I

    .line 3315
    invoke-interface {v4}, Landroid/view/IWindowManager;->getAppFullscreenViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 3316
    .local v1, "windowCurrentScreenBounds":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    .line 3317
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    .line 3319
    invoke-interface {v4}, Landroid/view/IWindowManager;->getAppMinimumViewRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 3320
    .local v3, "windowMinimumBounds":Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/app/Activity;->mAppMinimumWidth:I

    .line 3321
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/app/Activity;->mAppMinimumHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3307
    .end local v1    # "windowCurrentScreenBounds":Landroid/graphics/Rect;
    .end local v2    # "windowFloatViewBounds":Landroid/graphics/Rect;
    .end local v3    # "windowMinimumBounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3323
    :catch_0
    move-exception v0

    .line 3324
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "Activity"

    const-string/jumbo v6, "Could not perform get size view layout"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private refreshAppMinimumSize()V
    .locals 5

    .prologue
    .line 3442
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 3445
    .local v2, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getAppMinimumViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 3446
    .local v1, "windowBounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/app/Activity;->mAppMinimumWidth:I

    .line 3447
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/app/Activity;->mAppMinimumHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3441
    .end local v1    # "windowBounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3448
    :catch_0
    move-exception v0

    .line 3449
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Activity"

    const-string/jumbo v4, "Could not perform get app minimum view layout"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private refreshCurrentScreenSize()V
    .locals 5

    .prologue
    .line 3341
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 3344
    .local v2, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getAppFullscreenViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 3345
    .local v1, "windowBounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    .line 3346
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/app/Activity;->mCurrentScreenHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3340
    .end local v1    # "windowBounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3347
    :catch_0
    move-exception v0

    .line 3348
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Activity"

    const-string/jumbo v4, "Could not perform get app fullscreen view layout"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestChangingFlagsLayout()V
    .locals 2

    .prologue
    .line 3161
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 3162
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3163
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3164
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3165
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3160
    :cond_0
    return-void
.end method

.method private restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 7317
    if-eqz p1, :cond_0

    .line 7319
    const-string/jumbo v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x0

    .line 7318
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 7316
    :cond_0
    return-void
.end method

.method private restoreManagedDialogs(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 1113
    const-string/jumbo v7, "android:savedDialogs"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1114
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1115
    return-void

    .line 1118
    :cond_0
    const-string/jumbo v7, "android:savedDialogIds"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1119
    .local v4, "ids":[I
    array-length v6, v4

    .line 1120
    .local v6, "numDialogs":I
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1121
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 1122
    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1123
    .local v1, "dialogId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1124
    .local v2, "dialogState":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1127
    new-instance v5, Landroid/app/Activity$ManagedDialog;

    invoke-direct {v5, v10}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    .line 1128
    .local v5, "md":Landroid/app/Activity$ManagedDialog;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 1129
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 1130
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_1

    .line 1131
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1132
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v9, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1133
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1121
    .end local v5    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1112
    .end local v1    # "dialogId":Ljava/lang/Integer;
    .end local v2    # "dialogState":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method private restoreManagedWindowLayout(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    .line 1140
    const-string/jumbo v7, "android:savedWindowLayout"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1141
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1142
    return-void

    .line 1145
    :cond_0
    iget-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-nez v7, :cond_1

    .line 1146
    return-void

    .line 1149
    :cond_1
    iget-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-boolean v7, v7, Landroid/view/Window;->mIsFloatingWindow:Z

    if-nez v7, :cond_2

    .line 1150
    return-void

    .line 1153
    :cond_2
    const-string/jumbo v7, "android:savedWindowLayoutIds"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 1154
    .local v2, "ids":[I
    const/4 v7, 0x0

    aget v5, v2, v7

    .line 1155
    .local v5, "x":I
    const/4 v7, 0x1

    aget v6, v2, v7

    .line 1156
    .local v6, "y":I
    const/4 v7, 0x2

    aget v4, v2, v7

    .line 1157
    .local v4, "width":I
    const/4 v7, 0x3

    aget v1, v2, v7

    .line 1158
    .local v1, "height":I
    const/4 v7, 0x4

    aget v7, v2, v7

    iput v7, p0, Landroid/app/Activity;->mSnap:I

    .line 1159
    iget-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1160
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1161
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1162
    iget v7, p0, Landroid/app/Activity;->mSnap:I

    packed-switch v7, :pswitch_data_0

    .line 1184
    :goto_0
    iget-object v7, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v7, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1139
    return-void

    .line 1164
    :pswitch_0
    iget v7, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    div-int/lit8 v7, v7, 0x2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1165
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1168
    :pswitch_1
    iget v7, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    div-int/lit8 v7, v7, 0x2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1169
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1172
    :pswitch_2
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1173
    iget v7, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    div-int/lit8 v7, v7, 0x2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1176
    :pswitch_3
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1177
    iget v7, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    div-int/lit8 v7, v7, 0x2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1180
    :pswitch_4
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1181
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private restoreOldPositionWithoutRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3264
    iget-boolean v1, p0, Landroid/app/Activity;->mSnapped:Z

    if-nez v1, :cond_0

    return-void

    .line 3265
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3266
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Landroid/app/Activity;->mOldLayout:[I

    aget v1, v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3267
    iget-object v1, p0, Landroid/app/Activity;->mOldLayout:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3268
    iget-object v1, p0, Landroid/app/Activity;->mOldLayout:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3269
    iget-object v1, p0, Landroid/app/Activity;->mOldLayout:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3270
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3271
    iput-boolean v3, p0, Landroid/app/Activity;->mSnapped:Z

    .line 3272
    iput-boolean v3, p0, Landroid/app/Activity;->mRestorePosition:Z

    .line 3263
    return-void
.end method

.method private saveManagedDialogs(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1603
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v6, :cond_0

    .line 1604
    return-void

    .line 1607
    :cond_0
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1608
    .local v5, "numDialogs":I
    if-nez v5, :cond_1

    .line 1609
    return-void

    .line 1612
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1614
    .local v0, "dialogState":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-array v2, v6, [I

    .line 1617
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 1618
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1619
    .local v3, "key":I
    aput v3, v2, v1

    .line 1620
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedDialog;

    .line 1621
    .local v4, "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {v3}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1622
    iget-object v6, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 1623
    invoke-static {v3}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1617
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1627
    .end local v3    # "key":I
    .end local v4    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_3
    const-string/jumbo v6, "android:savedDialogIds"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1628
    const-string/jumbo v6, "android:savedDialogs"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1602
    return-void
.end method

.method private saveManagedWindowLayout(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1632
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-nez v3, :cond_0

    .line 1633
    return-void

    .line 1636
    :cond_0
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-boolean v3, v3, Landroid/view/Window;->mIsFloatingWindow:Z

    if-nez v3, :cond_1

    .line 1637
    return-void

    .line 1640
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1642
    .local v2, "windowLayoutState":Landroid/os/Bundle;
    const/4 v3, 0x5

    new-array v0, v3, [I

    .line 1643
    .local v0, "ids":[I
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1644
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 1645
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v4, 0x1

    aput v3, v0, v4

    .line 1646
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, 0x2

    aput v3, v0, v4

    .line 1647
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, 0x3

    aput v3, v0, v4

    .line 1648
    iget v3, p0, Landroid/app/Activity;->mSnap:I

    const/4 v4, 0x4

    aput v3, v0, v4

    .line 1649
    const-string/jumbo v3, "android:savedWindowLayoutIds"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1650
    const-string/jumbo v3, "android:savedWindowLayout"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1631
    return-void
.end method

.method private saveOldPosition()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 3239
    iget-boolean v3, p0, Landroid/app/Activity;->mRestorePosition:Z

    if-eqz v3, :cond_0

    return v2

    .line 3240
    :cond_0
    iget-boolean v3, p0, Landroid/app/Activity;->mSnapped:Z

    if-eqz v3, :cond_2

    .line 3241
    invoke-direct {p0}, Landroid/app/Activity;->isUnSnap()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v2, p0, Landroid/app/Activity;->mTimeoutRunning:Z

    :cond_1
    return v2

    .line 3243
    :cond_2
    iput-boolean v2, p0, Landroid/app/Activity;->mSnapped:Z

    .line 3244
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3245
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x4

    new-array v0, v3, [I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v4, 0x0

    aput v3, v0, v4

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v3, v0, v2

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, 0x2

    aput v3, v0, v4

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, 0x3

    aput v3, v0, v4

    .line 3246
    .local v0, "layout":[I
    iput-object v0, p0, Landroid/app/Activity;->mOldLayout:[I

    .line 3247
    return v2
.end method

.method private static savedDialogArgsKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static savedDialogKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private scaleFloatingWindow()V
    .locals 7

    .prologue
    .line 7100
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 7103
    .local v2, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getFloatViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 7104
    .local v1, "windowBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 7105
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 7104
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7099
    .end local v1    # "windowBounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 7106
    :catch_0
    move-exception v0

    .line 7107
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Activity"

    const-string/jumbo v4, "Could not perform float view layout"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendAppEndBroadcast()V
    .locals 3

    .prologue
    .line 3467
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTIVITY_END_DETECTOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3468
    .local v0, "endIntent":Landroid/content/Intent;
    const-string/jumbo v1, "packagename"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3470
    const/high16 v1, 0x50000000

    .line 3469
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3471
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3466
    return-void
.end method

.method private setCurrentLayoutApp()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 3491
    invoke-direct {p0}, Landroid/app/Activity;->isUnSnap()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3492
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3493
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3494
    .local v2, "width":I
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3495
    .local v0, "height":I
    iget v3, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    if-lt v2, v3, :cond_3

    .line 3496
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3500
    :cond_0
    :goto_0
    iget v3, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    if-lt v0, v3, :cond_4

    .line 3501
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3505
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3507
    .end local v0    # "height":I
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "width":I
    :cond_2
    iget-object v3, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/app/Activity;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3490
    return-void

    .line 3497
    .restart local v0    # "height":I
    .restart local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "width":I
    :cond_3
    iget v3, p0, Landroid/app/Activity;->mAppMinimumWidth:I

    if-gt v2, v3, :cond_0

    .line 3498
    iget v3, p0, Landroid/app/Activity;->mAppMinimumWidth:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 3502
    :cond_4
    iget v3, p0, Landroid/app/Activity;->mAppMinimumHeight:I

    if-gt v0, v3, :cond_1

    .line 3503
    iget v3, p0, Landroid/app/Activity;->mAppMinimumHeight:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1
.end method

.method private setProgressLayoutApp()V
    .locals 4

    .prologue
    .line 3475
    iget-object v0, p0, Landroid/app/Activity;->mLayoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3476
    new-instance v0, Landroid/app/Activity$3;

    invoke-direct {v0, p0}, Landroid/app/Activity$3;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 3483
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Activity;->mLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3474
    return-void
.end method

.method private setupFloatingActionBar(Z)V
    .locals 5
    .param p1, "reload"    # Z

    .prologue
    const v4, 0x102001c

    const/4 v3, 0x1

    .line 1269
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    .line 1270
    return-void

    .line 1273
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-boolean v1, v1, Landroid/view/Window;->mIsFloatingWindow:Z

    if-nez v1, :cond_1

    .line 1274
    return-void

    .line 1277
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1278
    return-void

    .line 1281
    :cond_2
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1282
    const/16 v2, 0x804

    .line 1281
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1285
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1286
    .local v0, "decorFloatingView":Landroid/widget/FrameLayout;
    if-nez v0, :cond_3

    .line 1287
    return-void

    .line 1289
    :cond_3
    if-nez p1, :cond_4

    .line 1290
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1291
    new-instance v1, Lcom/android/internal/widget/FloatingWindowView;

    invoke-direct {p0, v3}, Landroid/app/Activity;->getActionBarHeight(Z)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/FloatingWindowView;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Landroid/app/Activity;->mFloatingWindowView:Lcom/android/internal/widget/FloatingWindowView;

    .line 1292
    iget-object v1, p0, Landroid/app/Activity;->mFloatingWindowView:Lcom/android/internal/widget/FloatingWindowView;

    invoke-static {}, Lcom/android/internal/widget/FloatingWindowView;->getParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    iget-object v1, p0, Landroid/app/Activity;->mFloatingWindowView:Lcom/android/internal/widget/FloatingWindowView;

    invoke-virtual {v0, v4, v1}, Landroid/widget/FrameLayout;->setTagInternal(ILjava/lang/Object;)V

    .line 1294
    invoke-direct {p0}, Landroid/app/Activity;->changeTitleBarColor()V

    .line 1268
    :goto_0
    return-void

    .line 1296
    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/FloatingWindowView;

    iput-object v1, p0, Landroid/app/Activity;->mFloatingWindowView:Lcom/android/internal/widget/FloatingWindowView;

    .line 1297
    invoke-direct {p0}, Landroid/app/Activity;->changeTitleBarColor()V

    .line 1298
    iget-object v1, p0, Landroid/app/Activity;->mFloatingWindowView:Lcom/android/internal/widget/FloatingWindowView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setupTimeout()V
    .locals 4

    .prologue
    .line 3415
    iget-boolean v0, p0, Landroid/app/Activity;->mTimeoutRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 3416
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 3417
    new-instance v0, Landroid/app/Activity$2;

    invoke-direct {v0, p0}, Landroid/app/Activity$2;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mRunnable:Ljava/lang/Runnable;

    .line 3430
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mTimeoutRunning:Z

    .line 3431
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Activity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3414
    return-void
.end method

.method private startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "activity"    # Landroid/app/Activity;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4947
    const/4 v5, 0x0

    .line 4948
    .local v5, "resolvedType":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 4949
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4950
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4951
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 4953
    .end local v5    # "resolvedType":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4954
    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 4955
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p6

    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    .line 4953
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v13

    .line 4957
    .local v13, "result":I
    const/4 v1, -0x6

    if-ne v13, v1, :cond_2

    .line 4958
    new-instance v1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4961
    .end local v13    # "result":I
    :catch_0
    move-exception v12

    .line 4963
    :goto_0
    if-ltz p2, :cond_1

    .line 4971
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4945
    :cond_1
    return-void

    .line 4960
    .restart local v13    # "result":I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v13, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 7311
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_0

    .line 7312
    const-string/jumbo v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7310
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2485
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2486
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2484
    return-void
.end method

.method final attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aThread"    # Landroid/app/ActivityThread;
    .param p3, "instr"    # Landroid/app/Instrumentation;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "ident"    # I
    .param p6, "application"    # Landroid/app/Application;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "title"    # Ljava/lang/CharSequence;
    .param p10, "parent"    # Landroid/app/Activity;
    .param p11, "id"    # Ljava/lang/String;
    .param p12, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "referrer"    # Ljava/lang/String;
    .param p15, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 7000
    invoke-virtual {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 7002
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    .line 7004
    invoke-direct {p0, p1, p7, p8}, Landroid/app/Activity;->makeNewWindow(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7005
    const/16 p10, 0x0

    .line 7008
    .end local p10    # "parent":Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 7009
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 7010
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 7011
    iget v1, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v1, :cond_1

    .line 7012
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v2, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 7014
    :cond_1
    iget v1, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v1, :cond_2

    .line 7015
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v2, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 7017
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    .line 7019
    iput-object p2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 7020
    iput-object p3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 7021
    iput-object p4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 7022
    iput p5, p0, Landroid/app/Activity;->mIdent:I

    .line 7023
    iput-object p6, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 7024
    iput-object p7, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 7025
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 7026
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 7027
    iput-object p8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 7028
    iput-object p9, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 7029
    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 7030
    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 7031
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 7032
    if-eqz p15, :cond_3

    .line 7033
    if-eqz p12, :cond_5

    .line 7034
    move-object/from16 v0, p12

    iget-object v1, v0, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 7041
    :cond_3
    :goto_0
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 7042
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 7043
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 7044
    iget v2, p8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 7041
    :goto_1
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 7045
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 7046
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 7048
    :cond_4
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 7049
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6999
    return-void

    .line 7036
    :cond_5
    new-instance v1, Landroid/app/VoiceInteractor;

    .line 7037
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 7036
    move-object/from16 v0, p15

    invoke-direct {v1, v0, p0, p0, v2}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_0

    .line 7044
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public canStartActivityForResult()Z
    .locals 1

    .prologue
    .line 5385
    const/4 v0, 0x1

    return v0
.end method

.method public changeFlagsLayoutParams()V
    .locals 2

    .prologue
    .line 3153
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 3154
    iget-boolean v0, p0, Landroid/app/Activity;->mChangedFlags:Z

    if-nez v0, :cond_0

    .line 3155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mChangedFlags:Z

    .line 3156
    invoke-direct {p0}, Landroid/app/Activity;->requestChangingFlagsLayout()V

    .line 3152
    :cond_0
    return-void
.end method

.method public closeContextMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 4069
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4070
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 4068
    :cond_0
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4008
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4009
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 4007
    :cond_0
    return-void
.end method

.method public convertFromTranslucent()V
    .locals 4

    .prologue
    .line 6470
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6471
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6472
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6468
    :cond_0
    :goto_0
    return-void

    .line 6474
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "callback"    # Landroid/app/Activity$TranslucentConversionListener;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v5, 0x0

    .line 6509
    :try_start_0
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6511
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, p2}, Landroid/app/IActivityManager;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v2

    .line 6510
    iput-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 6512
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6513
    const/4 v0, 0x1

    .line 6519
    .local v0, "drawComplete":Z
    :goto_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v2, :cond_0

    .line 6521
    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v2, v0}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 6523
    :cond_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    return v2

    .line 6514
    .end local v0    # "drawComplete":Z
    :catch_0
    move-exception v1

    .line 6516
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v5, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 6517
    const/4 v0, 0x0

    .restart local v0    # "drawComplete":Z
    goto :goto_0
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 5908
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5910
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 5912
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5914
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5915
    :goto_0
    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v6, v1, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p2, v6, v1

    .line 5916
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 5913
    const/4 v1, 0x3

    .line 5915
    const/4 v7, 0x0

    const/4 v9, 0x0

    move v5, p1

    move/from16 v8, p3

    .line 5912
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 5917
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    :goto_1
    return-object v0

    .line 5914
    .end local v12    # "target":Landroid/content/IIntentSender;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    iget-object v3, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5917
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 5918
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v11

    .line 5921
    .local v11, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public discardTimeout()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3409
    iput-boolean v0, p0, Landroid/app/Activity;->mTimeoutDone:Z

    .line 3410
    iput-boolean v0, p0, Landroid/app/Activity;->mTimeoutRunning:Z

    .line 3411
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Activity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3408
    return-void
.end method

.method public final dismissDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4281
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 4282
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 4285
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 4286
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_1

    .line 4287
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 4289
    :cond_1
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 4280
    return-void
.end method

.method dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 7328
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 7329
    if-nez p1, :cond_1

    .line 7330
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 7324
    :cond_0
    :goto_0
    return-void

    .line 7331
    :cond_1
    const-string/jumbo v4, "@android:requestPermissions:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7332
    const-string/jumbo v4, "@android:requestPermissions:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7334
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 7336
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 7337
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 7338
    invoke-direct {p0, p2, p4, v0}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    goto :goto_0

    .line 7341
    .end local v0    # "frag":Landroid/app/Fragment;
    :cond_3
    const-string/jumbo v4, "@android:view:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7342
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    .line 7343
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 7342
    invoke-virtual {v4, v5}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v3

    .line 7344
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "viewRoot$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 7345
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 7346
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    .line 7345
    if-eqz v4, :cond_4

    .line 7348
    return-void

    .line 7352
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "viewRoot$iterator":Ljava/util/Iterator;
    .end local v3    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_5
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 7353
    .restart local v0    # "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 7354
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public dispatchEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 6677
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 6678
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6679
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    .line 6676
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3613
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3614
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3615
    const/4 v0, 0x1

    return v0

    .line 3617
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2986
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2990
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_0

    .line 2991
    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 2990
    if-eqz v3, :cond_0

    .line 2992
    return v5

    .line 2995
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2996
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2997
    return v5

    .line 2999
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3000
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3001
    :cond_2
    if-eqz v0, :cond_3

    .line 3002
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 3001
    :cond_3
    invoke-virtual {p1, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3015
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3016
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3017
    const/4 v0, 0x1

    return v0

    .line 3019
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v4, -0x1

    .line 3621
    invoke-virtual {p0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3622
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3624
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3625
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_2

    .line 3626
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 3627
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 3629
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3630
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3631
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3634
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 3626
    .end local v0    # "isFullScreen":Z
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isFullScreen":Z
    goto :goto_0

    .line 3625
    .end local v0    # "isFullScreen":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isFullScreen":Z
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 3033
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 3034
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3035
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-boolean v1, v1, Landroid/view/Window;->mIsFloatingWindow:Z

    if-eqz v1, :cond_5

    .line 3036
    invoke-direct {p0}, Landroid/app/Activity;->isUnSnap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3037
    iget-object v1, p0, Landroid/app/Activity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3039
    :cond_1
    invoke-direct {p0, v2}, Landroid/app/Activity;->getActionBarHeight(Z)I

    move-result v0

    .line 3040
    .local v0, "actionBarHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3076
    .end local v0    # "actionBarHeight":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3077
    return v4

    .line 3042
    .restart local v0    # "actionBarHeight":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->setTouchViewDown(FF)V

    .line 3043
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3044
    invoke-virtual {p0}, Landroid/app/Activity;->updateFocusApp()V

    .line 3045
    iget-object v1, p0, Landroid/app/Activity;->viewY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 3046
    iget-boolean v1, p0, Landroid/app/Activity;->mChangedPreviousRange:Z

    if-nez v1, :cond_2

    .line 3047
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->setPreviousTouchRange(FF)V

    .line 3048
    iput-boolean v4, p0, Landroid/app/Activity;->mChangedPreviousRange:Z

    goto :goto_0

    .line 3053
    :pswitch_1
    iget-object v1, p0, Landroid/app/Activity;->viewY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 3054
    invoke-virtual {p0}, Landroid/app/Activity;->changeFlagsLayoutParams()V

    .line 3055
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->setTouchViewMove(FF)V

    .line 3056
    iget-boolean v1, p0, Landroid/app/Activity;->mRestorePosition:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->moveRangeAboveLimit(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3057
    invoke-virtual {p0}, Landroid/app/Activity;->restoreOldPosition()Z

    .line 3059
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->showSnap(II)V

    goto :goto_0

    .line 3063
    :pswitch_2
    iget-object v1, p0, Landroid/app/Activity;->viewY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v3, v0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 3064
    iput-boolean v2, p0, Landroid/app/Activity;->mChangedFlags:Z

    .line 3065
    invoke-virtual {p0}, Landroid/app/Activity;->isValidSnap()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/app/Activity;->mTimeoutDone:Z

    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->finishSnap(Z)V

    .line 3066
    invoke-virtual {p0}, Landroid/app/Activity;->discardTimeout()V

    .line 3067
    iput-boolean v2, p0, Landroid/app/Activity;->mChangedPreviousRange:Z

    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 3065
    goto :goto_1

    .line 3072
    .end local v0    # "actionBarHeight":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 3073
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    goto/16 :goto_0

    .line 3079
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 3040
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3595
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3596
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3597
    const/4 v0, 0x1

    return v0

    .line 3599
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 6385
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6384
    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 6389
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Local Activity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6390
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6391
    const-string/jumbo v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6393
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6394
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6395
    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mFinished="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6396
    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6397
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6398
    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6399
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentConfig="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6400
    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6402
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6403
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6404
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_0

    .line 6405
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6408
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6409
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6410
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6411
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6414
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6388
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2361
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 5703
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(Z)V

    .line 5702
    return-void
.end method

.method public finishActivity(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 5772
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5774
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5775
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5774
    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5771
    :goto_0
    return-void

    .line 5780
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    goto :goto_0

    .line 5776
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 4
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 5794
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5795
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5794
    invoke-interface {v1, v2, v3, p2}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5792
    :goto_0
    return-void

    .line 5796
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishAffinity()V
    .locals 3

    .prologue
    .line 5721
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 5722
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can not be called from an embedded activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5724
    :cond_0
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 5725
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can not be called to deliver a result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5728
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5729
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5720
    :cond_3
    :goto_0
    return-void

    .line 5731
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishAfterTransition()V
    .locals 1

    .prologue
    .line 5757
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5758
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5756
    :cond_0
    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .prologue
    .line 5806
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(Z)V

    .line 5805
    return-void
.end method

.method public finishFloating()V
    .locals 2

    .prologue
    .line 5693
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 5694
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->performFinishFloating()V

    .line 5692
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 5746
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5745
    return-void
.end method

.method public finishSnap(Z)V
    .locals 6
    .param p1, "apply"    # Z

    .prologue
    const/16 v5, 0x804

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3207
    if-eqz p1, :cond_3

    .line 3208
    invoke-direct {p0}, Landroid/app/Activity;->saveOldPosition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3209
    iput-boolean v4, p0, Landroid/app/Activity;->mRestorePosition:Z

    .line 3211
    :cond_0
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3212
    .local v1, "lpp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/app/Activity;->mSnapParam:[I

    aget v2, v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3213
    iget-object v2, p0, Landroid/app/Activity;->mSnapParam:[I

    aget v2, v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3214
    iget-object v2, p0, Landroid/app/Activity;->mSnapParam:[I

    const/4 v4, 0x2

    aget v0, v2, v4

    .line 3215
    .local v0, "gravity":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3216
    const/16 v2, 0x50

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    div-int/lit8 v3, v2, 0x2

    :cond_1
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3217
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3218
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3206
    .end local v0    # "gravity":I
    .end local v1    # "lpp":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    return-void

    .restart local v0    # "gravity":I
    .restart local v1    # "lpp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move v2, v3

    .line 3215
    goto :goto_0

    .line 3222
    .end local v0    # "gravity":I
    .end local v1    # "lpp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3225
    iput v3, p0, Landroid/app/Activity;->mSnap:I

    goto :goto_1
.end method

.method public forceSnap(I)V
    .locals 1
    .param p1, "side"    # I

    .prologue
    .line 3356
    if-nez p1, :cond_0

    .line 3357
    invoke-virtual {p0}, Landroid/app/Activity;->restoreOldPosition()Z

    .line 3358
    return-void

    .line 3360
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mSnapped:Z

    if-eqz v0, :cond_1

    .line 3361
    invoke-direct {p0}, Landroid/app/Activity;->restoreOldPositionWithoutRefresh()V

    .line 3363
    :cond_1
    iput p1, p0, Landroid/app/Activity;->mSnap:I

    .line 3364
    invoke-direct {p0}, Landroid/app/Activity;->calculateSnap()V

    .line 3365
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->finishSnap(Z)V

    .line 3355
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 2371
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2372
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method getActivityOptions()Landroid/app/ActivityOptions;
    .locals 3

    .prologue
    .line 6555
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 6556
    :catch_0
    move-exception v0

    .line 6558
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getActivityToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 7113
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 5576
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 5577
    :catch_0
    move-exception v0

    .line 5578
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5553
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 5554
    :catch_0
    move-exception v0

    .line 5555
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getChangedPreviousRange()Z
    .locals 1

    .prologue
    .line 3120
    iget-boolean v0, p0, Landroid/app/Activity;->mChangedPreviousRange:Z

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 2027
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 6047
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 2521
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 2499
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 935
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 2188
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2133
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v1, :cond_0

    .line 2134
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 2133
    :cond_0
    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2054
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v1, :cond_0

    .line 2055
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 2054
    :cond_0
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 4504
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 6030
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6031
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 6032
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 6033
    .local v1, "packageLen":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_1

    .line 6035
    :cond_0
    return-object v0

    .line 6034
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 6037
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 6322
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 4513
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 4514
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4515
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 4516
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 4521
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0

    .line 4518
    :cond_1
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_0
.end method

.method public final getParent()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 6908
    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 6909
    .local v4, "parentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6910
    return-object v9

    .line 6914
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6916
    .local v5, "target":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 6917
    .local v2, "parentInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 6918
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 6919
    invoke-static {v5}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 6921
    .local v3, "parentIntent":Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 6920
    .end local v3    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "parentIntent":Landroid/content/Intent;
    goto :goto_0

    .line 6922
    .end local v1    # "parentActivity":Ljava/lang/String;
    .end local v2    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "parentIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 6923
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6924
    const-string/jumbo v8, "\' in manifest"

    .line 6923
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6925
    return-object v9
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 6064
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5505
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5506
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 5507
    .local v1, "referrer":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 5508
    return-object v1

    .line 5510
    :cond_0
    const-string/jumbo v3, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5511
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 5512
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 5514
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 5515
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "android-app"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 5517
    :cond_2
    return-object v4
.end method

.method public getRequestedOrientation()I
    .locals 3

    .prologue
    .line 5958
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5960
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5961
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5960
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getRequestedOrientation(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5966
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    return v1

    .line 5962
    :catch_0
    move-exception v0

    .line 5968
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public getRestorePosition()Z
    .locals 1

    .prologue
    .line 3279
    iget-boolean v0, p0, Landroid/app/Activity;->mRestorePosition:Z

    return v0
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    .prologue
    .line 4385
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6077
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6078
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6079
    const-string/jumbo v1, "System services not available to Activities before onCreate()"

    .line 6078
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6082
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6083
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 6084
    :cond_1
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6085
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 6086
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    .line 6088
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()I
    .locals 4

    .prologue
    .line 5979
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5980
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    .line 5979
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5981
    :catch_0
    move-exception v0

    .line 5982
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public getTimeoutDone()Z
    .locals 1

    .prologue
    .line 3402
    iget-boolean v0, p0, Landroid/app/Activity;->mTimeoutDone:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 6133
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    .prologue
    .line 6137
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    .prologue
    .line 6289
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 3

    .prologue
    .line 2957
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2958
    .local v1, "w":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 2959
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2960
    .local v0, "d":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2961
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    return v2

    .line 2964
    .end local v0    # "d":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3784
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3785
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3783
    :cond_0
    :goto_0
    return-void

    .line 3786
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method public isBackgroundVisibleBehind()Z
    .locals 3

    .prologue
    .line 6642
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6643
    :catch_0
    move-exception v0

    .line 6645
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .prologue
    .line 5644
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    return v0
.end method

.method public final isChild()Z
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 5631
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 5623
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public isImmersive()Z
    .locals 3

    .prologue
    .line 6430
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isImmersive(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6431
    :catch_0
    move-exception v0

    .line 6432
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final isResumed()Z
    .locals 1

    .prologue
    .line 7307
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public isTaskRoot()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5994
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 5995
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    .line 5994
    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 5996
    :catch_0
    move-exception v0

    .line 5997
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isValidSnap()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, -0x2710

    .line 3233
    iget-object v2, p0, Landroid/app/Activity;->mSnapParam:[I

    aget v2, v2, v1

    if-eq v2, v4, :cond_1

    .line 3234
    iget-object v2, p0, Landroid/app/Activity;->mSnapParam:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_1

    .line 3235
    iget-object v2, p0, Landroid/app/Activity;->mSnapParam:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-eq v2, v4, :cond_0

    .line 3233
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 3235
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3233
    goto :goto_0
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1451
    :try_start_0
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v2, :cond_0

    .line 1452
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isRootVoiceInteraction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1451
    :cond_0
    return v1

    .line 1453
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method makeVisible()V
    .locals 3

    .prologue
    .line 5603
    iget-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v1, :cond_0

    .line 5604
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 5605
    .local v0, "wm":Landroid/view/ViewManager;
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5606
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 5608
    .end local v0    # "wm":Landroid/view/ViewManager;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5602
    return-void
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2232
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2233
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2234
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 2236
    :cond_0
    return-object v6
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2272
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2273
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2274
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 2276
    :cond_0
    return-object v6
.end method

.method public moveRangeAboveLimit(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    .line 3180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 3181
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 3183
    .local v2, "y":F
    const/4 v0, 0x0

    .line 3184
    .local v0, "returnValue":Z
    iget-object v3, p0, Landroid/app/Activity;->mPreviousRange:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 3185
    const/4 v0, 0x1

    .line 3189
    :cond_0
    :goto_0
    return v0

    .line 3186
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mPreviousRange:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 3187
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveTaskToBack(Z)Z
    .locals 3
    .param p1, "nonRoot"    # Z

    .prologue
    .line 6014
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 6015
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6014
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6016
    :catch_0
    move-exception v0

    .line 6019
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 6848
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v5, :cond_3

    .line 6849
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6850
    .local v0, "destInfo":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 6851
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 6852
    if-nez v0, :cond_0

    .line 6853
    return v7

    .line 6855
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6856
    .end local p1    # "upIntent":Landroid/content/Intent;
    .local v4, "upIntent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p1, v4

    .line 6860
    .end local v4    # "upIntent":Landroid/content/Intent;
    .restart local p1    # "upIntent":Landroid/content/Intent;
    :cond_1
    monitor-enter p0

    .line 6861
    :try_start_0
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    .line 6862
    .local v2, "resultCode":I
    iget-object v3, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "resultData":Landroid/content/Intent;
    monitor-exit p0

    .line 6864
    if-eqz v3, :cond_2

    .line 6865
    invoke-virtual {v3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 6868
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 6869
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v5, v6, p1, v2, v3}, Landroid/app/IActivityManager;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    return v5

    .line 6860
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 6871
    .restart local v2    # "resultCode":I
    .restart local v3    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 6872
    .local v1, "e":Landroid/os/RemoteException;
    return v7

    .line 6875
    .end local v0    # "destInfo":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v5

    return v5
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 6892
    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 6789
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 6778
    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 5876
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 5855
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 7
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4527
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 4528
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 4539
    :goto_0
    if-eqz p1, :cond_0

    .line 4540
    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4541
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xe3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 4542
    .local v1, "colorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4543
    if-eqz v1, :cond_0

    .line 4544
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v3, v5, v5, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 4546
    .local v3, "v":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 4526
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "colorPrimary":I
    .end local v3    # "v":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    return-void

    .line 4531
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4535
    :goto_1
    invoke-virtual {p1, p2, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 4532
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 2196
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 2935
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2770
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2771
    return-void

    .line 2774
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2775
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 2769
    :cond_1
    return-void
.end method

.method public onBackgroundVisibleBehindChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 6662
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 6155
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1951
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/app/Activity;->mCalled:Z

    .line 1953
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1955
    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v4, :cond_1

    .line 1957
    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1958
    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-boolean v4, v4, Landroid/view/Window;->mIsFloatingWindow:Z

    if-eqz v4, :cond_1

    .line 1959
    invoke-direct {p0}, Landroid/app/Activity;->refreshAppLayoutSize()V

    .line 1960
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1961
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iget v5, p0, Landroid/app/Activity;->mPreviousOrientation:I

    if-eq v4, v5, :cond_1

    .line 1962
    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/16 v5, 0x33

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 1963
    invoke-direct {p0}, Landroid/app/Activity;->isUnSnap()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1964
    invoke-direct {p0}, Landroid/app/Activity;->requestChangingFlagsLayout()V

    .line 1966
    :cond_0
    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1967
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget v4, p0, Landroid/app/Activity;->mSnap:I

    packed-switch v4, :pswitch_data_0

    .line 1999
    :goto_0
    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2000
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Landroid/app/Activity;->mPreviousOrientation:I

    .line 2005
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v4, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v4, :cond_2

    .line 2008
    iget-object v4, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1949
    :cond_2
    return-void

    .line 1969
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    :pswitch_0
    iget v4, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1970
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1971
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1972
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1975
    :pswitch_1
    iget v4, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1976
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1977
    iget v4, p0, Landroid/app/Activity;->mCurrentScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1978
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1981
    :pswitch_2
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1982
    iget v4, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1983
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1984
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1987
    :pswitch_3
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1988
    iget v4, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1989
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1990
    iget v4, p0, Landroid/app/Activity;->mCurrentScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1993
    :pswitch_4
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1994
    .local v3, "width":I
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1995
    .local v1, "height":I
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1996
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1967
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 2895
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 4092
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4093
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 4095
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 4106
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4107
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 4105
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 968
    iget-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v2, :cond_0

    .line 969
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    .line 971
    :cond_0
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 972
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-nez v2, :cond_5

    .line 973
    iput-boolean v4, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    .line 978
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 979
    const-string/jumbo v2, "android:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 980
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v3, :cond_2

    .line 981
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v1, v1, Landroid/app/Activity$NonConfigurationInstances;->fragments:Ljava/util/List;

    .line 980
    :cond_2
    invoke-virtual {v2, v0, v1}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 983
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->dispatchCreate()V

    .line 984
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 985
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_4

    .line 986
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    .line 988
    :cond_4
    iput-boolean v4, p0, Landroid/app/Activity;->mCalled:Z

    .line 989
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/app/Activity;->mPreviousOrientation:I

    .line 990
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Landroid/app/Activity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 991
    iget-object v1, p0, Landroid/app/Activity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 966
    return-void

    .line 975
    :cond_5
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1016
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1015
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 4026
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1759
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4116
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4155
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .prologue
    .line 3961
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    .line 3960
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3819
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3820
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 3822
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 3658
    if-nez p1, :cond_0

    .line 3659
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 3660
    .local v0, "show":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3661
    return v0

    .line 3663
    .end local v0    # "show":Z
    :cond_0
    return v1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 3646
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1737
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6367
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6368
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 6371
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6353
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1875
    invoke-direct {p0}, Landroid/app/Activity;->sendAppEndBroadcast()V

    .line 1876
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 1879
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    .line 1880
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1881
    .local v4, "numDialogs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1882
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedDialog;

    .line 1883
    .local v2, "md":Landroid/app/Activity$ManagedDialog;
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1884
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1881
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1887
    .end local v2    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    iput-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1891
    .end local v1    # "i":I
    .end local v4    # "numDialogs":I
    :cond_2
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1892
    :try_start_0
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1893
    .local v3, "numCursors":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1894
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedCursor;

    .line 1895
    .local v0, "c":Landroid/app/Activity$ManagedCursor;
    if-eqz v0, :cond_3

    .line 1896
    invoke-static {v0}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1893
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1899
    .end local v0    # "c":Landroid/app/Activity$ManagedCursor;
    :cond_4
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1903
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v5, :cond_5

    .line 1904
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    .line 1907
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    .line 1873
    return-void

    .line 1891
    .end local v1    # "i":I
    .end local v3    # "numCursors":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2945
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .prologue
    .line 6670
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2858
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2659
    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    .line 2660
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2661
    const/4 v6, 0x5

    .line 2660
    if-lt v5, v6, :cond_0

    .line 2662
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2666
    :goto_0
    return v7

    .line 2664
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 2669
    :cond_1
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-nez v5, :cond_2

    .line 2670
    return v8

    .line 2671
    :cond_2
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-ne v5, v6, :cond_4

    .line 2672
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 2673
    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4, v8}, Landroid/view/Window;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2674
    invoke-virtual {v4, v8, p1, p2, v6}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result v5

    .line 2673
    if-eqz v5, :cond_3

    .line 2676
    return v7

    .line 2678
    :cond_3
    return v8

    .line 2681
    .end local v4    # "w":Landroid/view/Window;
    :cond_4
    const/4 v0, 0x0

    .line 2683
    .local v0, "clearSpannable":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2684
    :cond_5
    const/4 v0, 0x1

    .line 2685
    const/4 v1, 0x0

    .line 2710
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 2711
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2712
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2713
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v5, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2715
    :cond_7
    return v1

    .line 2687
    :cond_8
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    .line 2688
    iget-object v6, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2687
    invoke-virtual {v5, v9, v6, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2689
    .local v1, "handled":Z
    if-eqz v1, :cond_6

    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 2692
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2693
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x1

    .line 2695
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 2697
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DIAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2698
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2699
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2702
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0, v3, v8, v9, v8}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 2705
    :pswitch_3
    invoke-virtual {p0, v3, v8, v9, v7}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 2695
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2725
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2761
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2791
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2792
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2744
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2745
    const/4 v1, 0x5

    .line 2744
    if-lt v0, v1, :cond_0

    .line 2746
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2747
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2752
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2748
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2749
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 2173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2174
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    .line 2171
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const v5, 0xc350

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3711
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3713
    .local v0, "titleCondensed":Ljava/lang/CharSequence;
    sparse-switch p1, :sswitch_data_0

    .line 3747
    return v3

    .line 3718
    :sswitch_0
    if-eqz v0, :cond_0

    .line 3719
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3721
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3722
    return v4

    .line 3724
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3725
    return v4

    .line 3727
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    .line 3728
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 3729
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 3730
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v1

    return v1

    .line 3732
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v1

    return v1

    .line 3735
    :cond_4
    return v3

    .line 3738
    :sswitch_1
    if-eqz v0, :cond_5

    .line 3739
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3741
    :cond_5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3742
    return v4

    .line 3744
    :cond_6
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 3713
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 3690
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 3691
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3692
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 3693
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 3698
    :cond_0
    :goto_0
    return v2

    .line 3695
    :cond_1
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "Tried to open action bar menu with no action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onNavigateUp()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3901
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3902
    .local v1, "upIntent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 3903
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3907
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3926
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 3908
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3909
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 3910
    .local v0, "b":Landroid/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 3911
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 3912
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 3916
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 3918
    :cond_1
    const-string/jumbo v2, "Activity"

    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3921
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 3924
    .end local v0    # "b":Landroid/app/TaskStackBuilder;
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_0

    .line 3928
    :cond_4
    return v2
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 3938
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNewActivityOptions(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 6539
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6540
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v0, :cond_0

    .line 6541
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 6538
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1487
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3869
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3870
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3872
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3987
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3988
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3986
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3761
    sparse-switch p1, :sswitch_data_0

    .line 3760
    :goto_0
    return-void

    .line 3763
    :sswitch_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3764
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 3768
    :sswitch_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 3772
    :sswitch_2
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3773
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_0

    .line 3761
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1694
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    .line 1695
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1692
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 1221
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    iput-boolean v2, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 1223
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1225
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 1220
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1241
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1240
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1426
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1427
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    .line 1428
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1429
    :cond_1
    invoke-direct {p0, v2}, Landroid/app/Activity;->setupFloatingActionBar(Z)V

    .line 1430
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 1425
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4164
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 4163
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4193
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 4192
    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .prologue
    .line 3976
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3844
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3845
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 3847
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3676
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 3677
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 3678
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3679
    return v0

    .line 3681
    .end local v0    # "goforit":Z
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "outContent"    # Landroid/app/assist/AssistContent;

    .prologue
    .line 1795
    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1773
    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5527
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 4656
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 1371
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1370
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1071
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 1072
    const-string/jumbo v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1073
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1074
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1070
    .end local v0    # "windowState":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1102
    if-eqz p1, :cond_0

    .line 1103
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1101
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1407
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    .line 1408
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onResume()V

    .line 1409
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1405
    return-void
.end method

.method onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2146
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2111
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1570
    const-string/jumbo v1, "android:viewHierarchyState"

    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1571
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1572
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1573
    const-string/jumbo v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1575
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1569
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1594
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1593
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4368
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 4369
    const/4 v1, 0x4

    .line 4368
    if-eq v0, v1, :cond_0

    .line 4370
    invoke-virtual {p0, v3, v2, v3, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 4371
    const/4 v0, 0x1

    return v0

    .line 4373
    :cond_0
    return v2
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 2
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 4358
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 4359
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 4360
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 4361
    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->setupFloatingActionBar(Z)V

    .line 1261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1263
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 1265
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    .line 1258
    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    .prologue
    .line 1381
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1837
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1838
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onStop()V

    .line 1839
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    .line 1840
    iput-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 1841
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1835
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 6141
    iget-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v1, :cond_1

    .line 6142
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 6143
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 6144
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 6145
    if-eqz p2, :cond_0

    .line 6146
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    .line 6149
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 6150
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 6140
    .end local v0    # "win":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2806
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2807
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2808
    const/4 v0, 0x1

    return v0

    .line 2811
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2829
    const/4 v0, 0x0

    return v0
.end method

.method onTranslucentConversionComplete(Z)V
    .locals 3
    .param p1, "drawComplete"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6528
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_0

    .line 6529
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 6530
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6532
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-eqz v0, :cond_1

    .line 6533
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 6527
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 2179
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2180
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    .line 2177
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2880
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 1713
    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .prologue
    .line 6624
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 6623
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2887
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 2888
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2889
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2890
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2883
    .end local v0    # "decor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onWindowDismissed()V
    .locals 0

    .prologue
    .line 2973
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2972
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2925
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v1, 0x0

    .line 6747
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    if-nez v0, :cond_0

    .line 6748
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 6749
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 6750
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 6753
    :cond_0
    return-object v1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 6763
    :try_start_0
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 6764
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6766
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 6764
    return-object v0

    .line 6765
    :catchall_0
    move-exception v0

    .line 6766
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 6765
    throw v0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4062
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 4061
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3997
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3998
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3996
    :cond_0
    :goto_0
    return-void

    .line 3999
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public overridePendingTransition(II)V
    .locals 4
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 5433
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5434
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5433
    invoke-interface {v1, v2, v3, p1, p2}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5431
    :goto_0
    return-void

    .line 5435
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method final performCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 7124
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 7125
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 7126
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 7127
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    .line 7123
    return-void
.end method

.method final performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 7131
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 7132
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 7133
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 7134
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    .line 7130
    return-void
.end method

.method final performCreateCommon()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7117
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    .line 7118
    const/16 v2, 0xa

    .line 7117
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 7119
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    .line 7120
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 7116
    return-void

    .line 7117
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final performDestroy()V
    .locals 1

    .prologue
    .line 7293
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    .line 7294
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->destroy()V

    .line 7295
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 7296
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    .line 7297
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderDestroy()V

    .line 7298
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_0

    .line 7299
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->detachActivity()V

    .line 7292
    :cond_0
    return-void
.end method

.method final performPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7234
    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 7235
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchPause()V

    .line 7236
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 7237
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 7238
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 7239
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7240
    const/16 v1, 0x9

    .line 7239
    if-lt v0, v1, :cond_0

    .line 7241
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 7242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7243
    const-string/jumbo v2, " did not call through to super.onPause()"

    .line 7242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7241
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7245
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 7233
    return-void
.end method

.method final performRestart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7154
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 7156
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v3, :cond_6

    .line 7157
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    .line 7158
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 7159
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 7162
    :cond_0
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 7163
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7164
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 7165
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 7166
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get2(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7167
    :cond_1
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7168
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7169
    const/16 v5, 0xe

    .line 7168
    if-lt v3, v5, :cond_2

    .line 7170
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 7171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trying to requery an already closed cursor  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 7172
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 7171
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7170
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7162
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 7175
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 7176
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set1(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7164
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    monitor-exit v4

    .line 7181
    iput-boolean v6, p0, Landroid/app/Activity;->mCalled:Z

    .line 7182
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 7183
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_5

    .line 7184
    new-instance v3, Landroid/util/SuperNotCalledException;

    .line 7185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7186
    const-string/jumbo v5, " did not call through to super.onRestart()"

    .line 7185
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7184
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7188
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->performStart()V

    .line 7153
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1028
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1029
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1030
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedWindowLayout(Landroid/os/Bundle;)V

    .line 1027
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1044
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1045
    if-eqz p1, :cond_0

    .line 1046
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1043
    :cond_0
    return-void
.end method

.method final performResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7193
    invoke-virtual {p0}, Landroid/app/Activity;->performRestart()V

    .line 7195
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 7197
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 7199
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 7201
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 7202
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_0

    .line 7203
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 7204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7205
    const-string/jumbo v2, " did not call through to super.onResume()"

    .line 7204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7203
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7209
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_2

    .line 7220
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 7222
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchResume()V

    .line 7223
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 7225
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    .line 7226
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_3

    .line 7227
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 7228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7229
    const-string/jumbo v2, " did not call through to super.onPostResume()"

    .line 7228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7227
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7210
    :cond_2
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "An activity without a UI must call finish() before onResume() completes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7211
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7212
    const/16 v1, 0x16

    .line 7211
    if-le v0, v1, :cond_1

    .line 7213
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7215
    const-string/jumbo v2, " did not call finish() prior to onResume() completing"

    .line 7214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7213
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7192
    :cond_3
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1499
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1500
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1501
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    .line 1502
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 1503
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedWindowLayout(Landroid/os/Bundle;)V

    .line 1498
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1517
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1518
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1519
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 1516
    return-void
.end method

.method final performStart()V
    .locals 3

    .prologue
    .line 7138
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 7139
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 7140
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 7141
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 7142
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 7143
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_0

    .line 7144
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 7145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7146
    const-string/jumbo v2, " did not call through to super.onStart()"

    .line 7145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7144
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7148
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchStart()V

    .line 7149
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->reportLoaderStart()V

    .line 7150
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 7137
    return-void
.end method

.method final performStop()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7254
    iput-boolean v5, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 7255
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-boolean v4, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 7257
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v3, :cond_5

    .line 7258
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_0

    .line 7259
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 7262
    :cond_0
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 7263
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 7266
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->dispatchStop()V

    .line 7268
    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 7269
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 7270
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_2

    .line 7271
    new-instance v3, Landroid/util/SuperNotCalledException;

    .line 7272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7273
    const-string/jumbo v5, " did not call through to super.onStop()"

    .line 7272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7271
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7276
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 7277
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7278
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 7279
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 7280
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7281
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    .line 7282
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7278
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    monitor-exit v4

    .line 7287
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    .line 7289
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_5
    iput-boolean v5, p0, Landroid/app/Activity;->mResumed:Z

    .line 7253
    return-void

    .line 7276
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method final performUserLeaving()V
    .locals 0

    .prologue
    .line 7249
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 7250
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 7248
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    .prologue
    .line 6976
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    .line 6975
    return-void
.end method

.method public recreate()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 5654
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5655
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can only be called on top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5657
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 5658
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5660
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 5653
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4040
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 4039
    return-void
.end method

.method public releaseInstance()Z
    .locals 3

    .prologue
    .line 5822
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->releaseActivityInstance(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5823
    :catch_0
    move-exception v0

    .line 5826
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final removeDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4325
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 4326
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 4327
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_0

    .line 4328
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 4329
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4324
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_0
    return-void
.end method

.method public reportFullyDrawn()V
    .locals 3

    .prologue
    .line 1924
    iget-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    if-eqz v1, :cond_0

    .line 1925
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 1927
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->reportActivityFullyDrawn(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    :cond_0
    :goto_0
    return-void

    .line 1928
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 4627
    iget-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v1, :cond_0

    .line 4628
    const-string/jumbo v1, "Activity"

    const-string/jumbo v2, "Can reqeust only one set of permissions at a time"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4630
    new-array v1, v3, [Ljava/lang/String;

    new-array v2, v3, [I

    invoke-virtual {p0, p2, v1, v2}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 4631
    return-void

    .line 4633
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4634
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "@android:requestPermissions:"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4635
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 4626
    return-void
.end method

.method public requestVisibleBehind(Z)Z
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6595
    iget-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    if-nez v2, :cond_0

    .line 6597
    const/4 p1, 0x0

    .line 6600
    .end local p1    # "visible":Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 6601
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6600
    invoke-interface {v2, v3, p1}, Landroid/app/IActivityManager;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleBehind:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6605
    :goto_1
    iget-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    return v1

    :cond_1
    move p1, v1

    .line 6600
    goto :goto_0

    .line 6602
    :catch_0
    move-exception v0

    .line 6603
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    goto :goto_1
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 4463
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public restoreOldPosition()Z
    .locals 1

    .prologue
    .line 3258
    iget-boolean v0, p0, Landroid/app/Activity;->mSnapped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3259
    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;->restoreOldPositionWithoutRefresh()V

    .line 3260
    const/4 v0, 0x1

    return v0
.end method

.method public restorePreviousLayoutApp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3533
    iget-boolean v1, p0, Landroid/app/Activity;->mIsFullscreenApp:Z

    if-nez v1, :cond_0

    .line 3534
    return-void

    .line 3536
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3537
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Landroid/app/Activity;->mLastLayout:[I

    aget v1, v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3538
    iget-object v1, p0, Landroid/app/Activity;->mLastLayout:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3539
    iget-object v1, p0, Landroid/app/Activity;->mLastLayout:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3540
    iget-object v1, p0, Landroid/app/Activity;->mLastLayout:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3541
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 3542
    const/16 v2, 0x804

    .line 3541
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3544
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3545
    iput-boolean v3, p0, Landroid/app/Activity;->mIsFullscreenApp:Z

    .line 3532
    return-void
.end method

.method retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2150
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 2151
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    .line 2152
    .local v1, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->retainNonConfig()Ljava/util/List;

    move-result-object v2

    .line 2153
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v3

    .line 2154
    .local v3, "loaders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 2155
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-nez v5, :cond_0

    .line 2156
    return-object v6

    .line 2159
    :cond_0
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 2160
    .local v4, "nci":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 2161
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 2162
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Ljava/util/List;

    .line 2163
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    .line 2164
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v5, :cond_1

    .line 2165
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    .line 2166
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    .line 2168
    :cond_1
    return-object v4
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 6333
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 6334
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6332
    :goto_0
    return-void

    .line 6336
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public sendAppLaunchBroadcast()V
    .locals 3

    .prologue
    .line 3457
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTIVITY_LAUNCH_DETECTOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3458
    .local v0, "appIntent":Landroid/content/Intent;
    const-string/jumbo v1, "packagename"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3459
    const-string/jumbo v1, "packagetoken"

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 3461
    const/high16 v1, 0x50000000

    .line 3460
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3462
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3463
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 3456
    return-void
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 3
    .param p1, "toolbar"    # Landroid/widget/Toolbar;

    .prologue
    .line 2391
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/app/WindowDecorActionBar;

    if-eqz v1, :cond_0

    .line 2392
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2397
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 2399
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 2400
    .local v0, "tbab":Lcom/android/internal/app/ToolbarActionBar;
    iput-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2401
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 2402
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    .line 2390
    return-void
.end method

.method public setChangedFlags(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 3173
    iput-boolean p1, p0, Landroid/app/Activity;->mChangedFlags:Z

    .line 3172
    return-void
.end method

.method public setChangedPreviousRange(Z)V
    .locals 0
    .param p1, "needed"    # Z

    .prologue
    .line 3113
    iput-boolean p1, p0, Landroid/app/Activity;->mChangedPreviousRange:Z

    .line 3112
    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 2509
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    .line 2508
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 2437
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 2438
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2436
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2457
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 2458
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2456
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2473
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2474
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2472
    return-void
.end method

.method public final setDefaultKeyMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2612
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 2616
    packed-switch p1, :pswitch_data_0

    .line 2628
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2619
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2611
    :goto_0
    return-void

    .line 2624
    :pswitch_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2625
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 2616
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 6938
    if-nez p1, :cond_0

    .line 6939
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6941
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 6937
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 6954
    if-nez p1, :cond_0

    .line 6955
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6957
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 6953
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4487
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 4486
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 4495
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 4494
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 4471
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 4470
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4479
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 4478
    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1
    .param p1, "finish"    # Z

    .prologue
    .line 2529
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 2528
    return-void
.end method

.method public setFullscreenApp()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 3514
    iget-boolean v2, p0, Landroid/app/Activity;->mIsFullscreenApp:Z

    if-eqz v2, :cond_0

    .line 3515
    return-void

    .line 3517
    :cond_0
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3518
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x4

    new-array v0, v2, [I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v5

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, 0x2

    aput v2, v0, v3

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 3519
    .local v0, "layout":[I
    iput-object v0, p0, Landroid/app/Activity;->mLastLayout:[I

    .line 3520
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3521
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3522
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 3523
    const/16 v3, 0x804

    .line 3522
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3525
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3526
    iput-boolean v5, p0, Landroid/app/Activity;->mIsFullscreenApp:Z

    .line 3513
    return-void
.end method

.method public setImmersive(Z)V
    .locals 3
    .param p1, "i"    # Z

    .prologue
    .line 6699
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setImmersive(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6697
    :goto_0
    return-void

    .line 6700
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 882
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 881
    return-void
.end method

.method public final setMediaController(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 6311
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    .line 6310
    return-void
.end method

.method final setParent(Landroid/app/Activity;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 6991
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 6990
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2350
    return-void
.end method

.method public setPreviousTouchRange(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3094
    iget-object v0, p0, Landroid/app/Activity;->mPreviousRange:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3095
    iget-object v0, p0, Landroid/app/Activity;->mPreviousRange:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 3093
    return-void
.end method

.method public final setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 6239
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit8 v1, p1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 6238
    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .locals 3
    .param p1, "indeterminate"    # Z

    .prologue
    .line 6223
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 6224
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    .line 6223
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 6222
    return-void

    .line 6225
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public final setProgressBarIndeterminateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 6209
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 6210
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 6209
    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 6208
    return-void

    .line 6210
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public final setProgressBarVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 6196
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 6195
    return-void

    .line 6197
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 5935
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5937
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5938
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5937
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5934
    :goto_0
    return-void

    .line 5943
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 5939
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final setResult(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 5452
    monitor-enter p0

    .line 5453
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 5454
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 5451
    return-void

    .line 5452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 5481
    monitor-enter p0

    .line 5482
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 5483
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 5480
    return-void

    .line 5481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 6256
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 6257
    add-int/lit16 v1, p1, 0x4e20

    .line 6256
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 6255
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 6
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 6173
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6174
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v2

    .line 6175
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6176
    .local v1, "icon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 6177
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v5

    .line 6176
    invoke-direct {v3, v4, v1, v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 6182
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "size":I
    .local v3, "td":Landroid/app/ActivityManager$TaskDescription;
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v4, v5, v3}, Landroid/app/IActivityManager;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6170
    :goto_1
    return-void

    .line 6179
    .end local v3    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    move-object v3, p1

    .restart local v3    # "td":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_0

    .line 6183
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 6113
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 6112
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 6098
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 6099
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 6101
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 6102
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 6097
    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6128
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 6129
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 6127
    return-void
.end method

.method public setTouchViewDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3086
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->viewX:Ljava/lang/Float;

    .line 3087
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->viewY:Ljava/lang/Float;

    .line 3085
    return-void
.end method

.method public setTouchViewMove(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3102
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->screenX:Ljava/lang/Float;

    .line 3103
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->screenY:Ljava/lang/Float;

    .line 3104
    iget-object v0, p0, Landroid/app/Activity;->screenX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroid/app/Activity;->viewX:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->leftFromScreen:Ljava/lang/Float;

    .line 3105
    iget-object v0, p0, Landroid/app/Activity;->screenY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroid/app/Activity;->viewY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->topFromScreen:Ljava/lang/Float;

    .line 3106
    iget-object v0, p0, Landroid/app/Activity;->leftFromScreen:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroid/app/Activity;->topFromScreen:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/app/Activity;->initLayoutParams(FF)V

    .line 3101
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 5593
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_0

    .line 5594
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 5595
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_0

    .line 5596
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    .line 5592
    :cond_0
    :goto_0
    return-void

    .line 5597
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 6277
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 6276
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 4681
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 6807
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 6808
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6809
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 6810
    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 6812
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 6813
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 6814
    return v8

    .line 6816
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 6817
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 6816
    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 6820
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 6821
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v8

    .line 6818
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 6819
    .local v2, "e":Landroid/os/RemoteException;
    return v8
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1810
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1811
    :catch_0
    move-exception v0

    .line 1813
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final showDialog(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 4206
    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4243
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 4244
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 4246
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 4247
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_2

    .line 4248
    new-instance v0, Landroid/app/Activity$ManagedDialog;

    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-direct {v0, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    .line 4249
    .restart local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 4250
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 4251
    const/4 v1, 0x0

    return v1

    .line 4253
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4256
    :cond_2
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 4257
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 4258
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 4259
    const/4 v1, 0x1

    return v1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 3

    .prologue
    .line 7418
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7416
    :goto_0
    return-void

    .line 7419
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public showSnap(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3196
    invoke-direct {p0, p1, p2}, Landroid/app/Activity;->initSnappable(II)Z

    .line 3197
    invoke-direct {p0}, Landroid/app/Activity;->calculateSnap()V

    .line 3198
    invoke-virtual {p0}, Landroid/app/Activity;->isValidSnap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3199
    invoke-direct {p0}, Landroid/app/Activity;->setupTimeout()V

    .line 3195
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 6715
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 6729
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 5037
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 5036
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5064
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 5065
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 5064
    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 5063
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4988
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4987
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    .line 5015
    if-eqz p2, :cond_0

    .line 5016
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5014
    :goto_0
    return-void

    .line 5020
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v6, -0x1

    .line 4863
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4864
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4867
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4868
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    .line 4867
    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v10

    .line 4870
    .local v10, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v10, :cond_1

    .line 4871
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4872
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    .line 4873
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 4871
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4875
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4862
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v6, -0x1

    .line 4831
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4832
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4835
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4836
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    .line 4835
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    .line 4838
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    .line 4839
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4840
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    .line 4841
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 4839
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4843
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4830
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4824
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4823
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 4697
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4696
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4735
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 4737
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4738
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    .line 4737
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4740
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_0

    .line 4741
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4742
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    .line 4743
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    .line 4741
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4745
    :cond_0
    if-ltz p2, :cond_1

    .line 4753
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4756
    :cond_1
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4734
    .end local v8    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :goto_0
    return-void

    .line 4759
    :cond_2
    if-eqz p3, :cond_3

    .line 4760
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4764
    :cond_3
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5364
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v9

    .line 5365
    .local v9, "referrer":Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 5366
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5369
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 5370
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 5369
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 5372
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_1

    .line 5373
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5374
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5375
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move-object v2, p1

    move v3, p3

    .line 5373
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5377
    :cond_1
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5363
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4796
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4797
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4799
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4800
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 4799
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    .line 4802
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    .line 4803
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4804
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    .line 4803
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4806
    :cond_1
    if-ltz p2, :cond_2

    .line 4814
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4817
    :cond_2
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4795
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4788
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4787
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 5279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5278
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5304
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 5305
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 5304
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 5307
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_0

    .line 5308
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5309
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5310
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p3

    .line 5308
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5312
    :cond_0
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5302
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 5330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5329
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5355
    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5354
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 5138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5173
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 5174
    const/4 v13, 0x1

    .line 5176
    .local v13, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v12

    .line 5177
    .local v12, "referrer":Landroid/net/Uri;
    if-eqz v12, :cond_0

    .line 5178
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5180
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 5181
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 5182
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5183
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 5184
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5185
    iget-object v6, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v8, 0x1

    .line 5186
    const/4 v9, 0x0

    move-object v3, p1

    move/from16 v7, p2

    move-object/from16 v10, p3

    .line 5182
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 5191
    .end local v12    # "referrer":Landroid/net/Uri;
    :goto_0
    invoke-static {v13, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 5193
    if-ltz p2, :cond_1

    .line 5201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 5203
    :cond_1
    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 5206
    .end local v13    # "result":I
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 5207
    const-string/jumbo v1, "startActivityIfNeeded can only be called from a top-level activity"

    .line 5206
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5187
    .restart local v13    # "result":I
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 7
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 5085
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 5084
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 5083
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 5111
    if-eqz p6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 5112
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 5110
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 5117
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4897
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 4896
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4895
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4928
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p0

    move-object/from16 v7, p7

    .line 4929
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V

    .line 4927
    :goto_0
    return-void

    .line 4931
    :cond_0
    if-eqz p7, :cond_1

    .line 4932
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 4937
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 5397
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 5396
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 5395
    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object/from16 v7, p8

    .line 5410
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V

    .line 5409
    return-void
.end method

.method public startLockTask()V
    .locals 3

    .prologue
    .line 7382
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->startLockTaskMode(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7380
    :goto_0
    return-void

    .line 7383
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2308
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2309
    :try_start_0
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2307
    return-void

    .line 2308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5248
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5250
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 5251
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 5252
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5253
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5252
    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5254
    :catch_0
    move-exception v0

    .line 5257
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 5260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 5261
    const-string/jumbo v2, "startNextMatchingActivity can only be called from a top-level activity"

    .line 5260
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .prologue
    .line 6985
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    .line 6984
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 4420
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 4421
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 4419
    return-void
.end method

.method public stopLockTask()V
    .locals 2

    .prologue
    .line 7406
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7404
    :goto_0
    return-void

    .line 7407
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2332
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2333
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2334
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2335
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 2336
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 2337
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_0
    monitor-exit v4

    .line 2331
    return-void

    .line 2334
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2332
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 4448
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 4447
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 4436
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 4437
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 4435
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4051
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 4050
    return-void
.end method

.method public updateFocusApp()V
    .locals 4

    .prologue
    .line 3134
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 3136
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->notifyFloatActivityTouched(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3133
    :goto_0
    return-void

    .line 3137
    :catch_0
    move-exception v0

    .line 3138
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Activity"

    const-string/jumbo v3, "Cannot notify activity touched"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
