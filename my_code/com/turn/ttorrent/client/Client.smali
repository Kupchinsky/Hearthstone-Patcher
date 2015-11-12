.class public Lcom/turn/ttorrent/client/Client;
.super Ljava/util/Observable;
.source "Client.java"

# interfaces
.implements Lcom/turn/ttorrent/client/IncomingConnectionListener;
.implements Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;
.implements Lcom/turn/ttorrent/client/peer/PeerActivityListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/client/Client$ClientShutdown;,
        Lcom/turn/ttorrent/client/Client$ClientState;
    }
.end annotation


# static fields
.field private static final BITTORRENT_ID_PREFIX:Ljava/lang/String; = "-TO0042-"

.field private static final MAX_DOWNLOADERS_UNCHOKE:I = 0x4

.field private static final OPTIMISTIC_UNCHOKE_ITERATIONS:I = 0x3

.field private static final RATE_COMPUTATION_ITERATIONS:I = 0x2

.field private static final UNCHOKING_FREQUENCY:I = 0x3

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private announce:Lcom/turn/ttorrent/client/announce/Announce;

.field private connected:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/client/peer/SharingPeer;",
            ">;"
        }
    .end annotation
.end field

.field private peers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/client/peer/SharingPeer;",
            ">;"
        }
    .end annotation
.end field

.field private random:Ljava/util/Random;

.field private seed:J

.field private self:Lcom/turn/ttorrent/common/Peer;

.field private service:Lcom/turn/ttorrent/client/ConnectionHandler;

.field private state:Lcom/turn/ttorrent/client/Client$ClientState;

.field private stop:Z

.field private thread:Ljava/lang/Thread;

.field private torrent:Lcom/turn/ttorrent/client/SharedTorrent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const-class v0, Lcom/turn/ttorrent/client/Client;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Lcom/turn/ttorrent/client/SharedTorrent;)V
    .registers 9
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 123
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    .line 125
    sget-object v1, Lcom/turn/ttorrent/client/Client$ClientState;->WAITING:Lcom/turn/ttorrent/client/Client$ClientState;

    iput-object v1, p0, Lcom/turn/ttorrent/client/Client;->state:Lcom/turn/ttorrent/client/Client$ClientState;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-TO0042-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Lcom/turn/ttorrent/client/ConnectionHandler;

    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-direct {v1, v2, v0, p1}, Lcom/turn/ttorrent/client/ConnectionHandler;-><init>(Lcom/turn/ttorrent/client/SharedTorrent;Ljava/lang/String;Ljava/net/InetAddress;)V

    iput-object v1, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    .line 133
    iget-object v1, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v1, p0}, Lcom/turn/ttorrent/client/ConnectionHandler;->register(Lcom/turn/ttorrent/client/IncomingConnectionListener;)V

    .line 135
    new-instance v1, Lcom/turn/ttorrent/common/Peer;

    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/ConnectionHandler;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/ConnectionHandler;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    int-to-short v3, v3

    const-string v4, "ISO-8859-1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    iput-object v1, p0, Lcom/turn/ttorrent/client/Client;->self:Lcom/turn/ttorrent/common/Peer;

    .line 143
    new-instance v1, Lcom/turn/ttorrent/client/announce/Announce;

    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    iget-object v3, p0, Lcom/turn/ttorrent/client/Client;->self:Lcom/turn/ttorrent/common/Peer;

    invoke-direct {v1, v2, v3}, Lcom/turn/ttorrent/client/announce/Announce;-><init>(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;)V

    iput-object v1, p0, Lcom/turn/ttorrent/client/Client;->announce:Lcom/turn/ttorrent/client/announce/Announce;

    .line 144
    iget-object v1, p0, Lcom/turn/ttorrent/client/Client;->announce:Lcom/turn/ttorrent/client/announce/Announce;

    invoke-virtual {v1, p0}, Lcom/turn/ttorrent/client/announce/Announce;->register(Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;)V

    .line 146
    sget-object v1, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v2, "BitTorrent client [{}] for {} started and listening at {}:{}..."

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->self:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v5}, Lcom/turn/ttorrent/common/Peer;->getShortHexPeerId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v5}, Lcom/turn/ttorrent/client/SharedTorrent;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->self:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v5}, Lcom/turn/ttorrent/common/Peer;->getIp()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->self:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v5}, Lcom/turn/ttorrent/common/Peer;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    .line 156
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    .line 157
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lcom/turn/ttorrent/client/Client;->random:Ljava/util/Random;

    .line 158
    return-void
.end method

.method private finish()V
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->close()V

    .line 424
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 425
    sget-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->DONE:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-direct {p0, v0}, Lcom/turn/ttorrent/client/Client;->setState(Lcom/turn/ttorrent/client/Client$ClientState;)V

    .line 430
    :goto_12
    sget-object v0, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v1, "BitTorrent client signing off."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 431
    return-void

    .line 427
    :cond_1a
    sget-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->ERROR:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-direct {p0, v0}, Lcom/turn/ttorrent/client/Client;->setState(Lcom/turn/ttorrent/client/Client$ClientState;)V

    goto :goto_12
.end method

.method private getOrCreatePeer(Lcom/turn/ttorrent/common/Peer;)Lcom/turn/ttorrent/client/peer/SharingPeer;
    .registers 9
    .param p1, "search"    # Lcom/turn/ttorrent/common/Peer;

    .prologue
    .line 507
    iget-object v3, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v3

    .line 508
    :try_start_3
    sget-object v2, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "Searching for {}..."

    invoke-interface {v2, v4, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->hasPeerId()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 510
    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->getHexPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 511
    .local v0, "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    if-eqz v0, :cond_3a

    .line 512
    sget-object v2, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "Found peer (by peer ID): {}."

    invoke-interface {v2, v4, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 513
    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getHostIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->getHostIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    monitor-exit v3

    move-object v1, v0

    .line 541
    .end local v0    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    .local v1, "peer":Ljava/lang/Object;
    :goto_39
    return-object v1

    .line 519
    .end local v1    # "peer":Ljava/lang/Object;
    :cond_3a
    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->getHostIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 520
    .restart local v0    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    if-eqz v0, :cond_73

    .line 521
    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->hasPeerId()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 522
    sget-object v2, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "Recording peer ID {} for {}."

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->getHexPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->getPeerId()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/turn/ttorrent/client/peer/SharingPeer;->setPeerId(Ljava/nio/ByteBuffer;)V

    .line 525
    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->getHexPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    :cond_69
    sget-object v2, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "Found peer (by host ID): {}."

    invoke-interface {v2, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    monitor-exit v3

    move-object v1, v0

    .restart local v1    # "peer":Ljava/lang/Object;
    goto :goto_39

    .line 532
    .end local v1    # "peer":Ljava/lang/Object;
    :cond_73
    new-instance v0, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .end local v0    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->getPort()I

    move-result v4

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Peer;->getPeerId()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/turn/ttorrent/client/peer/SharingPeer;-><init>(Ljava/lang/String;ILjava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)V

    .line 534
    .restart local v0    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    sget-object v2, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "Created new peer: {}."

    invoke-interface {v2, v4, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getHostIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual {v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->hasPeerId()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 538
    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getHexPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_a5
    monitor-exit v3

    move-object v1, v0

    .restart local v1    # "peer":Ljava/lang/Object;
    goto :goto_39

    .line 542
    .end local v0    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    .end local v1    # "peer":Ljava/lang/Object;
    :catchall_a8
    move-exception v2

    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_3 .. :try_end_aa} :catchall_a8

    throw v2
.end method

.method private getPeerRateComparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/turn/ttorrent/client/peer/SharingPeer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    sget-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->SHARING:Lcom/turn/ttorrent/client/Client$ClientState;

    iget-object v1, p0, Lcom/turn/ttorrent/client/Client;->state:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-virtual {v0, v1}, Lcom/turn/ttorrent/client/Client$ClientState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 560
    new-instance v0, Lcom/turn/ttorrent/client/peer/SharingPeer$DLRateComparator;

    invoke-direct {v0}, Lcom/turn/ttorrent/client/peer/SharingPeer$DLRateComparator;-><init>()V

    .line 562
    :goto_f
    return-object v0

    .line 561
    :cond_10
    sget-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->SEEDING:Lcom/turn/ttorrent/client/Client$ClientState;

    iget-object v1, p0, Lcom/turn/ttorrent/client/Client;->state:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-virtual {v0, v1}, Lcom/turn/ttorrent/client/Client$ClientState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 562
    new-instance v0, Lcom/turn/ttorrent/client/peer/SharingPeer$ULRateComparator;

    invoke-direct {v0}, Lcom/turn/ttorrent/client/peer/SharingPeer$ULRateComparator;-><init>()V

    goto :goto_f

    .line 564
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client is neither sharing nor seeding, we shouldn\'t be comparing peers at this point."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized resetPeerRates()V
    .registers 4

    .prologue
    .line 487
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 488
    .local v1, "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-virtual {v1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getDLRate()Lcom/turn/ttorrent/client/peer/Rate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/peer/Rate;->reset()V

    .line 489
    invoke-virtual {v1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getULRate()Lcom/turn/ttorrent/client/peer/Rate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/peer/Rate;->reset()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    goto :goto_b

    .line 487
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2

    .line 491
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_29
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized seed()V
    .registers 7

    .prologue
    .line 937
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/turn/ttorrent/client/Client$ClientState;->SEEDING:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-virtual {p0}, Lcom/turn/ttorrent/client/Client;->getState()Lcom/turn/ttorrent/client/Client$ClientState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/turn/ttorrent/client/Client$ClientState;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_35

    move-result v1

    if-eqz v1, :cond_f

    .line 955
    :goto_d
    monitor-exit p0

    return-void

    .line 941
    :cond_f
    :try_start_f
    sget-object v1, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v2, "Download of {} pieces completed."

    iget-object v3, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 944
    sget-object v1, Lcom/turn/ttorrent/client/Client$ClientState;->SEEDING:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-direct {p0, v1}, Lcom/turn/ttorrent/client/Client;->setState(Lcom/turn/ttorrent/client/Client$ClientState;)V

    .line 945
    iget-wide v2, p0, Lcom/turn/ttorrent/client/Client;->seed:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_38

    .line 946
    sget-object v1, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v2, "Seeding indefinetely..."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_35

    goto :goto_d

    .line 937
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1

    .line 952
    :cond_38
    :try_start_38
    sget-object v1, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v2, "Seeding for {} seconds..."

    iget-wide v4, p0, Lcom/turn/ttorrent/client/Client;->seed:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 953
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 954
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/turn/ttorrent/client/Client$ClientShutdown;

    invoke-direct {v1, p0, v0}, Lcom/turn/ttorrent/client/Client$ClientShutdown;-><init>(Lcom/turn/ttorrent/client/Client;Ljava/util/Timer;)V

    iget-wide v2, p0, Lcom/turn/ttorrent/client/Client;->seed:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_57
    .catchall {:try_start_38 .. :try_end_57} :catchall_35

    goto :goto_d
.end method

.method private declared-synchronized setState(Lcom/turn/ttorrent/client/Client$ClientState;)V
    .registers 3
    .param p1, "state"    # Lcom/turn/ttorrent/client/Client$ClientState;

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->state:Lcom/turn/ttorrent/client/Client$ClientState;

    if-eq v0, p1, :cond_8

    .line 212
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/Client;->setChanged()V

    .line 214
    :cond_8
    iput-object p1, p0, Lcom/turn/ttorrent/client/Client;->state:Lcom/turn/ttorrent/client/Client$ClientState;

    .line 215
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->state:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/Client;->notifyObservers(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 216
    monitor-exit p0

    return-void

    .line 211
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unchokePeers(Z)V
    .registers 11
    .param p1, "optimistic"    # Z

    .prologue
    .line 603
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {p0}, Lcom/turn/ttorrent/client/Client;->getPeerRateComparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 605
    .local v0, "bound":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/turn/ttorrent/client/peer/SharingPeer;>;"
    iget-object v6, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 607
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v6

    if-nez v6, :cond_22

    .line 608
    sget-object v6, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v7, "No connected peers, skipping unchoking."

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_60

    .line 651
    :cond_20
    monitor-exit p0

    return-void

    .line 611
    :cond_22
    :try_start_22
    sget-object v6, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v7, "Running unchokePeers() on {} connected peers."

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    const/4 v2, 0x0

    .line 616
    .local v2, "downloaders":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 620
    .local v1, "choked":Ljava/util/Set;, "Ljava/util/Set<Lcom/turn/ttorrent/client/peer/SharingPeer;>;"
    invoke-virtual {v0}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3f
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 621
    .local v4, "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    const/4 v6, 0x4

    if-ge v2, v6, :cond_63

    .line 623
    invoke-virtual {v4}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isChoking()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 624
    invoke-virtual {v4}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isInterested()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 625
    add-int/lit8 v2, v2, 0x1

    .line 628
    :cond_5c
    invoke-virtual {v4}, Lcom/turn/ttorrent/client/peer/SharingPeer;->unchoke()V
    :try_end_5f
    .catchall {:try_start_22 .. :try_end_5f} :catchall_60

    goto :goto_3f

    .line 603
    .end local v0    # "bound":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/turn/ttorrent/client/peer/SharingPeer;>;"
    .end local v1    # "choked":Ljava/util/Set;, "Ljava/util/Set<Lcom/turn/ttorrent/client/peer/SharingPeer;>;"
    .end local v2    # "downloaders":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    :catchall_60
    move-exception v6

    monitor-exit p0

    throw v6

    .line 632
    .restart local v0    # "bound":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/turn/ttorrent/client/peer/SharingPeer;>;"
    .restart local v1    # "choked":Ljava/util/Set;, "Ljava/util/Set<Lcom/turn/ttorrent/client/peer/SharingPeer;>;"
    .restart local v2    # "downloaders":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    :cond_63
    :try_start_63
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 638
    .end local v4    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    :cond_67
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_20

    .line 639
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-interface {v1, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/turn/ttorrent/client/peer/SharingPeer;

    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->random:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v5, v6, v7

    .line 642
    .local v5, "randomPeer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 643
    .restart local v4    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    if-eqz p1, :cond_9e

    if-ne v4, v5, :cond_9e

    .line 644
    sget-object v6, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v7, "Optimistic unchoke of {}."

    invoke-interface {v6, v7, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_86

    .line 648
    :cond_9e
    invoke-virtual {v4}, Lcom/turn/ttorrent/client/peer/SharingPeer;->choke()V
    :try_end_a1
    .catchall {:try_start_63 .. :try_end_a1} :catchall_60

    goto :goto_86
.end method


# virtual methods
.method public download()V
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/Client;->share(I)V

    .line 230
    return-void
.end method

.method public getPeerSpec()Lcom/turn/ttorrent/common/Peer;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->self:Lcom/turn/ttorrent/common/Peer;

    return-object v0
.end method

.method public getPeers()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/turn/ttorrent/client/peer/SharingPeer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getState()Lcom/turn/ttorrent/client/Client$ClientState;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->state:Lcom/turn/ttorrent/client/Client$ClientState;

    return-object v0
.end method

.method public getTorrent()Lcom/turn/ttorrent/client/SharedTorrent;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    return-object v0
.end method

.method public handleAnnounceResponse(III)V
    .registers 5
    .param p1, "interval"    # I
    .param p2, "complete"    # I
    .param p3, "incomplete"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->announce:Lcom/turn/ttorrent/client/announce/Announce;

    invoke-virtual {v0, p1}, Lcom/turn/ttorrent/client/announce/Announce;->setInterval(I)V

    .line 667
    return-void
.end method

.method public handleBitfieldAvailability(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/util/BitSet;)V
    .registers 3
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "availablePieces"    # Ljava/util/BitSet;

    .prologue
    .line 803
    return-void
.end method

.method public handleDiscoveredPeers(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 707
    :cond_8
    :goto_8
    return-void

    .line 683
    :cond_9
    sget-object v3, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "Got {} peer(s) in tracker response."

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 685
    iget-object v3, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/ConnectionHandler;->isAlive()Z

    move-result v3

    if-nez v3, :cond_28

    .line 686
    sget-object v3, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "Connection handler service is not available."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_8

    .line 690
    :cond_28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/common/Peer;

    .line 696
    .local v2, "peer":Lcom/turn/ttorrent/common/Peer;
    invoke-direct {p0, v2}, Lcom/turn/ttorrent/client/Client;->getOrCreatePeer(Lcom/turn/ttorrent/common/Peer;)Lcom/turn/ttorrent/client/peer/SharingPeer;

    move-result-object v1

    .line 697
    .local v1, "match":Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/Client;->isSeed()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 701
    monitor-enter v1

    .line 702
    :try_start_43
    invoke-virtual {v1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isConnected()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 703
    iget-object v3, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v3, v1}, Lcom/turn/ttorrent/client/ConnectionHandler;->connect(Lcom/turn/ttorrent/client/peer/SharingPeer;)V

    .line 705
    :cond_4e
    monitor-exit v1

    goto :goto_2c

    :catchall_50
    move-exception v3

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_50

    throw v3
.end method

.method public handleFailedConnection(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 782
    sget-object v0, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v1, "Could not connect to {}: {}."

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 783
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getHostIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->hasPeerId()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 785
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getHexPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_23
    return-void
.end method

.method public handleIOException(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/io/IOException;)V
    .registers 6
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 909
    sget-object v0, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v1, "I/O error while exchanging data with {}, closing connection with it!"

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 911
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->unbind(Z)V

    .line 912
    return-void
.end method

.method public handleNewPeerConnection(Ljava/nio/channels/SocketChannel;[B)V
    .registers 11
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "peerId"    # [B

    .prologue
    .line 731
    new-instance v2, Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v5

    if-eqz p2, :cond_3d

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_1c
    invoke-direct {v2, v4, v5, v3}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    .line 738
    .local v2, "search":Lcom/turn/ttorrent/common/Peer;
    sget-object v3, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "Handling new peer connection with {}..."

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    invoke-direct {p0, v2}, Lcom/turn/ttorrent/client/Client;->getOrCreatePeer(Lcom/turn/ttorrent/common/Peer;)Lcom/turn/ttorrent/client/peer/SharingPeer;

    move-result-object v1

    .line 742
    .local v1, "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    :try_start_2a
    monitor-enter v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_7e

    .line 743
    :try_start_2b
    invoke-virtual {v1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 744
    sget-object v3, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "Already connected with {}, closing link."

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 747
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_94

    .line 767
    :goto_3c
    return-void

    .line 731
    .end local v1    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    .end local v2    # "search":Lcom/turn/ttorrent/common/Peer;
    :cond_3d
    const/4 v3, 0x0

    check-cast v3, Ljava/nio/ByteBuffer;

    goto :goto_1c

    .line 750
    .restart local v1    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    .restart local v2    # "search":Lcom/turn/ttorrent/common/Peer;
    :cond_41
    :try_start_41
    invoke-virtual {v1, p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->register(Lcom/turn/ttorrent/client/peer/PeerActivityListener;)V

    .line 751
    invoke-virtual {v1, p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->bind(Ljava/nio/channels/SocketChannel;)V

    .line 752
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_94

    .line 754
    :try_start_48
    iget-object v3, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getHexPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v3, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v1, v3}, Lcom/turn/ttorrent/client/peer/SharingPeer;->register(Lcom/turn/ttorrent/client/peer/PeerActivityListener;)V

    .line 756
    sget-object v3, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "New peer connection with {} [{}/{}]."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_7d} :catch_7e

    goto :goto_3c

    .line 762
    :catch_7e
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getHexPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v3, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v4, "Could not handle new peer connection with {}: {}"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v1, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    .line 752
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_94
    move-exception v3

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v3
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_97} :catch_7e
.end method

.method public handlePeerChoked(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    .registers 2
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    .line 792
    return-void
.end method

.method public handlePeerDisconnected(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    .registers 7
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    .line 893
    iget-object v1, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->hasPeerId()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getHexPeerId()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 896
    sget-object v0, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v1, "Peer {} disconnected, [{}/{}]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 904
    :cond_39
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->reset()V

    .line 905
    return-void

    .line 893
    :cond_3d
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getHostIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public handlePeerReady(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    .registers 2
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    .line 795
    return-void
.end method

.method public handlePieceAvailability(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V
    .registers 3
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "piece"    # Lcom/turn/ttorrent/client/Piece;

    .prologue
    .line 799
    return-void
.end method

.method public handlePieceCompleted(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V
    .registers 14
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "piece"    # Lcom/turn/ttorrent/client/Piece;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    iget-object v6, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    monitor-enter v6

    .line 830
    :try_start_3
    invoke-virtual {p2}, Lcom/turn/ttorrent/client/Piece;->isValid()Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 836
    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v5, p2}, Lcom/turn/ttorrent/client/SharedTorrent;->markCompleted(Lcom/turn/ttorrent/client/Piece;)V

    .line 837
    sget-object v5, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v7, "Completed download of {} from {}. We now have {}/{} pieces"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v10}, Lcom/turn/ttorrent/client/SharedTorrent;->getCompletedPieces()Ljava/util/BitSet;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/BitSet;->cardinality()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v10}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v5, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    invoke-virtual {p2}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v5

    invoke-static {v5}, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;->craft(I)Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;

    move-result-object v1

    .line 848
    .local v1, "have":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 849
    .local v3, "remote":Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-virtual {v3, v1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    goto :goto_4e

    .line 888
    .end local v1    # "have":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "remote":Lcom/turn/ttorrent/client/peer/SharingPeer;
    :catchall_5e
    move-exception v5

    monitor-exit v6
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v5

    .line 854
    .restart local v1    # "have":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_61
    :try_start_61
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/Client;->setChanged()V

    .line 855
    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->state:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-virtual {p0, v5}, Lcom/turn/ttorrent/client/Client;->notifyObservers(Ljava/lang/Object;)V

    .line 861
    .end local v1    # "have":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_69
    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v5}, Lcom/turn/ttorrent/client/SharedTorrent;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 862
    sget-object v5, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v7, "Last piece validated and completed, finishing download..."

    invoke-interface {v5, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 865
    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_82
    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 866
    .restart local v3    # "remote":Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-virtual {v3}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isDownloading()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 867
    invoke-virtual {v3}, Lcom/turn/ttorrent/client/peer/SharingPeer;->cancelPendingRequests()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    .line 868
    .local v4, "requests":I
    sget-object v5, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v7, "Cancelled {} remaining pending requests on {}."

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_82

    .line 857
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "remote":Lcom/turn/ttorrent/client/peer/SharingPeer;
    .end local v4    # "requests":I
    :cond_a8
    sget-object v5, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v7, "Downloaded piece#{} from {} was not valid ;-("

    invoke-virtual {p2}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_69

    .line 873
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_b8
    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v5}, Lcom/turn/ttorrent/client/SharedTorrent;->finish()V
    :try_end_bd
    .catchall {:try_start_61 .. :try_end_bd} :catchall_5e

    .line 876
    :try_start_bd
    iget-object v5, p0, Lcom/turn/ttorrent/client/Client;->announce:Lcom/turn/ttorrent/client/announce/Announce;

    invoke-virtual {v5}, Lcom/turn/ttorrent/client/announce/Announce;->getCurrentTrackerClient()Lcom/turn/ttorrent/client/announce/TrackerClient;

    move-result-object v5

    sget-object v7, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->COMPLETED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/turn/ttorrent/client/announce/TrackerClient;->announce(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Z)V
    :try_end_c9
    .catch Lcom/turn/ttorrent/client/announce/AnnounceException; {:try_start_bd .. :try_end_c9} :catch_d5
    .catchall {:try_start_bd .. :try_end_c9} :catchall_5e

    .line 885
    :goto_c9
    :try_start_c9
    sget-object v5, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v7, "Download is complete and finalized."

    invoke-interface {v5, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 886
    invoke-direct {p0}, Lcom/turn/ttorrent/client/Client;->seed()V

    .line 888
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_d3
    monitor-exit v6

    .line 889
    return-void

    .line 880
    .restart local v2    # "i$":Ljava/util/Iterator;
    :catch_d5
    move-exception v0

    .line 881
    .local v0, "ae":Lcom/turn/ttorrent/client/announce/AnnounceException;
    sget-object v5, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v7, "Error announcing completion event to tracker: {}"

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/announce/AnnounceException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e1
    .catchall {:try_start_c9 .. :try_end_e1} :catchall_5e

    goto :goto_c9
.end method

.method public handlePieceSent(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V
    .registers 3
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "piece"    # Lcom/turn/ttorrent/client/Piece;

    .prologue
    .line 807
    return-void
.end method

.method public declared-synchronized info()V
    .registers 19

    .prologue
    .line 444
    monitor-enter p0

    const/4 v2, 0x0

    .line 445
    .local v2, "dl":F
    const/4 v6, 0x0

    .line 446
    .local v6, "ul":F
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 447
    .local v4, "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-virtual {v4}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getDLRate()Lcom/turn/ttorrent/client/peer/Rate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/peer/Rate;->get()F

    move-result v7

    add-float/2addr v2, v7

    .line 448
    invoke-virtual {v4}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getULRate()Lcom/turn/ttorrent/client/peer/Rate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/peer/Rate;->get()F

    move-result v7

    add-float/2addr v6, v7

    .line 449
    goto :goto_f

    .line 451
    .end local v4    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    :cond_2e
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v8, "{} {}/{} pieces ({}%) [{}/{}] with {}/{} peers at {}/{} kB/s."

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/Client;->getState()Lcom/turn/ttorrent/client/Client$ClientState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/turn/ttorrent/client/Client$ClientState;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v11}, Lcom/turn/ttorrent/client/SharedTorrent;->getCompletedPieces()Ljava/util/BitSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v11}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v14}, Lcom/turn/ttorrent/client/SharedTorrent;->getCompletion()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v11}, Lcom/turn/ttorrent/client/SharedTorrent;->getAvailablePieces()Ljava/util/BitSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v11}, Lcom/turn/ttorrent/client/SharedTorrent;->getRequestedPieces()Ljava/util/BitSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/Client;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    float-to-double v14, v2

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    float-to-double v14, v6

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_103
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 465
    .restart local v4    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-virtual {v4}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getRequestedPiece()Lcom/turn/ttorrent/client/Piece;

    move-result-object v5

    .line 466
    .local v5, "piece":Lcom/turn/ttorrent/client/Piece;
    sget-object v8, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v9, "  | {} {}"

    if-eqz v5, :cond_139

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(downloading "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_132
    invoke-interface {v8, v9, v4, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_135
    .catchall {:try_start_3 .. :try_end_135} :catchall_136

    goto :goto_103

    .line 444
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    .end local v5    # "piece":Lcom/turn/ttorrent/client/Piece;
    :catchall_136
    move-exception v7

    monitor-exit p0

    throw v7

    .line 466
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    .restart local v5    # "piece":Lcom/turn/ttorrent/client/Piece;
    :cond_139
    :try_start_139
    const-string v7, ""
    :try_end_13b
    .catchall {:try_start_139 .. :try_end_13b} :catchall_136

    goto :goto_132

    .line 473
    .end local v4    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    .end local v5    # "piece":Lcom/turn/ttorrent/client/Piece;
    :cond_13c
    monitor-exit p0

    return-void
.end method

.method public isSeed()Z
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->isComplete()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 13

    .prologue
    const/4 v8, 0x1

    .line 323
    :try_start_1
    sget-object v7, Lcom/turn/ttorrent/client/Client$ClientState;->VALIDATING:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-direct {p0, v7}, Lcom/turn/ttorrent/client/Client;->setState(Lcom/turn/ttorrent/client/Client$ClientState;)V

    .line 324
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/SharedTorrent;->init()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_30
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_61
    .catchall {:try_start_1 .. :try_end_b} :catchall_8e

    .line 332
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/SharedTorrent;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_b6

    .line 334
    :try_start_13
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/ConnectionHandler;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_23

    .line 340
    :goto_18
    sget-object v7, Lcom/turn/ttorrent/client/Client$ClientState;->ERROR:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-direct {p0, v7}, Lcom/turn/ttorrent/client/Client;->setState(Lcom/turn/ttorrent/client/Client$ClientState;)V

    .line 341
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/SharedTorrent;->close()V

    .line 415
    :goto_22
    return-void

    .line 335
    :catch_23
    move-exception v3

    .line 336
    .local v3, "ioe":Ljava/io/IOException;
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v8, "Error while releasing bound channel: {}!"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    .line 325
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_30
    move-exception v3

    .line 326
    .restart local v3    # "ioe":Ljava/io/IOException;
    :try_start_31
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v9, "Error while initializing torrent data: {}!"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_8e

    .line 332
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/SharedTorrent;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_b6

    .line 334
    :try_start_44
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/ConnectionHandler;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_54

    .line 340
    :goto_49
    sget-object v7, Lcom/turn/ttorrent/client/Client$ClientState;->ERROR:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-direct {p0, v7}, Lcom/turn/ttorrent/client/Client;->setState(Lcom/turn/ttorrent/client/Client$ClientState;)V

    .line 341
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/SharedTorrent;->close()V

    goto :goto_22

    .line 335
    :catch_54
    move-exception v3

    .line 336
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v8, "Error while releasing bound channel: {}!"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_49

    .line 328
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_61
    move-exception v2

    .line 329
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_62
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v9, "Client was interrupted during initialization. Aborting right away."

    invoke-interface {v7, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_8e

    .line 332
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/SharedTorrent;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_b6

    .line 334
    :try_start_71
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/ConnectionHandler;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_76} :catch_81

    .line 340
    :goto_76
    sget-object v7, Lcom/turn/ttorrent/client/Client$ClientState;->ERROR:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-direct {p0, v7}, Lcom/turn/ttorrent/client/Client;->setState(Lcom/turn/ttorrent/client/Client$ClientState;)V

    .line 341
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/SharedTorrent;->close()V

    goto :goto_22

    .line 335
    :catch_81
    move-exception v3

    .line 336
    .restart local v3    # "ioe":Ljava/io/IOException;
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v8, "Error while releasing bound channel: {}!"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_76

    .line 332
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_8e
    move-exception v7

    iget-object v8, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v8}, Lcom/turn/ttorrent/client/SharedTorrent;->isInitialized()Z

    move-result v8

    if-nez v8, :cond_b5

    .line 334
    :try_start_97
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/ConnectionHandler;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9c} :catch_a8

    .line 340
    :goto_9c
    sget-object v7, Lcom/turn/ttorrent/client/Client$ClientState;->ERROR:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-direct {p0, v7}, Lcom/turn/ttorrent/client/Client;->setState(Lcom/turn/ttorrent/client/Client$ClientState;)V

    .line 341
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/SharedTorrent;->close()V

    goto/16 :goto_22

    .line 335
    :catch_a8
    move-exception v3

    .line 336
    .restart local v3    # "ioe":Ljava/io/IOException;
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v8, "Error while releasing bound channel: {}!"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9c

    .line 342
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_b5
    throw v7

    .line 347
    :cond_b6
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/SharedTorrent;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 348
    invoke-direct {p0}, Lcom/turn/ttorrent/client/Client;->seed()V

    .line 354
    :goto_c1
    iget-boolean v7, p0, Lcom/turn/ttorrent/client/Client;->stop:Z

    if-eqz v7, :cond_d7

    .line 355
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v8, "Download is complete and no seeding was requested."

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/turn/ttorrent/client/Client;->finish()V

    goto/16 :goto_22

    .line 350
    :cond_d1
    sget-object v7, Lcom/turn/ttorrent/client/Client$ClientState;->SHARING:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-direct {p0, v7}, Lcom/turn/ttorrent/client/Client;->setState(Lcom/turn/ttorrent/client/Client$ClientState;)V

    goto :goto_c1

    .line 360
    :cond_d7
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->announce:Lcom/turn/ttorrent/client/announce/Announce;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/announce/Announce;->start()V

    .line 361
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/ConnectionHandler;->start()V

    .line 363
    const/4 v4, 0x0

    .line 364
    .local v4, "optimisticIterations":I
    const/4 v6, 0x0

    .line 366
    .local v6, "rateComputationIterations":I
    :goto_e3
    iget-boolean v7, p0, Lcom/turn/ttorrent/client/Client;->stop:Z

    if-nez v7, :cond_11b

    .line 367
    if-nez v4, :cond_10a

    const/4 v4, 0x3

    .line 372
    :goto_ea
    if-nez v6, :cond_10d

    const/4 v6, 0x2

    .line 378
    :goto_ed
    if-nez v4, :cond_110

    move v7, v8

    :goto_f0
    :try_start_f0
    invoke-direct {p0, v7}, Lcom/turn/ttorrent/client/Client;->unchokePeers(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/Client;->info()V

    .line 380
    if-nez v6, :cond_fb

    .line 381
    invoke-direct {p0}, Lcom/turn/ttorrent/client/Client;->resetPeerRates()V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_fb} :catch_112

    .line 389
    :cond_fb
    :goto_fb
    const-wide/16 v10, 0xbb8

    :try_start_fd
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_100
    .catch Ljava/lang/InterruptedException; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_e3

    .line 390
    :catch_101
    move-exception v2

    .line 391
    .restart local v2    # "ie":Ljava/lang/InterruptedException;
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v9, "BitTorrent main loop interrupted."

    invoke-interface {v7, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_e3

    .line 367
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_10a
    add-int/lit8 v4, v4, -0x1

    goto :goto_ea

    .line 372
    :cond_10d
    add-int/lit8 v6, v6, -0x1

    goto :goto_ed

    .line 378
    :cond_110
    const/4 v7, 0x0

    goto :goto_f0

    .line 383
    :catch_112
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v9, "An exception occurred during the BitTorrent client main loop execution!"

    invoke-interface {v7, v9, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_fb

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11b
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v9, "Stopping BitTorrent client connection service and announce threads..."

    invoke-interface {v7, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 398
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/ConnectionHandler;->stop()V

    .line 400
    :try_start_127
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->service:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/ConnectionHandler;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12c} :catch_152

    .line 406
    :goto_12c
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->announce:Lcom/turn/ttorrent/client/announce/Announce;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/announce/Announce;->stop()V

    .line 409
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v9, "Closing all remaining peer connections..."

    invoke-interface {v7, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 410
    iget-object v7, p0, Lcom/turn/ttorrent/client/Client;->connected:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_142
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 411
    .local v5, "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-virtual {v5, v8}, Lcom/turn/ttorrent/client/peer/SharingPeer;->unbind(Z)V

    goto :goto_142

    .line 401
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "peer":Lcom/turn/ttorrent/client/peer/SharingPeer;
    :catch_152
    move-exception v3

    .line 402
    .restart local v3    # "ioe":Ljava/io/IOException;
    sget-object v7, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    const-string v9, "Error while releasing bound channel: {}!"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12c

    .line 414
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_15f
    invoke-direct {p0}, Lcom/turn/ttorrent/client/Client;->finish()V

    goto/16 :goto_22
.end method

.method public setMaxDownloadRate(D)V
    .registers 4
    .param p1, "rate"    # D

    .prologue
    .line 167
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0, p1, p2}, Lcom/turn/ttorrent/client/SharedTorrent;->setMaxDownloadRate(D)V

    .line 168
    return-void
.end method

.method public setMaxUploadRate(D)V
    .registers 4
    .param p1, "rate"    # D

    .prologue
    .line 177
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0, p1, p2}, Lcom/turn/ttorrent/client/SharedTorrent;->setMaxUploadRate(D)V

    .line 178
    return-void
.end method

.method public share()V
    .registers 2

    .prologue
    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/Client;->share(I)V

    .line 237
    return-void
.end method

.method public declared-synchronized share(I)V
    .registers 5
    .param p1, "seed"    # I

    .prologue
    .line 246
    monitor-enter p0

    int-to-long v0, p1

    :try_start_2
    iput-wide v0, p0, Lcom/turn/ttorrent/client/Client;->seed:J

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/Client;->stop:Z

    .line 249
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_43

    .line 250
    :cond_13
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    .line 251
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt-client("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/turn/ttorrent/client/Client;->self:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v2}, Lcom/turn/ttorrent/common/Peer;->getShortHexPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_45

    .line 255
    :cond_43
    monitor-exit p0

    return-void

    .line 246
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/Client;->stop(Z)V

    .line 262
    return-void
.end method

.method public stop(Z)V
    .registers 3
    .param p1, "wait"    # Z

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/Client;->stop:Z

    .line 274
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 275
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 276
    if-eqz p1, :cond_19

    .line 277
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/Client;->waitForCompletion()V

    .line 281
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    .line 282
    return-void
.end method

.method public waitForCompletion()V
    .registers 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 290
    :try_start_c
    iget-object v1, p0, Lcom/turn/ttorrent/client/Client;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    .line 295
    :cond_11
    :goto_11
    return-void

    .line 291
    :catch_12
    move-exception v0

    .line 292
    .local v0, "ie":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/turn/ttorrent/client/Client;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method
