.class public Lcom/android/server/nameless/BootDexoptDialog;
.super Landroid/app/Dialog;
.source "BootDexoptDialog.java"


# static fields
.field private static final PROP_DEXOPT_NO_ICON:Ljava/lang/String; = "persist.sys.dexopt.no_icon"


# instance fields
.field mBootDexoptIcon:Landroid/widget/ImageView;

.field mBootDexoptMsg:Landroid/widget/TextView;

.field mBootDexoptMsgDetail:Landroid/widget/TextView;

.field mBootDexoptProgress:Landroid/widget/ProgressBar;

.field final mContext:Landroid/content/Context;

.field final mPackageManager:Landroid/content/pm/PackageManager;

.field mShouldShowIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    iput-object p1, p0, Lcom/android/server/nameless/BootDexoptDialog;->mContext:Landroid/content/Context;

    .line 57
    iget-object v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    invoke-static {}, Landroid/app/ActivityManager;->isForcedHighEndGfx()Z

    move-result v3

    .line 61
    :goto_0
    const-string/jumbo v7, "persist.sys.dexopt.no_icon"

    if-eqz v3, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mShouldShowIcon:Z

    .line 64
    iget-object v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 66
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090039

    .line 65
    invoke-virtual {v1, v4, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "bootMsgLayout":Landroid/view/View;
    const v4, 0x1020318

    .line 67
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptMsg:Landroid/widget/TextView;

    .line 70
    const v4, 0x1020319

    .line 69
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptMsgDetail:Landroid/widget/TextView;

    .line 72
    const v4, 0x1020317

    .line 71
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptIcon:Landroid/widget/ImageView;

    .line 74
    const v4, 0x102031a

    .line 73
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptProgress:Landroid/widget/ProgressBar;

    .line 76
    invoke-virtual {p0, v6}, Lcom/android/server/nameless/BootDexoptDialog;->requestWindowFeature(I)Z

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/server/nameless/BootDexoptDialog;->setContentView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/nameless/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7e5

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/nameless/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x100

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/nameless/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 82
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 83
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 84
    const/4 v4, 0x5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 85
    invoke-virtual {p0}, Lcom/android/server/nameless/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    invoke-virtual {p0, v5}, Lcom/android/server/nameless/BootDexoptDialog;->setCancelable(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/server/nameless/BootDexoptDialog;->show()V

    .line 89
    iget-object v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 54
    return-void

    .line 59
    .end local v0    # "bootMsgLayout":Landroid/view/View;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/4 v3, 0x1

    .local v3, "useFanceEffects":Z
    goto/16 :goto_0

    .end local v3    # "useFanceEffects":Z
    :cond_1
    move v4, v6

    .line 61
    goto/16 :goto_1

    :cond_2
    move v4, v6

    goto/16 :goto_2
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public setProgress(Landroid/content/pm/ApplicationInfo;II)V
    .locals 9
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "current"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "isApk":Z
    const-string/jumbo v2, ""

    .line 97
    .local v2, "msg":Ljava/lang/String;
    if-nez p1, :cond_4

    .line 98
    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_2

    .line 99
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 100
    const v4, 0x104040d

    .line 99
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 125
    iget-boolean v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mShouldShowIcon:Z

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/nameless/BootDexoptDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptMsgDetail:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptMsgDetail:Landroid/widget/TextView;

    const-string/jumbo v4, "(%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_1
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void

    .line 101
    :cond_2
    const v3, -0x7fffffff

    if-ne p2, v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 103
    const v4, 0x104040a

    .line 102
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 104
    :cond_3
    const v3, -0x7ffffffd

    if-ne p2, v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 106
    const v4, 0x104040e

    .line 105
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 108
    :cond_4
    const v3, -0x7ffffffe

    if-ne p2, v3, :cond_5

    .line 109
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 110
    .local v1, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    .line 111
    aput-object v1, v4, v7

    const v5, 0x104040c

    .line 110
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 113
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_5
    const/4 v0, 0x1

    .line 114
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x104040b

    .line 114
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 118
    add-int/lit8 v3, p2, 0x1

    if-gt v3, p3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptProgress:Landroid/widget/ProgressBar;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto/16 :goto_0

    .line 131
    :cond_6
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v3, p0, Lcom/android/server/nameless/BootDexoptDialog;->mBootDexoptMsgDetail:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
