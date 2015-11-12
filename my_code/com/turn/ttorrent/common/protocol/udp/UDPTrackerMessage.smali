.class public abstract Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;
.super Lcom/turn/ttorrent/common/protocol/TrackerMessage;
.source "UDPTrackerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$1;,
        Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;,
        Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerRequestMessage;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "type"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
    .param p2, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
    .param p2, "x1"    # Ljava/nio/ByteBuffer;
    .param p3, "x2"    # Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$1;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public abstract getActionId()I
.end method

.method public abstract getTransactionId()I
.end method
