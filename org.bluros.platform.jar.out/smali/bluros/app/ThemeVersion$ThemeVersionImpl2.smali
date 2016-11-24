.class Lbluros/app/ThemeVersion$ThemeVersionImpl2;
.super Ljava/lang/Object;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/app/ThemeVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeVersionImpl2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/app/ThemeVersion$ThemeVersionImpl2$1;
    }
.end annotation


# static fields
.field private static cVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbluros/app/ThemeVersion$ComponentVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lbluros/app/ThemeVersion$ThemeVersionImpl2$1;

    invoke-direct {v0}, Lbluros/app/ThemeVersion$ThemeVersionImpl2$1;-><init>()V

    sput-object v0, Lbluros/app/ThemeVersion$ThemeVersionImpl2;->cVersions:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceComponentVersion(Lbluros/app/ThemeComponent;)Lbluros/app/ThemeVersion$ComponentVersion;
    .locals 3
    .param p0, "component"    # Lbluros/app/ThemeComponent;

    .prologue
    .line 148
    sget-object v2, Lbluros/app/ThemeVersion$ThemeVersionImpl2;->cVersions:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "compVersion$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbluros/app/ThemeVersion$ComponentVersion;

    .line 149
    .local v0, "compVersion":Lbluros/app/ThemeVersion$ComponentVersion;
    iget-object v2, v0, Lbluros/app/ThemeVersion$ComponentVersion;->component:Lbluros/app/ThemeComponent;

    invoke-virtual {v2, p0}, Lbluros/app/ThemeComponent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    new-instance v2, Lbluros/app/ThemeVersion$ComponentVersion;

    invoke-direct {v2, v0}, Lbluros/app/ThemeVersion$ComponentVersion;-><init>(Lbluros/app/ThemeVersion$ComponentVersion;)V

    return-object v2

    .line 153
    .end local v0    # "compVersion":Lbluros/app/ThemeVersion$ComponentVersion;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getDeviceComponentVersions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbluros/app/ThemeVersion$ComponentVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbluros/app/ThemeVersion$ComponentVersion;>;"
    sget-object v1, Lbluros/app/ThemeVersion$ThemeVersionImpl2;->cVersions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    return-object v0
.end method
