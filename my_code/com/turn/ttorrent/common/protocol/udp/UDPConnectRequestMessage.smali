.class public Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;
.super Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerRequestMessage;
.source "UDPConnectRequestMessage.java"

# interfaces
.implements Lcom/turn/ttorrent/common/protocol/TrackerMessage$ConnectionRequestMessage;


# static fields
.field private static final UDP_CONNECT_REQUEST_MAGIC:J = 0x41727101980L

.field private static final UDP_CONNECT_REQUEST_MESSAGE_SIZE:I = 0x10


# instance fields
.field private final actionId:I

.field private final connectionId:J

.field private final transactionId:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "transactionId"    # I

    .prologue
    .line 40
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-direct {p0, v0, p1}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerRequestMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    .line 35
    const-wide v0, 0x41727101980L

    iput-wide v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;->connectionId:J

    .line 36
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v0

    iput v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;->actionId:I

    .line 41
    iput p2, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;->transactionId:I

    .line 42
    return-void
.end method

.method public static craft(I)Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;
    .registers 5
    .param p0, "transactionId"    # I

    .prologue
    .line 81
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    .local v0, "data":Ljava/nio/ByteBuffer;
    const-wide v2, 0x41727101980L

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 84
    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 86
    new-instance v1, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;

    invoke-direct {v1, v0, p0}, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;-><init>(Ljava/nio/ByteBuffer;I)V

    return-object v1
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;
    .registers 5
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_10

    .line 61
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Invalid connect request message size!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    const-wide v2, 0x41727101980L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 66
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Invalid connection ID in connection request!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->CONNECT_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    if-eq v0, v1, :cond_39

    .line 71
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Invalid action code for connection request!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_39
    new-instance v0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;-><init>(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method


# virtual methods
.method public getActionId()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;->actionId:I

    return v0
.end method

.method public getConnectionId()J
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v0, 0x41727101980L

    return-wide v0
.end method

.method public getTransactionId()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;->transactionId:I

    return v0
.end method
