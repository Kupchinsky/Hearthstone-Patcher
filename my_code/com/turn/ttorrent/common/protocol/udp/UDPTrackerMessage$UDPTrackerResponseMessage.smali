.class public abstract Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;
.super Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;
.source "UDPTrackerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UDPTrackerResponseMessage"
.end annotation


# static fields
.field private static final UDP_MIN_RESPONSE_PACKET_SIZE:I = 0x8


# direct methods
.method protected constructor <init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "type"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
    .param p2, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$1;)V

    .line 79
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;
    .registers 4
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_10

    .line 84
    new-instance v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v2, "Invalid packet size!"

    invoke-direct {v1, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 93
    .local v0, "action":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 95
    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    if-ne v0, v1, :cond_27

    .line 96
    invoke-static {p0}, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;

    move-result-object v1

    .line 100
    :goto_26
    return-object v1

    .line 97
    :cond_27
    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 98
    invoke-static {p0}, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;

    move-result-object v1

    goto :goto_26

    .line 99
    :cond_34
    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ERROR:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    if-ne v0, v1, :cond_41

    .line 100
    invoke-static {p0}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;

    move-result-object v1

    goto :goto_26

    .line 103
    :cond_41
    new-instance v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v2, "Unknown UDP tracker response message!"

    invoke-direct {v1, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
