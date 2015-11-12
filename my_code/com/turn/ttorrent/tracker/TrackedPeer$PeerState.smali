.class public final enum Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;
.super Ljava/lang/Enum;
.source "TrackedPeer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/tracker/TrackedPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PeerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

.field public static final enum COMPLETED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

.field public static final enum STARTED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

.field public static final enum STOPPED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

.field public static final enum UNKNOWN:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->UNKNOWN:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    .line 87
    new-instance v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->STARTED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    .line 88
    new-instance v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->COMPLETED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    .line 89
    new-instance v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->STOPPED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    sget-object v1, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->UNKNOWN:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->STARTED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->COMPLETED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->STOPPED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->$VALUES:[Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    return-object v0
.end method

.method public static values()[Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->$VALUES:[Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    invoke-virtual {v0}, [Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    return-object v0
.end method
