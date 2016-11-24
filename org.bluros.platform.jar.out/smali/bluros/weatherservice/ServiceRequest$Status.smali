.class final enum Lbluros/weatherservice/ServiceRequest$Status;
.super Ljava/lang/Enum;
.source "ServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/weatherservice/ServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbluros/weatherservice/ServiceRequest$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbluros/weatherservice/ServiceRequest$Status;

.field public static final enum CANCELLED:Lbluros/weatherservice/ServiceRequest$Status;

.field public static final enum COMPLETED:Lbluros/weatherservice/ServiceRequest$Status;

.field public static final enum FAILED:Lbluros/weatherservice/ServiceRequest$Status;

.field public static final enum IN_PROGRESS:Lbluros/weatherservice/ServiceRequest$Status;

.field public static final enum REJECTED:Lbluros/weatherservice/ServiceRequest$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lbluros/weatherservice/ServiceRequest$Status;

    const-string/jumbo v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v2}, Lbluros/weatherservice/ServiceRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbluros/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lbluros/weatherservice/ServiceRequest$Status;

    new-instance v0, Lbluros/weatherservice/ServiceRequest$Status;

    const-string/jumbo v1, "COMPLETED"

    invoke-direct {v0, v1, v3}, Lbluros/weatherservice/ServiceRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbluros/weatherservice/ServiceRequest$Status;->COMPLETED:Lbluros/weatherservice/ServiceRequest$Status;

    new-instance v0, Lbluros/weatherservice/ServiceRequest$Status;

    const-string/jumbo v1, "CANCELLED"

    invoke-direct {v0, v1, v4}, Lbluros/weatherservice/ServiceRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbluros/weatherservice/ServiceRequest$Status;->CANCELLED:Lbluros/weatherservice/ServiceRequest$Status;

    new-instance v0, Lbluros/weatherservice/ServiceRequest$Status;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lbluros/weatherservice/ServiceRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbluros/weatherservice/ServiceRequest$Status;->FAILED:Lbluros/weatherservice/ServiceRequest$Status;

    new-instance v0, Lbluros/weatherservice/ServiceRequest$Status;

    const-string/jumbo v1, "REJECTED"

    invoke-direct {v0, v1, v6}, Lbluros/weatherservice/ServiceRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbluros/weatherservice/ServiceRequest$Status;->REJECTED:Lbluros/weatherservice/ServiceRequest$Status;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lbluros/weatherservice/ServiceRequest$Status;

    sget-object v1, Lbluros/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lbluros/weatherservice/ServiceRequest$Status;

    aput-object v1, v0, v2

    sget-object v1, Lbluros/weatherservice/ServiceRequest$Status;->COMPLETED:Lbluros/weatherservice/ServiceRequest$Status;

    aput-object v1, v0, v3

    sget-object v1, Lbluros/weatherservice/ServiceRequest$Status;->CANCELLED:Lbluros/weatherservice/ServiceRequest$Status;

    aput-object v1, v0, v4

    sget-object v1, Lbluros/weatherservice/ServiceRequest$Status;->FAILED:Lbluros/weatherservice/ServiceRequest$Status;

    aput-object v1, v0, v5

    sget-object v1, Lbluros/weatherservice/ServiceRequest$Status;->REJECTED:Lbluros/weatherservice/ServiceRequest$Status;

    aput-object v1, v0, v6

    sput-object v0, Lbluros/weatherservice/ServiceRequest$Status;->$VALUES:[Lbluros/weatherservice/ServiceRequest$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbluros/weatherservice/ServiceRequest$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lbluros/weatherservice/ServiceRequest$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbluros/weatherservice/ServiceRequest$Status;

    return-object v0
.end method

.method public static values()[Lbluros/weatherservice/ServiceRequest$Status;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lbluros/weatherservice/ServiceRequest$Status;->$VALUES:[Lbluros/weatherservice/ServiceRequest$Status;

    return-object v0
.end method
