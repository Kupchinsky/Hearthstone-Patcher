.class public Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;
.super Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;
.source "UDPAnnounceResponseMessage.java"

# interfaces
.implements Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;


# static fields
.field private static final UDP_ANNOUNCE_RESPONSE_MIN_MESSAGE_SIZE:I = 0x14


# instance fields
.field private final actionId:I

.field private final complete:I

.field private final incomplete:I

.field private final interval:I

.field private final peers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionId:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;IIIILjava/util/List;)V
    .registers 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "transactionId"    # I
    .param p3, "interval"    # I
    .param p4, "complete"    # I
    .param p5, "incomplete"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "IIII",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p6, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-direct {p0, v0, p1}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    .line 39
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v0

    iput v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->actionId:I

    .line 49
    iput p2, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->transactionId:I

    .line 50
    iput p3, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->interval:I

    .line 51
    iput p4, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->complete:I

    .line 52
    iput p5, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->incomplete:I

    .line 53
    iput-object p6, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->peers:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static craft(IIIILjava/util/List;)Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;
    .registers 15
    .param p0, "transactionId"    # I
    .param p1, "interval"    # I
    .param p2, "complete"    # I
    .param p3, "incomplete"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;)",
            "Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;"
        }
    .end annotation

    .prologue
    .line 130
    .local p4, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x14

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 132
    .local v1, "data":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 142
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/turn/ttorrent/common/Peer;

    .line 143
    .local v9, "peer":Lcom/turn/ttorrent/common/Peer;
    invoke-virtual {v9}, Lcom/turn/ttorrent/common/Peer;->getRawIp()[B

    move-result-object v8

    .line 144
    .local v8, "ip":[B
    if-eqz v8, :cond_25

    array-length v0, v8

    const/4 v2, 0x4

    if-ne v0, v2, :cond_25

    .line 148
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v9}, Lcom/turn/ttorrent/common/Peer;->getPort()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_25

    .line 152
    .end local v8    # "ip":[B
    .end local v9    # "peer":Lcom/turn/ttorrent/common/Peer;
    :cond_47
    new-instance v0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;-><init>(Ljava/nio/ByteBuffer;IIIILjava/util/List;)V

    return-object v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;
    .registers 13
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_12

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    rem-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_1a

    .line 90
    :cond_12
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Invalid announce response message size!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    if-eq v0, v1, :cond_2e

    .line 95
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Invalid action code for announce response!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 100
    .local v2, "transactionId":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 101
    .local v3, "interval":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 102
    .local v5, "incomplete":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 104
    .local v4, "complete":I
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 105
    .local v6, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    if-ge v7, v0, :cond_7f

    .line 107
    const/4 v0, 0x4

    :try_start_4d
    new-array v9, v0, [B

    .line 108
    .local v9, "ipBytes":[B
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 109
    invoke-static {v9}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    .line 110
    .local v8, "ip":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int v10, v0, v1

    .line 113
    .local v10, "port":I
    new-instance v0, Lcom/turn/ttorrent/common/Peer;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v8, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/net/InetSocketAddress;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/net/UnknownHostException; {:try_start_4d .. :try_end_73} :catch_76

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 114
    .end local v8    # "ip":Ljava/net/InetAddress;
    .end local v9    # "ipBytes":[B
    .end local v10    # "port":I
    :catch_76
    move-exception v11

    .line 115
    .local v11, "uhe":Ljava/net/UnknownHostException;
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Invalid IP address in announce request!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    .end local v11    # "uhe":Ljava/net/UnknownHostException;
    :cond_7f
    new-instance v0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;-><init>(Ljava/nio/ByteBuffer;IIIILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getActionId()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->actionId:I

    return v0
.end method

.method public getComplete()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->complete:I

    return v0
.end method

.method public getIncomplete()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->incomplete:I

    return v0
.end method

.method public getInterval()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->interval:I

    return v0
.end method

.method public getPeers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->peers:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionId()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceResponseMessage;->transactionId:I

    return v0
.end method
