.class public Lcom/android/internal/util/cm/Blur;
.super Ljava/lang/Object;
.source "Blur.java"


# static fields
.field private static final MAX_BLUR_HEIGHT:I = 0x640

.field private static final MAX_BLUR_WIDTH:I = 0x384

.field private static final stackblur_mul:[S

.field private static final stackblur_shr:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 44
    new-array v0, v1, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/util/cm/Blur;->stackblur_mul:[S

    .line 63
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/util/cm/Blur;->stackblur_shr:[B

    .line 40
    return-void

    .line 44
    nop

    :array_0
    .array-data 2
        0x200s
        0x200s
        0x1c8s
        0x200s
        0x148s
        0x1c8s
        0x14fs
        0x200s
        0x195s
        0x148s
        0x10fs
        0x1c8s
        0x184s
        0x14fs
        0x124s
        0x200s
        0x1c6s
        0x195s
        0x16cs
        0x148s
        0x12as
        0x10fs
        0x1f0s
        0x1c8s
        0x1a4s
        0x184s
        0x168s
        0x14fs
        0x138s
        0x124s
        0x111s
        0x200s
        0x1e2s
        0x1c6s
        0x1acs
        0x195s
        0x17fs
        0x16cs
        0x159s
        0x148s
        0x138s
        0x12as
        0x11cs
        0x10fs
        0x103s
        0x1f0s
        0x1dbs
        0x1c8s
        0x1b5s
        0x1a4s
        0x194s
        0x184s
        0x176s
        0x168s
        0x15bs
        0x14fs
        0x143s
        0x138s
        0x12es
        0x124s
        0x11as
        0x111s
        0x109s
        0x200s
        0x1f1s
        0x1e2s
        0x1d4s
        0x1c6s
        0x1b9s
        0x1acs
        0x1a1s
        0x195s
        0x18as
        0x17fs
        0x175s
        0x16cs
        0x162s
        0x159s
        0x151s
        0x148s
        0x140s
        0x138s
        0x131s
        0x12as
        0x123s
        0x11cs
        0x116s
        0x10fs
        0x109s
        0x103s
        0x1fbs
        0x1f0s
        0x1e5s
        0x1dbs
        0x1d1s
        0x1c8s
        0x1bes
        0x1b5s
        0x1acs
        0x1a4s
        0x19cs
        0x194s
        0x18cs
        0x184s
        0x17ds
        0x176s
        0x16fs
        0x168s
        0x162s
        0x15bs
        0x155s
        0x14fs
        0x149s
        0x143s
        0x13es
        0x138s
        0x133s
        0x12es
        0x129s
        0x124s
        0x11fs
        0x11as
        0x116s
        0x111s
        0x10ds
        0x109s
        0x105s
        0x200s
        0x1f9s
        0x1f1s
        0x1e9s
        0x1e2s
        0x1dbs
        0x1d4s
        0x1cds
        0x1c6s
        0x1bfs
        0x1b9s
        0x1b3s
        0x1acs
        0x1a6s
        0x1a1s
        0x19bs
        0x195s
        0x18fs
        0x18as
        0x185s
        0x17fs
        0x17as
        0x175s
        0x170s
        0x16cs
        0x167s
        0x162s
        0x15es
        0x159s
        0x155s
        0x151s
        0x14cs
        0x148s
        0x144s
        0x140s
        0x13cs
        0x138s
        0x135s
        0x131s
        0x12ds
        0x12as
        0x126s
        0x123s
        0x11fs
        0x11cs
        0x119s
        0x116s
        0x112s
        0x10fs
        0x10cs
        0x109s
        0x106s
        0x103s
        0x101s
        0x1fbs
        0x1f5s
        0x1f0s
        0x1ebs
        0x1e5s
        0x1e0s
        0x1dbs
        0x1d6s
        0x1d1s
        0x1ccs
        0x1c8s
        0x1c3s
        0x1bes
        0x1bas
        0x1b5s
        0x1b1s
        0x1acs
        0x1a8s
        0x1a4s
        0x1a0s
        0x19cs
        0x198s
        0x194s
        0x190s
        0x18cs
        0x188s
        0x184s
        0x181s
        0x17ds
        0x179s
        0x176s
        0x172s
        0x16fs
        0x16bs
        0x168s
        0x165s
        0x162s
        0x15es
        0x15bs
        0x158s
        0x155s
        0x152s
        0x14fs
        0x14cs
        0x149s
        0x146s
        0x143s
        0x140s
        0x13es
        0x13bs
        0x138s
        0x136s
        0x133s
        0x130s
        0x12es
        0x12bs
        0x129s
        0x126s
        0x124s
        0x121s
        0x11fs
        0x11ds
        0x11as
        0x118s
        0x116s
        0x113s
        0x111s
        0x10fs
        0x10ds
        0x10bs
        0x109s
        0x107s
        0x105s
        0x103s
    .end array-data

    .line 63
    nop

    :array_1
    .array-data 1
        0x9t
        0xbt
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    const/16 v6, 0x384

    const/4 v5, 0x1

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 94
    const/16 v4, 0x640

    invoke-static {p1, v6, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 99
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    .line 102
    .local v2, "rs":Landroid/renderscript/RenderScript;
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 101
    invoke-static {v2, p1, v4, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 103
    .local v0, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 105
    .local v1, "output":Landroid/renderscript/Allocation;
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 106
    .local v3, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 107
    int-to-float v4, p2

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 108
    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 110
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 112
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->destroy()V

    .line 113
    return-object p1

    .line 95
    .end local v0    # "input":Landroid/renderscript/Allocation;
    .end local v1    # "output":Landroid/renderscript/Allocation;
    .end local v2    # "rs":Landroid/renderscript/RenderScript;
    .end local v3    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public static blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 84
    .local v0, "useStackBlur":Z
    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1, p2}, Lcom/android/internal/util/cm/Blur;->stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 87
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/cm/Blur;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    .line 119
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ge v0, v2, :cond_0

    .line 120
    const/4 v2, 0x0

    return-object v2

    .line 122
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 123
    .local v5, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 125
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 126
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 128
    add-int/lit8 v36, v5, -0x1

    .line 129
    .local v36, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 130
    .local v21, "hm":I
    mul-int v35, v5, v9

    .line 131
    .local v35, "wh":I
    add-int v2, p1, p1

    add-int/lit8 v14, v2, 0x1

    .line 133
    .local v14, "div":I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 134
    .local v24, "r":[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 135
    .local v17, "g":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 137
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v34, v0

    .line 139
    .local v34, "vmin":[I
    add-int/lit8 v2, v14, 0x1

    shr-int/lit8 v15, v2, 0x1

    .line 140
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 141
    mul-int/lit16 v2, v15, 0x100

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 143
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    mul-int/lit16 v2, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v2, :cond_1

    .line 145
    div-int v2, v22, v15

    aput v2, v16, v22

    .line 143
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/16 v39, 0x0

    .local v39, "yi":I
    const/16 v41, 0x0

    .line 151
    .local v41, "yw":I
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v14, v4, v6

    const/4 v6, 0x3

    const/4 v7, 0x1

    aput v6, v4, v7

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 156
    .local v31, "stack":[[I
    add-int/lit8 v25, p1, 0x1

    .line 160
    .local v25, "r1":I
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_1
    move/from16 v0, v38

    if-ge v0, v9, :cond_6

    .line 162
    const/4 v13, 0x0

    .local v13, "bsum":I
    const/16 v20, 0x0

    .local v20, "gsum":I
    const/16 v29, 0x0

    .local v29, "rsum":I
    const/4 v12, 0x0

    .local v12, "boutsum":I
    const/16 v19, 0x0

    .local v19, "goutsum":I
    const/16 v28, 0x0

    .local v28, "routsum":I
    const/4 v11, 0x0

    .local v11, "binsum":I
    const/16 v18, 0x0

    .local v18, "ginsum":I
    const/16 v27, 0x0

    .line 163
    .local v27, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_3

    .line 165
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v0, v36

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v2, v2, v39

    aget v23, v3, v2

    .line 166
    .local v23, "p":I
    add-int v2, v22, p1

    aget-object v30, v31, v2

    .line 167
    .local v30, "sir":[I
    const/high16 v2, 0xff0000

    and-int v2, v2, v23

    shr-int/lit8 v2, v2, 0x10

    const/4 v4, 0x0

    aput v2, v30, v4

    .line 168
    const v2, 0xff00

    and-int v2, v2, v23

    shr-int/lit8 v2, v2, 0x8

    const/4 v4, 0x1

    aput v2, v30, v4

    .line 169
    move/from16 v0, v23

    and-int/lit16 v2, v0, 0xff

    const/4 v4, 0x2

    aput v2, v30, v4

    .line 170
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v26, v25, v2

    .line 171
    .local v26, "rbs":I
    const/4 v2, 0x0

    aget v2, v30, v2

    mul-int v2, v2, v26

    add-int v29, v29, v2

    .line 172
    const/4 v2, 0x1

    aget v2, v30, v2

    mul-int v2, v2, v26

    add-int v20, v20, v2

    .line 173
    const/4 v2, 0x2

    aget v2, v30, v2

    mul-int v2, v2, v26

    add-int/2addr v13, v2

    .line 175
    if-lez v22, :cond_2

    .line 177
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v27, v27, v2

    .line 178
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v18, v18, v2

    .line 179
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v11, v2

    .line 163
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 183
    :cond_2
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v28, v28, v2

    .line 184
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v19, v19, v2

    .line 185
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v12, v2

    goto :goto_3

    .line 190
    .end local v23    # "p":I
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_3
    move/from16 v32, p1

    .line 192
    .local v32, "stackpointer":I
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_4
    move/from16 v0, v37

    if-ge v0, v5, :cond_5

    .line 194
    aget v2, v16, v29

    aput v2, v24, v39

    .line 195
    aget v2, v16, v20

    aput v2, v17, v39

    .line 196
    aget v2, v16, v13

    aput v2, v10, v39

    .line 198
    sub-int v29, v29, v28

    .line 199
    sub-int v20, v20, v19

    .line 200
    sub-int/2addr v13, v12

    .line 202
    sub-int v2, v32, p1

    add-int v33, v2, v14

    .line 203
    .local v33, "stackstart":I
    rem-int v2, v33, v14

    aget-object v30, v31, v2

    .line 205
    .restart local v30    # "sir":[I
    const/4 v2, 0x0

    aget v2, v30, v2

    sub-int v28, v28, v2

    .line 206
    const/4 v2, 0x1

    aget v2, v30, v2

    sub-int v19, v19, v2

    .line 207
    const/4 v2, 0x2

    aget v2, v30, v2

    sub-int/2addr v12, v2

    .line 209
    if-nez v38, :cond_4

    .line 211
    add-int v2, v37, p1

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v36

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v34, v37

    .line 215
    :cond_4
    aget v2, v34, v37

    add-int v2, v2, v41

    aget v23, v3, v2

    .line 217
    .restart local v23    # "p":I
    const/high16 v2, 0xff0000

    and-int v2, v2, v23

    shr-int/lit8 v2, v2, 0x10

    const/4 v4, 0x0

    aput v2, v30, v4

    .line 218
    const v2, 0xff00

    and-int v2, v2, v23

    shr-int/lit8 v2, v2, 0x8

    const/4 v4, 0x1

    aput v2, v30, v4

    .line 219
    move/from16 v0, v23

    and-int/lit16 v2, v0, 0xff

    const/4 v4, 0x2

    aput v2, v30, v4

    .line 221
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v27, v27, v2

    .line 222
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v18, v18, v2

    .line 223
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v11, v2

    .line 225
    add-int v29, v29, v27

    .line 226
    add-int v20, v20, v18

    .line 227
    add-int/2addr v13, v11

    .line 229
    add-int/lit8 v2, v32, 0x1

    rem-int v32, v2, v14

    .line 230
    rem-int v2, v32, v14

    aget-object v30, v31, v2

    .line 232
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v28, v28, v2

    .line 233
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v19, v19, v2

    .line 234
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v12, v2

    .line 236
    const/4 v2, 0x0

    aget v2, v30, v2

    sub-int v27, v27, v2

    .line 237
    const/4 v2, 0x1

    aget v2, v30, v2

    sub-int v18, v18, v2

    .line 238
    const/4 v2, 0x2

    aget v2, v30, v2

    sub-int/2addr v11, v2

    .line 240
    add-int/lit8 v39, v39, 0x1

    .line 192
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_4

    .line 244
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_5
    add-int v41, v41, v5

    .line 160
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1

    .line 248
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v37    # "x":I
    :cond_6
    const/16 v37, 0x0

    .restart local v37    # "x":I
    :goto_5
    move/from16 v0, v37

    if-ge v0, v5, :cond_c

    .line 250
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    const/16 v20, 0x0

    .restart local v20    # "gsum":I
    const/16 v29, 0x0

    .restart local v29    # "rsum":I
    const/4 v12, 0x0

    .restart local v12    # "boutsum":I
    const/16 v19, 0x0

    .restart local v19    # "goutsum":I
    const/16 v28, 0x0

    .restart local v28    # "routsum":I
    const/4 v11, 0x0

    .restart local v11    # "binsum":I
    const/16 v18, 0x0

    .restart local v18    # "ginsum":I
    const/16 v27, 0x0

    .line 251
    .restart local v27    # "rinsum":I
    move/from16 v0, p1

    neg-int v2, v0

    mul-int v40, v2, v5

    .line 253
    .local v40, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_9

    .line 255
    const/4 v2, 0x0

    move/from16 v0, v40

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v39, v2, v37

    .line 257
    add-int v2, v22, p1

    aget-object v30, v31, v2

    .line 259
    .restart local v30    # "sir":[I
    aget v2, v24, v39

    const/4 v4, 0x0

    aput v2, v30, v4

    .line 260
    aget v2, v17, v39

    const/4 v4, 0x1

    aput v2, v30, v4

    .line 261
    aget v2, v10, v39

    const/4 v4, 0x2

    aput v2, v30, v4

    .line 263
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v26, v25, v2

    .line 265
    .restart local v26    # "rbs":I
    aget v2, v24, v39

    mul-int v2, v2, v26

    add-int v29, v29, v2

    .line 266
    aget v2, v17, v39

    mul-int v2, v2, v26

    add-int v20, v20, v2

    .line 267
    aget v2, v10, v39

    mul-int v2, v2, v26

    add-int/2addr v13, v2

    .line 269
    if-lez v22, :cond_8

    .line 271
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v27, v27, v2

    .line 272
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v18, v18, v2

    .line 273
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v11, v2

    .line 283
    :goto_7
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 285
    add-int v40, v40, v5

    .line 253
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 277
    :cond_8
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v28, v28, v2

    .line 278
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v19, v19, v2

    .line 279
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v12, v2

    goto :goto_7

    .line 290
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_9
    move/from16 v39, v37

    .line 291
    move/from16 v32, p1

    .line 293
    .restart local v32    # "stackpointer":I
    const/16 v38, 0x0

    :goto_8
    move/from16 v0, v38

    if-ge v0, v9, :cond_b

    .line 295
    aget v2, v3, v39

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    aget v4, v16, v29

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    aget v4, v16, v20

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    aget v4, v16, v13

    or-int/2addr v2, v4

    aput v2, v3, v39

    .line 297
    sub-int v29, v29, v28

    .line 298
    sub-int v20, v20, v19

    .line 299
    sub-int/2addr v13, v12

    .line 301
    sub-int v2, v32, p1

    add-int v33, v2, v14

    .line 302
    .restart local v33    # "stackstart":I
    rem-int v2, v33, v14

    aget-object v30, v31, v2

    .line 304
    .restart local v30    # "sir":[I
    const/4 v2, 0x0

    aget v2, v30, v2

    sub-int v28, v28, v2

    .line 305
    const/4 v2, 0x1

    aget v2, v30, v2

    sub-int v19, v19, v2

    .line 306
    const/4 v2, 0x2

    aget v2, v30, v2

    sub-int/2addr v12, v2

    .line 308
    if-nez v37, :cond_a

    .line 310
    add-int v2, v38, v25

    move/from16 v0, v21

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v2, v5

    aput v2, v34, v38

    .line 314
    :cond_a
    aget v2, v34, v38

    add-int v23, v37, v2

    .line 316
    .restart local v23    # "p":I
    aget v2, v24, v23

    const/4 v4, 0x0

    aput v2, v30, v4

    .line 317
    aget v2, v17, v23

    const/4 v4, 0x1

    aput v2, v30, v4

    .line 318
    aget v2, v10, v23

    const/4 v4, 0x2

    aput v2, v30, v4

    .line 320
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v27, v27, v2

    .line 321
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v18, v18, v2

    .line 322
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v11, v2

    .line 324
    add-int v29, v29, v27

    .line 325
    add-int v20, v20, v18

    .line 326
    add-int/2addr v13, v11

    .line 328
    add-int/lit8 v2, v32, 0x1

    rem-int v32, v2, v14

    .line 329
    aget-object v30, v31, v32

    .line 331
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int v28, v28, v2

    .line 332
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int v19, v19, v2

    .line 333
    const/4 v2, 0x2

    aget v2, v30, v2

    add-int/2addr v12, v2

    .line 335
    const/4 v2, 0x0

    aget v2, v30, v2

    sub-int v27, v27, v2

    .line 336
    const/4 v2, 0x1

    aget v2, v30, v2

    sub-int v18, v18, v2

    .line 337
    const/4 v2, 0x2

    aget v2, v30, v2

    sub-int/2addr v11, v2

    .line 339
    add-int v39, v39, v5

    .line 293
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_8

    .line 248
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_b
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    .line 344
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v40    # "yp":I
    :cond_c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 346
    return-object p0
.end method
