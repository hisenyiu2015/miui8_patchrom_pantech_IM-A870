.class public Lbluros/app/ThemeVersion$ComponentVersion;
.super Ljava/lang/Object;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/app/ThemeVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentVersion"
.end annotation


# instance fields
.field protected component:Lbluros/app/ThemeComponent;

.field protected currentVersion:I

.field protected id:I

.field protected minVersion:I

.field protected name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILbluros/app/ThemeComponent;I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "component"    # Lbluros/app/ThemeComponent;
    .param p3, "targetVersion"    # I

    .prologue
    .line 94
    invoke-virtual {p2}, Lbluros/app/ThemeComponent;->name()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lbluros/app/ThemeVersion$ComponentVersion;-><init>(ILbluros/app/ThemeComponent;Ljava/lang/String;II)V

    .line 93
    return-void
.end method

.method protected constructor <init>(ILbluros/app/ThemeComponent;Ljava/lang/String;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "component"    # Lbluros/app/ThemeComponent;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "minVersion"    # I
    .param p5, "targetVersion"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lbluros/app/ThemeVersion$ComponentVersion;->id:I

    .line 103
    iput-object p2, p0, Lbluros/app/ThemeVersion$ComponentVersion;->component:Lbluros/app/ThemeComponent;

    .line 104
    iput-object p3, p0, Lbluros/app/ThemeVersion$ComponentVersion;->name:Ljava/lang/String;

    .line 105
    iput p4, p0, Lbluros/app/ThemeVersion$ComponentVersion;->minVersion:I

    .line 106
    iput p5, p0, Lbluros/app/ThemeVersion$ComponentVersion;->currentVersion:I

    .line 101
    return-void
.end method

.method public constructor <init>(Lbluros/app/ThemeVersion$ComponentVersion;)V
    .locals 6
    .param p1, "copy"    # Lbluros/app/ThemeVersion$ComponentVersion;

    .prologue
    .line 110
    iget v1, p1, Lbluros/app/ThemeVersion$ComponentVersion;->id:I

    iget-object v2, p1, Lbluros/app/ThemeVersion$ComponentVersion;->component:Lbluros/app/ThemeComponent;

    iget-object v3, p1, Lbluros/app/ThemeVersion$ComponentVersion;->name:Ljava/lang/String;

    iget v4, p1, Lbluros/app/ThemeVersion$ComponentVersion;->minVersion:I

    iget v5, p1, Lbluros/app/ThemeVersion$ComponentVersion;->currentVersion:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbluros/app/ThemeVersion$ComponentVersion;-><init>(ILbluros/app/ThemeComponent;Ljava/lang/String;II)V

    .line 109
    return-void
.end method


# virtual methods
.method public getComponent()Lbluros/app/ThemeComponent;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lbluros/app/ThemeVersion$ComponentVersion;->component:Lbluros/app/ThemeComponent;

    return-object v0
.end method

.method public getCurrentVersion()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lbluros/app/ThemeVersion$ComponentVersion;->currentVersion:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lbluros/app/ThemeVersion$ComponentVersion;->id:I

    return v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lbluros/app/ThemeVersion$ComponentVersion;->minVersion:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lbluros/app/ThemeVersion$ComponentVersion;->name:Ljava/lang/String;

    return-object v0
.end method
