.class public Landroid/gesture/GestureOverlayView;
.super Landroid/widget/FrameLayout;
.source "GestureOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/GestureOverlayView$FadeOutRunnable;,
        Landroid/gesture/GestureOverlayView$OnGesturingListener;,
        Landroid/gesture/GestureOverlayView$OnGestureListener;,
        Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;
    }
.end annotation


# static fields
.field private static final DITHER_FLAG:Z = true

.field private static final FADE_ANIMATION_RATE:I = 0x10

.field private static final GESTURE_RENDERING_ANTIALIAS:Z = true

.field public static final GESTURE_STROKE_TYPE_MULTIPLE:I = 0x1

.field public static final GESTURE_STROKE_TYPE_SINGLE:I = 0x0

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private mCertainGestureColor:I

.field protected mClearPerformedGesture:Z

.field private mCurrentColor:I

.field private mCurrentGesture:Landroid/gesture/Gesture;

.field private mCurveEndX:F

.field private mCurveEndY:F

.field private mFadeDuration:J

.field private mFadeEnabled:Z

.field private mFadeOffset:J

.field private mFadingAlpha:F

.field private mFadingHasStarted:Z

.field private final mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

.field private mFadingStart:J

.field private final mGesturePaint:Landroid/graphics/Paint;

.field private mGestureStrokeAngleThreshold:F

.field private mGestureStrokeLengthThreshold:F

.field private mGestureStrokeSquarenessTreshold:F

.field private mGestureStrokeType:I

.field private mGestureStrokeWidth:F

.field private mGestureVisible:Z

.field private mHandleGestureActions:Z

.field private mInterceptEvents:Z

.field private final mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final mInvalidRect:Landroid/graphics/Rect;

.field private mInvalidateExtraBorder:I

.field private mIsFadingOut:Z

.field private mIsGesturing:Z

.field private mIsListeningForGestures:Z

.field private final mOnGestureListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureOverlayView$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGesturePerformedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGesturingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureOverlayView$OnGesturingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private final mPath:Landroid/graphics/Path;

.field private mPreviousWasGesturing:Z

.field private mResetGesture:Z

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalLength:F

.field private mUncertainGestureColor:I

.field private mX:F

.field private mY:F


# direct methods
.method static synthetic -get0(Landroid/gesture/GestureOverlayView;)J
    .locals 2

    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    return-wide v0
.end method

.method static synthetic -get1(Landroid/gesture/GestureOverlayView;)F
    .locals 1

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    return v0
.end method

.method static synthetic -get2(Landroid/gesture/GestureOverlayView;)J
    .locals 2

    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    return-wide v0
.end method

.method static synthetic -get3(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object v0
.end method

.method static synthetic -get4(Landroid/gesture/GestureOverlayView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    return v0
.end method

.method static synthetic -get5(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic -set0(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;
    .locals 0

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object p1
.end method

.method static synthetic -set1(Landroid/gesture/GestureOverlayView;F)F
    .locals 0

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    return p1
.end method

.method static synthetic -set2(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    return p1
.end method

.method static synthetic -set3(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    return p1
.end method

.method static synthetic -set4(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    return p1
.end method

.method static synthetic -set5(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/gesture/GestureOverlayView;)V
    .locals 0

    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->fireOnGesturePerformed()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/gesture/GestureOverlayView;I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 69
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 70
    const-wide/16 v0, 0x1a4

    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 73
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 76
    const/16 v0, -0x100

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 77
    const v0, 0x48ffff00    # 524280.0f

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 78
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 79
    const/16 v0, 0xa

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 81
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 82
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 83
    const v0, 0x3e8ccccd    # 0.275f

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 84
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 86
    iput v2, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 90
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 92
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mClearPerformedGesture:Z

    .line 101
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 102
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 103
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 124
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 125
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 127
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 126
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 129
    new-instance v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$FadeOutRunnable;)V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 133
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const v0, 0x116001b

    invoke-direct {p0, p1, p2, v0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 69
    const-wide/16 v2, 0x96

    iput-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 70
    const-wide/16 v2, 0x1a4

    iput-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 73
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 76
    const/16 v1, -0x100

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 77
    const v1, 0x48ffff00    # 524280.0f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 78
    const/high16 v1, 0x41400000    # 12.0f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 79
    iput v6, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 81
    iput v5, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 82
    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 83
    const v1, 0x3e8ccccd    # 0.275f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 84
    const/high16 v1, 0x42200000    # 40.0f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 86
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 89
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 90
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 92
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mClearPerformedGesture:Z

    .line 101
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 102
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 103
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 124
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 125
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 127
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 126
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 129
    new-instance v1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$FadeOutRunnable;)V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 149
    sget-object v1, Lcom/android/internal/R$styleable;->GestureOverlayView:[I

    .line 148
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 151
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 153
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 155
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 154
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 157
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 156
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 158
    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    long-to-int v1, v2

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 159
    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    long-to-int v1, v2

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 161
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 160
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 164
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 163
    const/4 v2, 0x7

    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 167
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 166
    const/16 v2, 0x9

    .line 165
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 170
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 169
    const/16 v2, 0x8

    .line 168
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 172
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 171
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 174
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 173
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 175
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    .line 145
    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 731
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 732
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 733
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 734
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 729
    return-void
.end method

.method private clear(ZZZ)V
    .locals 5
    .param p1, "animated"    # Z
    .param p2, "fireActionPerformed"    # Z
    .param p3, "immediate"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 422
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 423
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 424
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 425
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iput-boolean p2, v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    .line 426
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iput-boolean v1, v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    .line 428
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 429
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 430
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 431
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 432
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    .line 434
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v0, v2, v3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    :goto_0
    return-void

    .line 436
    :cond_0
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 437
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 438
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 440
    if-eqz p3, :cond_1

    .line 441
    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 442
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 443
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0

    .line 444
    :cond_1
    if-eqz p2, :cond_2

    .line 445
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v0, v2, v3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 446
    :cond_2
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    if-ne v0, v2, :cond_3

    .line 447
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iput-boolean v2, v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    .line 448
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v0, v2, v3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 450
    :cond_3
    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 451
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 452
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0
.end method

.method private fireOnGesturePerformed()V
    .locals 5

    .prologue
    .line 741
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 742
    .local v0, "actionListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 743
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 744
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-interface {v3, p0, v4}, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;->onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V

    .line 743
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 740
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/gesture/GestureOverlayView;->setWillNotDraw(Z)V

    .line 185
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 186
    .local v0, "gesturePaint":Landroid/graphics/Paint;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 190
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 191
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 194
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    .line 195
    const/16 v1, 0xff

    invoke-direct {p0, v1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 182
    return-void
.end method

.method private processEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 554
    :cond_0
    return v3

    .line 527
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchDown(Landroid/view/MotionEvent;)V

    .line 528
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 529
    return v2

    .line 531
    :pswitch_1
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v1, :cond_0

    .line 532
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;

    move-result-object v0

    .line 533
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 534
    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->invalidate(Landroid/graphics/Rect;)V

    .line 536
    :cond_1
    return v2

    .line 540
    .end local v0    # "rect":Landroid/graphics/Rect;
    :pswitch_2
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v1, :cond_0

    .line 541
    invoke-direct {p0, p1, v3}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 542
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 543
    return v2

    .line 547
    :pswitch_3
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v1, :cond_0

    .line 548
    invoke-direct {p0, p1, v2}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 549
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 550
    return v2

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setCurrentColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 385
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    .line 386
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    if-eqz v0, :cond_0

    .line 387
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 391
    :goto_0
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 384
    return-void

    .line 389
    :cond_0
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    goto :goto_0
.end method

.method private setPaintAlpha(I)V
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    .line 411
    shr-int/lit8 v2, p1, 0x7

    add-int/2addr p1, v2

    .line 412
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    ushr-int/lit8 v0, v2, 0x18

    .line 413
    .local v0, "baseAlpha":I
    mul-int v2, v0, p1

    shr-int/lit8 v1, v2, 0x8

    .line 414
    .local v1, "useAlpha":I
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    iget v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v4, v1, 0x18

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    return-void
.end method

.method private touchDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 558
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 561
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 563
    .local v5, "y":F
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 564
    iput v5, p0, Landroid/gesture/GestureOverlayView;->mY:F

    .line 566
    const/4 v6, 0x0

    iput v6, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    .line 567
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 569
    iget v6, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    if-eqz v6, :cond_5

    .line 570
    :cond_0
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-direct {p0, v6}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 571
    :cond_1
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 572
    iput-object v8, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 573
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 579
    :cond_2
    :goto_0
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    if-eqz v6, :cond_7

    .line 580
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    .line 588
    :cond_3
    :goto_1
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-nez v6, :cond_4

    .line 589
    new-instance v6, Landroid/gesture/Gesture;

    invoke-direct {v6}, Landroid/gesture/Gesture;-><init>()V

    iput-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 592
    :cond_4
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v7, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct {v7, v4, v5, v8, v9}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 595
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 596
    .local v0, "border":I
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    float-to-int v7, v4

    sub-int/2addr v7, v0

    float-to-int v8, v5

    sub-int/2addr v8, v0

    float-to-int v9, v4

    add-int/2addr v9, v0

    float-to-int v10, v5

    add-int/2addr v10, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 598
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    .line 599
    iput v5, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 602
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 603
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 604
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_9

    .line 605
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v6, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 574
    .end local v0    # "border":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_5
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v6}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 575
    :cond_6
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-direct {p0, v6}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    goto :goto_0

    .line 581
    :cond_7
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mClearPerformedGesture:Z

    if-nez v6, :cond_3

    .line 582
    :cond_8
    const/16 v6, 0xff

    invoke-direct {p0, v6}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 583
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 584
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 585
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v6}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 557
    .restart local v0    # "border":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_9
    return-void
.end method

.method private touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 610
    const/4 v7, 0x0

    .line 612
    .local v7, "areaToRefresh":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 613
    .local v20, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    .line 615
    .local v21, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mX:F

    move/from16 v18, v0

    .line 616
    .local v18, "previousX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mY:F

    move/from16 v19, v0

    .line 618
    .local v19, "previousY":F
    sub-float v22, v20, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 619
    .local v13, "dx":F
    sub-float v22, v21, v19

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 621
    .local v14, "dy":F
    const/high16 v22, 0x40400000    # 3.0f

    cmpl-float v22, v13, v22

    if-gez v22, :cond_0

    const/high16 v22, 0x40400000    # 3.0f

    cmpl-float v22, v14, v22

    if-ltz v22, :cond_6

    .line 622
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 625
    .local v7, "areaToRefresh":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v8, v0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 626
    .local v8, "border":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v22, v22, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v8

    .line 627
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v24, v24, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v25, v25, v8

    .line 626
    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 629
    add-float v22, v20, v18

    const/high16 v23, 0x40000000    # 2.0f

    div-float v10, v22, v23

    move-object/from16 v0, p0

    iput v10, v0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    .line 630
    .local v10, "cX":F
    add-float v22, v21, v19

    const/high16 v23, 0x40000000    # 2.0f

    div-float v11, v22, v23

    move-object/from16 v0, p0

    iput v11, v0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 632
    .local v11, "cY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 635
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v22, v22, v8

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v8

    .line 636
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v24, v24, v8

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v25, v25, v8

    .line 635
    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 639
    float-to-int v0, v10

    move/from16 v22, v0

    sub-int v22, v22, v8

    float-to-int v0, v11

    move/from16 v23, v0

    sub-int v23, v23, v8

    .line 640
    float-to-int v0, v10

    move/from16 v24, v0

    add-int v24, v24, v8

    float-to-int v0, v11

    move/from16 v25, v0

    add-int v25, v25, v8

    .line 639
    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 642
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/gesture/GestureOverlayView;->mX:F

    .line 643
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/gesture/GestureOverlayView;->mY:F

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/gesture/GesturePoint;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v21

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 677
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 678
    .local v16, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 679
    .local v12, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v12, :cond_6

    .line 680
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/gesture/GestureOverlayView$OnGestureListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 679
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 648
    .end local v12    # "count":I
    .end local v15    # "i":I
    .end local v16    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    move/from16 v22, v0

    float-to-double v0, v13

    move-wide/from16 v24, v0

    float-to-double v0, v14

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    .line 650
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_1

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;

    move-result-object v9

    .line 654
    .local v9, "box":Landroid/gesture/OrientedBoundingBox;
    iget v0, v9, Landroid/gesture/OrientedBoundingBox;->orientation:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 655
    .local v6, "angle":F
    const/high16 v22, 0x42b40000    # 90.0f

    cmpl-float v22, v6, v22

    if-lez v22, :cond_3

    .line 656
    const/high16 v22, 0x43340000    # 180.0f

    sub-float v6, v22, v6

    .line 659
    :cond_3
    iget v0, v9, Landroid/gesture/OrientedBoundingBox;->squareness:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-gtz v22, :cond_4

    .line 660
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 661
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    move/from16 v22, v0

    cmpg-float v22, v6, v22

    if-gez v22, :cond_1

    .line 664
    :cond_4
    :goto_1
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 665
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 668
    .local v17, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 669
    .restart local v12    # "count":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    if-ge v15, v12, :cond_1

    .line 670
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingStarted(Landroid/gesture/GestureOverlayView;)V

    .line 669
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 662
    .end local v12    # "count":I
    .end local v15    # "i":I
    .end local v17    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    move/from16 v22, v0

    cmpl-float v22, v6, v22

    if-lez v22, :cond_1

    goto :goto_1

    .line 684
    .end local v6    # "angle":F
    .end local v7    # "areaToRefresh":Landroid/graphics/Rect;
    .end local v8    # "border":I
    .end local v9    # "box":Landroid/gesture/OrientedBoundingBox;
    .end local v10    # "cX":F
    .end local v11    # "cY":F
    :cond_6
    return-object v7
.end method

.method private touchUp(Landroid/view/MotionEvent;Z)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "cancel"    # Z

    .prologue
    const/4 v5, 0x0

    .line 688
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 691
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v4, :cond_6

    .line 693
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    new-instance v6, Landroid/gesture/GestureStroke;

    iget-object v7, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 695
    if-nez p2, :cond_5

    .line 697
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 698
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 699
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 700
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v4, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    :cond_0
    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mClearPerformedGesture:Z

    if-eqz v4, :cond_4

    .line 704
    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    :goto_1
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    :goto_2
    invoke-direct {p0, v4, v6, v5}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    .line 718
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_1
    :goto_3
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 719
    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 720
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 722
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 723
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 724
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_7

    .line 725
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    invoke-interface {v4, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_2
    move v4, v5

    .line 704
    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_2

    .line 706
    :cond_4
    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    if-eqz v4, :cond_1

    .line 707
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 708
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iget-wide v6, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v4, v6, v7}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 711
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_5
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 715
    :cond_6
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 687
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    :cond_7
    return-void
.end method


# virtual methods
.method public addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGestureListener;

    .prologue
    .line 338
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    .prologue
    .line 350
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 349
    :cond_0
    return-void
.end method

.method public addOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGesturingListener;

    .prologue
    .line 369
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    return-void
.end method

.method public cancelClearAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 459
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 460
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 461
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 462
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 457
    return-void
.end method

.method public cancelGesture()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 467
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 470
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    new-instance v3, Landroid/gesture/GestureStroke;

    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 475
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    .line 474
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 477
    .local v9, "event":Landroid/view/MotionEvent;
    iget-object v11, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 478
    .local v11, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 479
    .local v8, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 480
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v2, p0, v9}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 479
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 485
    invoke-virtual {p0, v7}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 486
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 487
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 488
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 490
    iget-object v12, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 491
    .local v12, "otherListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 492
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_1

    .line 493
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    invoke-interface {v2, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    .line 492
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 466
    :cond_1
    return-void
.end method

.method public clear(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 418
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    .line 417
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 505
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v1, :cond_2

    .line 507
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v1}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 506
    if-eqz v1, :cond_2

    .line 508
    :cond_0
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 510
    :goto_0
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->processEvent(Landroid/view/MotionEvent;)Z

    .line 512
    if-eqz v0, :cond_1

    .line 513
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 516
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 518
    const/4 v1, 0x1

    return v1

    .line 506
    :cond_2
    const/4 v0, 0x0

    .local v0, "cancelDispatch":Z
    goto :goto_0

    .line 521
    .end local v0    # "cancelDispatch":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 405
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 402
    :cond_0
    return-void
.end method

.method public getCurrentStroke()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFadeOffset()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    return-wide v0
.end method

.method public getGesture()Landroid/gesture/Gesture;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object v0
.end method

.method public getGestureColor()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    return v0
.end method

.method public getGesturePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getGesturePath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getGesturePath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 317
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 318
    return-object p1
.end method

.method public getGestureStrokeAngleThreshold()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    return v0
.end method

.method public getGestureStrokeLengthThreshold()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    return v0
.end method

.method public getGestureStrokeSquarenessTreshold()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    return v0
.end method

.method public getGestureStrokeType()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    return v0
.end method

.method public getGestureStrokeWidth()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    return v0
.end method

.method public getUncertainGestureColor()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    return v0
.end method

.method public isEventsInterceptionEnabled()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    return v0
.end method

.method public isFadeEnabled()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    return v0
.end method

.method public isGestureVisible()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    return v0
.end method

.method public isGesturing()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 499
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 500
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    .line 498
    return-void
.end method

.method public removeAllOnGestureListeners()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 345
    return-void
.end method

.method public removeAllOnGesturePerformedListeners()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 363
    return-void
.end method

.method public removeAllOnGesturingListeners()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    return-void
.end method

.method public removeOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGestureListener;

    .prologue
    .line 342
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public removeOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 359
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 356
    :cond_0
    return-void
.end method

.method public removeOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGesturingListener;

    .prologue
    .line 373
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    return-void
.end method

.method public setEventsInterceptionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 274
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .param p1, "fadeEnabled"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 282
    return-void
.end method

.method public setFadeOffset(J)V
    .locals 1
    .param p1, "fadeOffset"    # J

    .prologue
    .line 334
    iput-wide p1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 333
    return-void
.end method

.method public setGesture(Landroid/gesture/Gesture;)V
    .locals 9
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 291
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v2, :cond_0

    .line 292
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 295
    :cond_0
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-direct {p0, v2}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 296
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 298
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v2}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    move-result-object v1

    .line 299
    .local v1, "path":Landroid/graphics/Path;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 300
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 303
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 304
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    .line 305
    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 304
    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 307
    iput-boolean v8, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 309
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 290
    return-void
.end method

.method public setGestureColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 211
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 210
    return-void
.end method

.method public setGestureStrokeAngleThreshold(F)V
    .locals 0
    .param p1, "gestureStrokeAngleThreshold"    # F

    .prologue
    .line 267
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 266
    return-void
.end method

.method public setGestureStrokeLengthThreshold(F)V
    .locals 0
    .param p1, "gestureStrokeLengthThreshold"    # F

    .prologue
    .line 251
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 250
    return-void
.end method

.method public setGestureStrokeSquarenessTreshold(F)V
    .locals 0
    .param p1, "gestureStrokeSquarenessTreshold"    # F

    .prologue
    .line 259
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 258
    return-void
.end method

.method public setGestureStrokeType(I)V
    .locals 0
    .param p1, "gestureStrokeType"    # I

    .prologue
    .line 243
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 242
    return-void
.end method

.method public setGestureStrokeWidth(F)V
    .locals 2
    .param p1, "gestureStrokeWidth"    # F

    .prologue
    .line 233
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 234
    float-to-int v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 235
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    return-void
.end method

.method public setGestureVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 325
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 207
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 206
    return-void
.end method

.method public setUncertainGestureColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 215
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 214
    return-void
.end method
