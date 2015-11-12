.class public final enum Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
.super Ljava/lang/Enum;
.source "TrackerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/TrackerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

.field public static final enum ANNOUNCE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

.field public static final enum ANNOUNCE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

.field public static final enum CONNECT_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

.field public static final enum CONNECT_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

.field public static final enum ERROR:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

.field public static final enum SCRAPE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

.field public static final enum SCRAPE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

.field public static final enum UNKNOWN:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->UNKNOWN:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    .line 43
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    const-string v1, "CONNECT_REQUEST"

    invoke-direct {v0, v1, v4, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    .line 44
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    const-string v1, "CONNECT_RESPONSE"

    invoke-direct {v0, v1, v5, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    .line 45
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    const-string v1, "ANNOUNCE_REQUEST"

    invoke-direct {v0, v1, v6, v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    .line 46
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    const-string v1, "ANNOUNCE_RESPONSE"

    invoke-direct {v0, v1, v7, v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    .line 47
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    const-string v1, "SCRAPE_REQUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->SCRAPE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    .line 48
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    const-string v1, "SCRAPE_RESPONSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v5}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->SCRAPE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    .line 49
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    const-string v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v6}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ERROR:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->UNKNOWN:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->SCRAPE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->SCRAPE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ERROR:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->$VALUES:[Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->id:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    return-object v0
.end method

.method public static values()[Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->$VALUES:[Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v0}, [Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->id:I

    return v0
.end method
