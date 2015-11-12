.class public final enum Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;
.super Ljava/lang/Enum;
.source "TrackerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailureReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

.field public static final enum INVALID_EVENT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

.field public static final enum MISSING_HASH:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

.field public static final enum MISSING_PEER_ID:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

.field public static final enum MISSING_PORT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

.field public static final enum NOT_IMPLEMENTED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

.field public static final enum UNKNOWN_TORRENT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 270
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    const-string v1, "UNKNOWN_TORRENT"

    const-string v2, "The requested torrent does not exist on this tracker"

    invoke-direct {v0, v1, v4, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->UNKNOWN_TORRENT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    .line 271
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    const-string v1, "MISSING_HASH"

    const-string v2, "Missing info hash"

    invoke-direct {v0, v1, v5, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->MISSING_HASH:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    .line 272
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    const-string v1, "MISSING_PEER_ID"

    const-string v2, "Missing peer ID"

    invoke-direct {v0, v1, v6, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->MISSING_PEER_ID:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    .line 273
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    const-string v1, "MISSING_PORT"

    const-string v2, "Missing port"

    invoke-direct {v0, v1, v7, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->MISSING_PORT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    .line 274
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    const-string v1, "INVALID_EVENT"

    const-string v2, "Unexpected event for peer state"

    invoke-direct {v0, v1, v8, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->INVALID_EVENT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    .line 275
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    const-string v1, "NOT_IMPLEMENTED"

    const/4 v2, 0x5

    const-string v3, "Feature not implemented"

    invoke-direct {v0, v1, v2, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->NOT_IMPLEMENTED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    .line 269
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->UNKNOWN_TORRENT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->MISSING_HASH:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->MISSING_PEER_ID:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->MISSING_PORT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->INVALID_EVENT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->NOT_IMPLEMENTED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->$VALUES:[Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 280
    iput-object p3, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->message:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 269
    const-class v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    return-object v0
.end method

.method public static values()[Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;
    .registers 1

    .prologue
    .line 269
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->$VALUES:[Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    invoke-virtual {v0}, [Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->message:Ljava/lang/String;

    return-object v0
.end method
