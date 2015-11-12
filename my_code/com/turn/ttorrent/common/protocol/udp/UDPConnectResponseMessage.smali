.class public Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;
.super Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;
.source "UDPConnectResponseMessage.java"

# interfaces
.implements Lcom/turn/ttorrent/common/protocol/TrackerMessage$ConnectionResponseMessage;


# static fields
.field private static final UDP_CONNECT_RESPONSE_MESSAGE_SIZE:I = 0x10


# instance fields
.field private final actionId:I

.field private final connectionId:J

.field private final transactionId:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;IJ)V
    .registers 6
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "transactionId"    # I
    .param p3, "connectionId"    # J

    .prologue
    .line 40
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-direct {p0, v0, p1}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    .line 34
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v0

    iput v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;->actionId:I

    .line 41
    iput p2, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;->transactionId:I

    .line 42
    iput-wide p3, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;->connectionId:J

    .line 43
    return-void
.end method

.method public static craft(IJ)Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;
    .registers 6
    .param p0, "transactionId"    # I
    .param p1, "connectionId"    # J

    .prologue
    .line 79
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    .local v0, "data":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 84
    new-instance v1, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;-><init>(Ljava/nio/ByteBuffer;IJ)V

    return-object v1
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;
    .registers 5
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_10

    .line 62
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Invalid connect response message size!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 67
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Invalid action code for connection response!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_24
    new-instance v0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;-><init>(Ljava/nio/ByteBuffer;IJ)V

    return-object v0
.end method


# virtual methods
.method public getActionId()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;->actionId:I

    return v0
.end method

.method public getConnectionId()J
    .registers 3

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;->connectionId:J

    return-wide v0
.end method

.method public getTransactionId()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;->transactionId:I

    return v0
.end method
