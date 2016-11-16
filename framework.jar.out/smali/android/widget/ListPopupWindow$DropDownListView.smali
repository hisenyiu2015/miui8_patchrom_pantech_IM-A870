.class Landroid/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$DropDownListView$1;
    }
.end annotation


# static fields
.field private static final CLICK_ANIM_ALPHA:I = 0x80

.field private static final CLICK_ANIM_DURATION:J = 0x96L

.field private static final DRAWABLE_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClickAnimation:Landroid/animation/Animator;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static synthetic -set0(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1520
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$1;

    const-string/jumbo v1, "alpha"

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView$1;-><init>(Ljava/lang/String;)V

    .line 1519
    sput-object v0, Landroid/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    .line 1511
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 1582
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1583
    iput-boolean p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 1585
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1581
    return-void
.end method

.method private clearPressedItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1675
    iput-boolean v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1676
    invoke-virtual {p0, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1677
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->updateSelectorState()V

    .line 1679
    iget v1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1680
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1681
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1684
    :cond_0
    iget-object v1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 1685
    iget-object v1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1686
    iput-object v4, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1674
    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/16 v3, 0xff

    .line 1655
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1657
    .local v4, "id":J
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    const/16 v2, 0x80

    .line 1656
    filled-new-array {v3, v2, v3}, [I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1658
    .local v6, "anim":Landroid/animation/Animator;
    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1659
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1660
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListPopupWindow$DropDownListView$2;-><init>(Landroid/widget/ListPopupWindow$DropDownListView;Landroid/view/View;IJ)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1666
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 1668
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1671
    :cond_0
    iput-object v6, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1654
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1691
    iput-boolean v5, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1694
    invoke-virtual {p0, p3, p4}, Landroid/widget/ListPopupWindow$DropDownListView;->drawableHotspotChanged(FF)V

    .line 1695
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1696
    invoke-virtual {p0, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1700
    :cond_0
    iget-boolean v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDataChanged:Z

    if-eqz v3, :cond_1

    .line 1701
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->layoutChildren()V

    .line 1706
    :cond_1
    iget v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mMotionPosition:I

    iget v4, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1707
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1708
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1710
    :cond_2
    iput p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mMotionPosition:I

    .line 1713
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, p3, v3

    .line 1714
    .local v0, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, p4, v3

    .line 1715
    .local v1, "childY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1716
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1717
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1721
    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelectedPositionInt(I)V

    .line 1722
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/ListPopupWindow$DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    .line 1726
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->refreshDrawableState()V

    .line 1728
    iget-object v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    .line 1729
    iget-object v3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 1730
    iput-object v6, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1690
    :cond_4
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1790
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1770
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1780
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1760
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 1748
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 1750
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1751
    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1754
    :cond_0
    return-object v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1595
    const/4 v4, 0x1

    .line 1596
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 1598
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1599
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 1632
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 1633
    :cond_1
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->clearPressedItem()V

    .line 1637
    :cond_2
    if-eqz v4, :cond_7

    .line 1638
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v8, :cond_3

    .line 1639
    new-instance v8, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 1641
    :cond_3
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 1642
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1647
    :cond_4
    :goto_1
    return v4

    .line 1601
    :pswitch_0
    const/4 v4, 0x0

    .line 1602
    goto :goto_0

    .line 1604
    :pswitch_1
    const/4 v4, 0x0

    .line 1607
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1608
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    .line 1609
    const/4 v4, 0x0

    .line 1610
    goto :goto_0

    .line 1613
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 1614
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 1615
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/widget/ListPopupWindow$DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 1616
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 1617
    const/4 v3, 0x1

    .line 1618
    goto :goto_0

    .line 1621
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1622
    .local v2, "child":Landroid/view/View;
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-direct {p0, v2, v5, v8, v9}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 1623
    const/4 v4, 0x1

    .line 1625
    if-ne v0, v11, :cond_0

    .line 1626
    invoke-direct {p0, v2, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    .line 1643
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v8, :cond_4

    .line 1644
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    goto :goto_1

    .line 1599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1736
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
