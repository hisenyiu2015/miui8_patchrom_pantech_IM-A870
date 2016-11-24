.class public final enum Lbluros/app/ThemeComponent;
.super Ljava/lang/Enum;
.source "ThemeComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbluros/app/ThemeComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbluros/app/ThemeComponent;

.field public static final enum BOOT_ANIM:Lbluros/app/ThemeComponent;

.field public static final enum FONT:Lbluros/app/ThemeComponent;

.field public static final enum ICON:Lbluros/app/ThemeComponent;

.field public static final enum LOCKSCREEN:Lbluros/app/ThemeComponent;

.field public static final enum OVERLAY:Lbluros/app/ThemeComponent;

.field public static final enum SOUND:Lbluros/app/ThemeComponent;

.field public static final enum UNKNOWN:Lbluros/app/ThemeComponent;

.field public static final enum WALLPAPER:Lbluros/app/ThemeComponent;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    new-instance v0, Lbluros/app/ThemeComponent;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lbluros/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbluros/app/ThemeComponent;->UNKNOWN:Lbluros/app/ThemeComponent;

    .line 25
    new-instance v0, Lbluros/app/ThemeComponent;

    const-string/jumbo v1, "OVERLAY"

    invoke-direct {v0, v1, v5, v4}, Lbluros/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbluros/app/ThemeComponent;->OVERLAY:Lbluros/app/ThemeComponent;

    .line 26
    new-instance v0, Lbluros/app/ThemeComponent;

    const-string/jumbo v1, "BOOT_ANIM"

    invoke-direct {v0, v1, v6, v5}, Lbluros/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbluros/app/ThemeComponent;->BOOT_ANIM:Lbluros/app/ThemeComponent;

    .line 27
    new-instance v0, Lbluros/app/ThemeComponent;

    const-string/jumbo v1, "WALLPAPER"

    invoke-direct {v0, v1, v7, v6}, Lbluros/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbluros/app/ThemeComponent;->WALLPAPER:Lbluros/app/ThemeComponent;

    .line 28
    new-instance v0, Lbluros/app/ThemeComponent;

    const-string/jumbo v1, "LOCKSCREEN"

    invoke-direct {v0, v1, v8, v7}, Lbluros/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbluros/app/ThemeComponent;->LOCKSCREEN:Lbluros/app/ThemeComponent;

    .line 29
    new-instance v0, Lbluros/app/ThemeComponent;

    const-string/jumbo v1, "FONT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lbluros/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbluros/app/ThemeComponent;->FONT:Lbluros/app/ThemeComponent;

    .line 30
    new-instance v0, Lbluros/app/ThemeComponent;

    const-string/jumbo v1, "ICON"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lbluros/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbluros/app/ThemeComponent;->ICON:Lbluros/app/ThemeComponent;

    .line 31
    new-instance v0, Lbluros/app/ThemeComponent;

    const-string/jumbo v1, "SOUND"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lbluros/app/ThemeComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbluros/app/ThemeComponent;->SOUND:Lbluros/app/ThemeComponent;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Lbluros/app/ThemeComponent;

    sget-object v1, Lbluros/app/ThemeComponent;->UNKNOWN:Lbluros/app/ThemeComponent;

    aput-object v1, v0, v4

    sget-object v1, Lbluros/app/ThemeComponent;->OVERLAY:Lbluros/app/ThemeComponent;

    aput-object v1, v0, v5

    sget-object v1, Lbluros/app/ThemeComponent;->BOOT_ANIM:Lbluros/app/ThemeComponent;

    aput-object v1, v0, v6

    sget-object v1, Lbluros/app/ThemeComponent;->WALLPAPER:Lbluros/app/ThemeComponent;

    aput-object v1, v0, v7

    sget-object v1, Lbluros/app/ThemeComponent;->LOCKSCREEN:Lbluros/app/ThemeComponent;

    aput-object v1, v0, v8

    sget-object v1, Lbluros/app/ThemeComponent;->FONT:Lbluros/app/ThemeComponent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lbluros/app/ThemeComponent;->ICON:Lbluros/app/ThemeComponent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lbluros/app/ThemeComponent;->SOUND:Lbluros/app/ThemeComponent;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lbluros/app/ThemeComponent;->$VALUES:[Lbluros/app/ThemeComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lbluros/app/ThemeComponent;->id:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbluros/app/ThemeComponent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lbluros/app/ThemeComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbluros/app/ThemeComponent;

    return-object v0
.end method

.method public static values()[Lbluros/app/ThemeComponent;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lbluros/app/ThemeComponent;->$VALUES:[Lbluros/app/ThemeComponent;

    return-object v0
.end method
