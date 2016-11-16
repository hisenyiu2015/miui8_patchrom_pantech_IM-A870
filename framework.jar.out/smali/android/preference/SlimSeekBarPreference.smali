.class public Landroid/preference/SlimSeekBarPreference;
.super Landroid/preference/Preference;
.source "SlimSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static maximum:I


# instance fields
.field private bar:Landroid/widget/SeekBar;

.field defaultValue:I

.field public interval:I

.field private mChanger:Landroid/preference/Preference$OnPreferenceChangeListener;

.field mDisablePercentageValue:Z

.field mDisableText:Z

.field mIsMilliSeconds:Z

.field mMinimum:I

.field mMultiply:I

.field mSetDefault:I

.field private monitorBox:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x64

    sput v0, Landroid/preference/SlimSeekBarPreference;->maximum:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x5

    iput v0, p0, Landroid/preference/SlimSeekBarPreference;->interval:I

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Landroid/preference/SlimSeekBarPreference;->defaultValue:I

    .line 41
    iput v1, p0, Landroid/preference/SlimSeekBarPreference;->mSetDefault:I

    .line 42
    iput v1, p0, Landroid/preference/SlimSeekBarPreference;->mMultiply:I

    .line 43
    iput v1, p0, Landroid/preference/SlimSeekBarPreference;->mMinimum:I

    .line 44
    iput-boolean v2, p0, Landroid/preference/SlimSeekBarPreference;->mDisableText:Z

    .line 45
    iput-boolean v2, p0, Landroid/preference/SlimSeekBarPreference;->mDisablePercentageValue:Z

    .line 46
    iput-boolean v2, p0, Landroid/preference/SlimSeekBarPreference;->mIsMilliSeconds:Z

    .line 50
    return-void
.end method


# virtual methods
.method public disablePercentageValue(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Landroid/preference/SlimSeekBarPreference;->mDisablePercentageValue:Z

    .line 119
    return-void
.end method

.method public disableText(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Landroid/preference/SlimSeekBarPreference;->mDisableText:Z

    .line 123
    return-void
.end method

.method public isMilliseconds(Z)V
    .locals 0
    .param p1, "millis"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Landroid/preference/SlimSeekBarPreference;->mIsMilliSeconds:Z

    .line 143
    return-void
.end method

.method public minimumValue(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 140
    iput p1, p0, Landroid/preference/SlimSeekBarPreference;->mMinimum:I

    .line 139
    return-void
.end method

.method public multiplyValue(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 136
    iput p1, p0, Landroid/preference/SlimSeekBarPreference;->mMultiply:I

    .line 135
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/preference/SlimSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    const v2, 0x10900e2

    const/4 v3, 0x0

    .line 57
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "layout":Landroid/view/View;
    const v1, 0x102003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/preference/SlimSeekBarPreference;->monitorBox:Landroid/widget/TextView;

    .line 62
    const v1, 0x102003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Landroid/preference/SlimSeekBarPreference;->bar:Landroid/widget/SeekBar;

    .line 63
    iget-object v1, p0, Landroid/preference/SlimSeekBarPreference;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    iget-object v1, p0, Landroid/preference/SlimSeekBarPreference;->bar:Landroid/widget/SeekBar;

    iget v2, p0, Landroid/preference/SlimSeekBarPreference;->defaultValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 66
    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v2, -0x1

    .line 92
    int-to-float v0, p2

    iget v1, p0, Landroid/preference/SlimSeekBarPreference;->interval:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/preference/SlimSeekBarPreference;->interval:I

    mul-int p2, v0, v1

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 95
    iget v0, p0, Landroid/preference/SlimSeekBarPreference;->mMultiply:I

    if-eq v0, v2, :cond_0

    .line 96
    iget v0, p0, Landroid/preference/SlimSeekBarPreference;->mMultiply:I

    mul-int/2addr p2, v0

    .line 99
    :cond_0
    iget v0, p0, Landroid/preference/SlimSeekBarPreference;->mMinimum:I

    if-eq v0, v2, :cond_1

    .line 100
    iget v0, p0, Landroid/preference/SlimSeekBarPreference;->mMinimum:I

    add-int/2addr p2, v0

    .line 103
    :cond_1
    iget v0, p0, Landroid/preference/SlimSeekBarPreference;->mSetDefault:I

    if-ne p2, v0, :cond_4

    .line 104
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->monitorBox:Landroid/widget/TextView;

    const v1, 0x104001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->mChanger:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->mChanger:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 90
    :cond_3
    return-void

    .line 105
    :cond_4
    iget-boolean v0, p0, Landroid/preference/SlimSeekBarPreference;->mDisableText:Z

    if-nez v0, :cond_2

    .line 106
    iget-boolean v0, p0, Landroid/preference/SlimSeekBarPreference;->mIsMilliSeconds:Z

    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->monitorBox:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_5
    iget-boolean v0, p0, Landroid/preference/SlimSeekBarPreference;->mDisablePercentageValue:Z

    if-nez v0, :cond_6

    .line 109
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->monitorBox:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_6
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->monitorBox:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 148
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 153
    return-void
.end method

.method public setDefault(I)V
    .locals 0
    .param p1, "defaultVal"    # I

    .prologue
    .line 132
    iput p1, p0, Landroid/preference/SlimSeekBarPreference;->mSetDefault:I

    .line 131
    return-void
.end method

.method public setInitValue(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/preference/SlimSeekBarPreference;->defaultValue:I

    .line 71
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->bar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->bar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SlimSeekBarPreference;->defaultValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public setInterval(I)V
    .locals 0
    .param p1, "inter"    # I

    .prologue
    .line 128
    iput p1, p0, Landroid/preference/SlimSeekBarPreference;->interval:I

    .line 127
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 85
    iput-object p1, p0, Landroid/preference/SlimSeekBarPreference;->mChanger:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 86
    invoke-super {p0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    return-void
.end method
