.class public Lcom/android/internal/util/bluros/Blur;
.super Ljava/lang/Object;
.source "Blur.java"


# static fields
.field private static final DEFAULT_BLUR_RADIUS:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sentBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/bluros/Blur;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static apply(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    const/4 v6, 0x1

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .line 26
    .local v3, "rs":Landroid/renderscript/RenderScript;
    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v3, p1, v5, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 28
    .local v1, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 29
    .local v2, "output":Landroid/renderscript/Allocation;
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 30
    .local v4, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    int-to-float v5, p2

    invoke-virtual {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 31
    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 32
    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 33
    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 36
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    .line 37
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 38
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 39
    invoke-virtual {v4}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 40
    return-object v0
.end method
