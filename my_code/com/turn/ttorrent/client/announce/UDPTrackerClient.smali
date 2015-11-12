.class public Lcom/turn/ttorrent/client/announce/UDPTrackerClient;
.super Lcom/turn/ttorrent/client/announce/TrackerClient;
.source "UDPTrackerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/client/announce/UDPTrackerClient$1;,
        Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;
    }
.end annotation


# static fields
.field private static final UDP_BASE_TIMEOUT_SECONDS:I = 0xf

.field private static final UDP_MAX_TRIES:I = 0x8

.field private static final UDP_MAX_TRIES_ON_STOPPED:I = 0x1

.field private static final UDP_PACKET_LENGTH:I = 0x200

.field protected static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private connectionExpiration:Ljava/util/Date;

.field private connectionId:J

.field private final random:Ljava/util/Random;

.field private socket:Ljava/net/DatagramSocket;

.field private stop:Z

.field private transactionId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-class v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;Ljava/net/URI;)V
    .registers 8
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .param p2, "peer"    # Lcom/turn/ttorrent/common/Peer;
    .param p3, "tracker"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/turn/ttorrent/client/announce/TrackerClient;-><init>(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;Ljava/net/URI;)V

    .line 124
    invoke-virtual {p2}, Lcom/turn/ttorrent/common/Peer;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-nez v0, :cond_16

    .line 125
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0

    .line 128
    :cond_16
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->address:Ljava/net/InetSocketAddress;

    .line 132
    iput-object v3, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->socket:Ljava/net/DatagramSocket;

    .line 133
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->random:Ljava/util/Random;

    .line 134
    iput-object v3, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->connectionExpiration:Ljava/util/Date;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->stop:Z

    .line 136
    return-void
.end method

.method private buildAnnounceRequest(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;)Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;
    .registers 21
    .param p1, "event"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->connectionId:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->transactionId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/SharedTorrent;->getInfoHash()[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v2}, Lcom/turn/ttorrent/common/Peer;->getPeerId()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/SharedTorrent;->getDownloaded()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/SharedTorrent;->getUploaded()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/SharedTorrent;->getLeft()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v2}, Lcom/turn/ttorrent/common/Peer;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v2}, Lcom/turn/ttorrent/common/Peer;->getPort()I

    move-result v18

    move-object/from16 v14, p1

    invoke-static/range {v3 .. v18}, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->craft(JI[B[BJJJLcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Ljava/net/InetAddress;III)Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;

    move-result-object v2

    return-object v2
.end method

.method private handleTrackerConnectResponse(Lcom/turn/ttorrent/common/protocol/TrackerMessage;)V
    .registers 7
    .param p1, "message"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/client/announce/AnnounceException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->validateTrackerResponse(Lcom/turn/ttorrent/common/protocol/TrackerMessage;)V

    .line 318
    instance-of v2, p1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ConnectionResponseMessage;

    if-nez v2, :cond_2e

    .line 319
    new-instance v2, Lcom/turn/ttorrent/client/announce/AnnounceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tracker message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage;->getType()Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    move-object v0, p1

    .line 323
    check-cast v0, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;

    .line 326
    .local v0, "connectResponse":Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;
    invoke-virtual {v0}, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectResponseMessage;->getConnectionId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->connectionId:J

    .line 327
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 328
    .local v1, "now":Ljava/util/Calendar;
    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 329
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->connectionExpiration:Ljava/util/Date;

    .line 330
    return-void
.end method

.method private recv(I)Ljava/nio/ByteBuffer;
    .registers 10
    .param p1, "attempt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 359
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    mul-int/lit8 v2, v3, 0xf

    .line 360
    .local v2, "timeout":I
    sget-object v3, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->logger:Lorg/slf4j/Logger;

    const-string v4, "Setting receive timeout to {}s for attempt {}..."

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    iget-object v3, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->socket:Ljava/net/DatagramSocket;

    mul-int/lit16 v4, v2, 0x3e8

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 365
    :try_start_20
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v3, 0x200

    new-array v3, v3, [B

    const/16 v4, 0x200

    invoke-direct {v0, v3, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 368
    .local v0, "p":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 369
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
    :try_end_3c
    .catch Ljava/net/SocketTimeoutException; {:try_start_20 .. :try_end_3c} :catch_3e

    move-result-object v3

    return-object v3

    .line 370
    .end local v0    # "p":Ljava/net/DatagramPacket;
    :catch_3e
    move-exception v1

    .line 371
    .local v1, "ste":Ljava/net/SocketTimeoutException;
    throw v1
.end method

.method private send(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->socket:Ljava/net/DatagramSocket;

    new-instance v2, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iget-object v5, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->address:Ljava/net/InetSocketAddress;

    invoke-direct {v2, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    .line 348
    :goto_14
    return-void

    .line 344
    :catch_15
    move-exception v0

    .line 345
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->logger:Lorg/slf4j/Logger;

    const-string v2, "Error sending datagram packet to tracker at {}: {}."

    iget-object v3, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14
.end method

.method private validateTrackerResponse(Lcom/turn/ttorrent/common/protocol/TrackerMessage;)V
    .registers 4
    .param p1, "message"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/client/announce/AnnounceException;
        }
    .end annotation

    .prologue
    .line 298
    instance-of v0, p1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;

    if-eqz v0, :cond_10

    .line 299
    new-instance v0, Lcom/turn/ttorrent/client/announce/AnnounceException;

    check-cast p1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;

    .end local p1    # "message":Lcom/turn/ttorrent/common/protocol/TrackerMessage;
    invoke-interface {p1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    .restart local p1    # "message":Lcom/turn/ttorrent/common/protocol/TrackerMessage;
    :cond_10
    instance-of v0, p1, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;

    if-eqz v0, :cond_26

    check-cast p1, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;

    .end local p1    # "message":Lcom/turn/ttorrent/common/protocol/TrackerMessage;
    invoke-virtual {p1}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage;->getTransactionId()I

    move-result v0

    iget v1, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->transactionId:I

    if-eq v0, v1, :cond_26

    .line 304
    new-instance v0, Lcom/turn/ttorrent/client/announce/AnnounceException;

    const-string v1, "Invalid transaction ID!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_26
    return-void
.end method


# virtual methods
.method public announce(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Z)V
    .registers 15
    .param p1, "event"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .param p2, "inhibitEvents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/client/announce/AnnounceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 141
    sget-object v6, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->logger:Lorg/slf4j/Logger;

    const-string v7, "Announcing{} to tracker with {}U/{}D/{}L bytes..."

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->formatAnnounceEvent(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v9, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v9}, Lcom/turn/ttorrent/client/SharedTorrent;->getUploaded()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v10}, Lcom/turn/ttorrent/client/SharedTorrent;->getDownloaded()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v10}, Lcom/turn/ttorrent/client/SharedTorrent;->getLeft()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    sget-object v4, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;->CONNECT_REQUEST:Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    .line 150
    .local v4, "state":Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;
    sget-object v6, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STOPPED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-virtual {v6, p1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 154
    .local v2, "maxAttempts":I
    :goto_42
    const/4 v0, -0x1

    .line 157
    .local v0, "attempts":I
    :try_start_43
    new-instance v6, Ljava/net/DatagramSocket;

    invoke-direct {v6}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v6, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->socket:Ljava/net/DatagramSocket;

    .line 158
    iget-object v6, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->socket:Ljava/net/DatagramSocket;

    iget-object v7, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v6, v7}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 160
    :cond_51
    :goto_51
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v2, :cond_11c

    .line 162
    iget-object v6, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    iput v6, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->transactionId:I

    .line 167
    iget-object v6, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->connectionExpiration:Ljava/util/Date;

    if-eqz v6, :cond_70

    .line 168
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iget-object v7, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->connectionExpiration:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 169
    sget-object v4, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;

    .line 176
    :cond_70
    :goto_70
    sget-object v6, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$1;->$SwitchMap$com$turn$ttorrent$client$announce$UDPTrackerClient$State:[I

    invoke-virtual {v4}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_140

    .line 219
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid announce state!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_83} :catch_83
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_43 .. :try_end_83} :catch_ba

    .line 227
    :catch_83
    move-exception v1

    .line 228
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v6, Lcom/turn/ttorrent/client/announce/AnnounceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while announcing"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->formatAnnounceEvent(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to tracker: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 150
    .end local v0    # "attempts":I
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "maxAttempts":I
    :cond_af
    const/16 v2, 0x8

    goto :goto_42

    .line 171
    .restart local v0    # "attempts":I
    .restart local v2    # "maxAttempts":I
    :cond_b2
    :try_start_b2
    sget-object v6, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->logger:Lorg/slf4j/Logger;

    const-string v7, "Announce connection ID expired, reconnecting with tracker..."

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b9} :catch_83
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_b2 .. :try_end_b9} :catch_ba

    goto :goto_70

    .line 231
    :catch_ba
    move-exception v3

    .line 232
    .local v3, "mve":Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
    new-instance v6, Lcom/turn/ttorrent/client/announce/AnnounceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tracker message violates expected protocol ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 178
    .end local v3    # "mve":Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
    :pswitch_de
    :try_start_de
    iget v6, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->transactionId:I

    invoke-static {v6}, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;->craft(I)Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/turn/ttorrent/common/protocol/udp/UDPConnectRequestMessage;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->send(Ljava/nio/ByteBuffer;)V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_eb} :catch_83
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_de .. :try_end_eb} :catch_ba

    .line 182
    :try_start_eb
    invoke-direct {p0, v0}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->recv(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->handleTrackerConnectResponse(Lcom/turn/ttorrent/common/protocol/TrackerMessage;)V
    :try_end_f6
    .catch Ljava/net/SocketTimeoutException; {:try_start_eb .. :try_end_f6} :catch_f9
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_f6} :catch_83
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_eb .. :try_end_f6} :catch_ba

    .line 185
    const/4 v0, -0x1

    goto/16 :goto_51

    .line 186
    :catch_f9
    move-exception v5

    .line 191
    .local v5, "ste":Ljava/net/SocketTimeoutException;
    :try_start_fa
    iget-boolean v6, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->stop:Z

    if-eqz v6, :cond_51

    .line 214
    .end local v5    # "ste":Ljava/net/SocketTimeoutException;
    :goto_fe
    return-void

    .line 198
    :pswitch_ff
    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->buildAnnounceRequest(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;)Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->send(Ljava/nio/ByteBuffer;)V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_10a} :catch_83
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_fa .. :try_end_10a} :catch_ba

    .line 201
    :try_start_10a
    invoke-direct {p0, v0}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->recv(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->handleTrackerAnnounceResponse(Lcom/turn/ttorrent/common/protocol/TrackerMessage;Z)V
    :try_end_115
    .catch Ljava/net/SocketTimeoutException; {:try_start_10a .. :try_end_115} :catch_116
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_115} :catch_83
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_10a .. :try_end_115} :catch_ba

    goto :goto_fe

    .line 208
    :catch_116
    move-exception v5

    .line 213
    .restart local v5    # "ste":Ljava/net/SocketTimeoutException;
    :try_start_117
    iget-boolean v6, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->stop:Z

    if-eqz v6, :cond_51

    goto :goto_fe

    .line 225
    .end local v5    # "ste":Ljava/net/SocketTimeoutException;
    :cond_11c
    new-instance v6, Lcom/turn/ttorrent/client/announce/AnnounceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout while announcing"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->formatAnnounceEvent(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to tracker!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_13f} :catch_83
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_117 .. :try_end_13f} :catch_ba

    .line 176
    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_de
        :pswitch_ff
    .end packed-switch
.end method

.method protected close()V
    .registers 2

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->stop:Z

    .line 263
    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 264
    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 266
    :cond_14
    return-void
.end method

.method protected handleTrackerAnnounceResponse(Lcom/turn/ttorrent/common/protocol/TrackerMessage;Z)V
    .registers 3
    .param p1, "message"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage;
    .param p2, "inhibitEvents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/client/announce/AnnounceException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;->validateTrackerResponse(Lcom/turn/ttorrent/common/protocol/TrackerMessage;)V

    .line 252
    invoke-super {p0, p1, p2}, Lcom/turn/ttorrent/client/announce/TrackerClient;->handleTrackerAnnounceResponse(Lcom/turn/ttorrent/common/protocol/TrackerMessage;Z)V

    .line 253
    return-void
.end method
