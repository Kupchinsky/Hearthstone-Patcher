.class final enum Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;
.super Ljava/lang/Enum;
.source "UDPTrackerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/announce/UDPTrackerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

.field public static final enum ANNOUNCE_REQUEST:Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

.field public static final enum CONNECT_REQUEST:Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    const-string v1, "CONNECT_REQUEST"

    invoke-direct {v0, v1, v2}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;->CONNECT_REQUEST:Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    .line 108
    new-instance v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    const-string v1, "ANNOUNCE_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    sget-object v1, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;->CONNECT_REQUEST:Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;->$VALUES:[Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    return-object v0
.end method

.method public static values()[Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;
    .registers 1

    .prologue
    .line 106
    sget-object v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;->$VALUES:[Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    invoke-virtual {v0}, [Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    return-object v0
.end method
