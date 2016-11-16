.class public Landroid/app/DialogFragment;
.super Landroid/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field private mHelper:Landroid/app/BlurDialogFragmentHelper;

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 184
    iput v0, p0, Landroid/app/DialogFragment;->mStyle:I

    .line 185
    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 186
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    .line 187
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    .line 195
    return-void
.end method

.method public static newInstance()Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Landroid/app/DialogFragment;

    invoke-direct {v0}, Landroid/app/DialogFragment;-><init>()V

    .line 181
    .local v0, "fragment":Landroid/app/DialogFragment;
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    .line 274
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    .line 284
    return-void
.end method

.method dismissInternal(Z)V
    .locals 5
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 289
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    if-eqz v1, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    iput-boolean v3, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 293
    iput-boolean v2, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 294
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 296
    iput-object v4, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 298
    :cond_1
    iput-boolean v3, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 299
    iget v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    if-ltz v1, :cond_2

    .line 300
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Landroid/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 302
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    .line 288
    :goto_0
    return-void

    .line 304
    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 305
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 306
    if-eqz p1, :cond_3

    .line 307
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 309
    :cond_3
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 566
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 567
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "DialogFragment:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mStyle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 569
    const-string/jumbo v0, " mTheme=0x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/DialogFragment;->mTheme:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mCancelable="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 571
    const-string/jumbo v0, " mShowsDialog="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 572
    const-string/jumbo v0, " mBackStackId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 573
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mDialog="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 574
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mViewDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 575
    const-string/jumbo v0, " mDismissed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 576
    const-string/jumbo v0, " mShownByMe="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 565
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 412
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 413
    invoke-super {p0, p1}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 417
    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 427
    :goto_0
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 429
    const-string/jumbo v1, "layout_inflater"

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    .line 419
    :pswitch_0
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 420
    const/16 v1, 0x18

    .line 419
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 425
    :pswitch_1
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Landroid/app/DialogFragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 432
    const-string/jumbo v1, "layout_inflater"

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShowsDialog()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Landroid/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 477
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 478
    iget-object v2, p0, Landroid/app/DialogFragment;->mHelper:Landroid/app/BlurDialogFragmentHelper;

    invoke-virtual {v2}, Landroid/app/BlurDialogFragmentHelper;->onActivityCreated()V

    .line 479
    iget-boolean v2, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_0

    .line 480
    return-void

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 484
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 485
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 486
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "DialogFragment can not be attached to a container view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :cond_1
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 490
    :cond_2
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 491
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v3, p0, Landroid/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 492
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const-string/jumbo v3, "DialogFragment"

    invoke-virtual {v2, v3, p0, p0}, Landroid/app/Dialog;->takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 493
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 494
    const-string/jumbo v3, "You can not set Dialog\'s OnCancelListener or OnDismissListener"

    .line 493
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_3
    if-eqz p1, :cond_4

    .line 497
    const-string/jumbo v2, "android:savedDialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 498
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 499
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 476
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_4
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 374
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 372
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 461
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 395
    new-instance v0, Landroid/app/BlurDialogFragmentHelper;

    invoke-direct {v0, p0}, Landroid/app/BlurDialogFragmentHelper;-><init>(Landroid/app/DialogFragment;)V

    iput-object v0, p0, Landroid/app/DialogFragment;->mHelper:Landroid/app/BlurDialogFragmentHelper;

    .line 396
    iget-object v0, p0, Landroid/app/DialogFragment;->mHelper:Landroid/app/BlurDialogFragmentHelper;

    invoke-virtual {v0}, Landroid/app/BlurDialogFragmentHelper;->onCreate()V

    .line 397
    iget v0, p0, Landroid/app/DialogFragment;->mContainerId:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 399
    if-eqz p1, :cond_0

    .line 400
    const-string/jumbo v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mStyle:I

    .line 401
    const-string/jumbo v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 402
    const-string/jumbo v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    .line 403
    const-string/jumbo v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 404
    const-string/jumbo v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    .line 393
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 397
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 458
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 553
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 554
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 559
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 560
    iput-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 552
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 384
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 465
    iget-object v0, p0, Landroid/app/DialogFragment;->mHelper:Landroid/app/BlurDialogFragmentHelper;

    invoke-virtual {v0}, Landroid/app/BlurDialogFragmentHelper;->onDismiss()V

    .line 466
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    .line 464
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 516
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 517
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 519
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 520
    const-string/jumbo v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 523
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_0
    iget v1, p0, Landroid/app/DialogFragment;->mStyle:I

    if-eqz v1, :cond_1

    .line 524
    const-string/jumbo v1, "android:style"

    iget v2, p0, Landroid/app/DialogFragment;->mStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    :cond_1
    iget v1, p0, Landroid/app/DialogFragment;->mTheme:I

    if-eqz v1, :cond_2

    .line 527
    const-string/jumbo v1, "android:theme"

    iget v2, p0, Landroid/app/DialogFragment;->mTheme:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    :cond_2
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    if-nez v1, :cond_3

    .line 530
    const-string/jumbo v1, "android:cancelable"

    iget-boolean v2, p0, Landroid/app/DialogFragment;->mCancelable:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 532
    :cond_3
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    if-nez v1, :cond_4

    .line 533
    const-string/jumbo v1, "android:showsDialog"

    iget-boolean v2, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    :cond_4
    iget v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 536
    const-string/jumbo v1, "android:backStackId"

    iget v2, p0, Landroid/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 506
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 507
    iget-object v0, p0, Landroid/app/DialogFragment;->mHelper:Landroid/app/BlurDialogFragmentHelper;

    invoke-virtual {v0}, Landroid/app/BlurDialogFragmentHelper;->onStart()V

    .line 508
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 510
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 505
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 542
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 543
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 541
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    .line 333
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 331
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0
    .param p1, "showsDialog"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 360
    return-void
.end method

.method public setStyle(II)V
    .locals 2
    .param p1, "style"    # I
    .param p2, "theme"    # I

    .prologue
    .line 213
    iput p1, p0, Landroid/app/DialogFragment;->mStyle:I

    .line 214
    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 215
    :cond_0
    const v0, 0x103049d

    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 217
    :cond_1
    if-eqz p2, :cond_2

    .line 218
    iput p2, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 212
    :cond_2
    return-void
.end method

.method public show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 260
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 262
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 263
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 264
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    .line 265
    iget v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 236
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 237
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 238
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 233
    return-void
.end method

.method public showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 244
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 245
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 246
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 247
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 242
    return-void
.end method
