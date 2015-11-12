.class public abstract Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerRequestMessage;
.super Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;
.source "UDPTrackerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UDPTrackerRequestMessage"
.end annotation


# static fields
.field private static final UDP_MIN_REQUEST_PACKET_SIZE:I = 0x10


# direct methods
.method protected constructor <init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "type"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
    .param p2, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$1;)V

    .line 43
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerRequestMessage;
    .registers 4
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_10

    .line 48
    new-instance v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v2, "Invalid packet size!"

    invoke-direct {v1, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 59
    .local v0, "action":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 61
    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 62
    invoke-static {p0}, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;

    move-result-object v1

    .line 64
    :goto_29
    return-object v1

    .line 63
    :cond_2a
    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    if-ne v0, v1, :cond_37

    .line 64
    invoke-static {p0}, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;

    move-result-object v1

    goto :goto_29

    .line 67
    :cond_37
    new-instance v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v2, "Unknown UDP tracker request message!"

    invoke-direct {v1, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
