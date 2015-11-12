.class Lcom/turn/ttorrent/client/peer/PeerExchange;
.super Ljava/lang/Object;
.source "PeerExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/client/peer/PeerExchange$1;,
        Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;,
        Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;,
        Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;
    }
.end annotation


# static fields
.field private static final KEEP_ALIVE_IDLE_MINUTES:I = 0x2

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private channel:Ljava/nio/channels/SocketChannel;

.field private in:Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/turn/ttorrent/client/peer/MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private out:Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;

.field private peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

.field private sendQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/turn/ttorrent/common/protocol/PeerMessage;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stop:Z

.field private torrent:Lcom/turn/ttorrent/client/SharedTorrent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const-class v0, Lcom/turn/ttorrent/client/peer/PeerExchange;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/peer/PeerExchange;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/SharedTorrent;Ljava/nio/channels/SocketChannel;)V
    .registers 9
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .param p3, "channel"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 103
    iput-object p2, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    .line 104
    iput-object p3, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->channel:Ljava/nio/channels/SocketChannel;

    .line 106
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->listeners:Ljava/util/Set;

    .line 107
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->sendQueue:Ljava/util/concurrent/BlockingQueue;

    .line 109
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->hasPeerId()Z

    move-result v1

    if-nez v1, :cond_28

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Peer does not have a peer ID. Was the handshake made properly?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_28
    new-instance v1, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;

    invoke-direct {v1, p0, v4}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;-><init>(Lcom/turn/ttorrent/client/peer/PeerExchange;Lcom/turn/ttorrent/client/peer/PeerExchange$1;)V

    iput-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->in:Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;

    .line 115
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->in:Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt-peer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getShortHexPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")-recv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->setName(Ljava/lang/String;)V

    .line 118
    new-instance v1, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;

    invoke-direct {v1, p0, v4}, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;-><init>(Lcom/turn/ttorrent/client/peer/PeerExchange;Lcom/turn/ttorrent/client/peer/PeerExchange$1;)V

    iput-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->out:Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;

    .line 119
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->out:Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt-peer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getShortHexPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")-send"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->setName(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->out:Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->setDaemon(Z)V

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->stop:Z

    .line 125
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->in:Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->start()V

    .line 126
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->out:Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->start()V

    .line 128
    sget-object v1, Lcom/turn/ttorrent/client/peer/PeerExchange;->logger:Lorg/slf4j/Logger;

    const-string v2, "Started peer exchange with {} for {}."

    iget-object v3, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    iget-object v4, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/SharedTorrent;->getCompletedPieces()Ljava/util/BitSet;

    move-result-object v0

    .line 133
    .local v0, "pieces":Ljava/util/BitSet;
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-lez v1, :cond_af

    .line 134
    invoke-static {v0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;->craft(Ljava/util/BitSet;)Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 136
    :cond_af
    return-void
.end method

.method static synthetic access$300(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/peer/SharingPeer;
    .registers 2
    .param p0, "x0"    # Lcom/turn/ttorrent/client/peer/PeerExchange;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    return-object v0
.end method

.method static synthetic access$400()Lorg/slf4j/Logger;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/turn/ttorrent/client/peer/PeerExchange;->logger:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/turn/ttorrent/client/peer/PeerExchange;)Ljava/nio/channels/SocketChannel;
    .registers 2
    .param p0, "x0"    # Lcom/turn/ttorrent/client/peer/PeerExchange;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->channel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/turn/ttorrent/client/peer/PeerExchange;)Z
    .registers 2
    .param p0, "x0"    # Lcom/turn/ttorrent/client/peer/PeerExchange;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->stop:Z

    return v0
.end method

.method static synthetic access$700(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/SharedTorrent;
    .registers 2
    .param p0, "x0"    # Lcom/turn/ttorrent/client/peer/PeerExchange;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/turn/ttorrent/client/peer/PeerExchange;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/turn/ttorrent/client/peer/PeerExchange;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/turn/ttorrent/client/peer/PeerExchange;)Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .param p0, "x0"    # Lcom/turn/ttorrent/client/peer/PeerExchange;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->sendQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->stop:Z

    .line 184
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 185
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->channel:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    :cond_10
    sget-object v0, Lcom/turn/ttorrent/client/peer/PeerExchange;->logger:Lorg/slf4j/Logger;

    const-string v1, "Peer exchange with {} closed."

    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public register(Lcom/turn/ttorrent/client/peer/MessageListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/turn/ttorrent/client/peer/MessageListener;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/turn/ttorrent/common/protocol/PeerMessage;

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange;->sendQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 172
    :goto_5
    return-void

    .line 167
    :catch_6
    move-exception v0

    goto :goto_5
.end method
