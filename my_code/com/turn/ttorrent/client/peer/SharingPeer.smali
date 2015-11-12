.class public Lcom/turn/ttorrent/client/peer/SharingPeer;
.super Lcom/turn/ttorrent/common/Peer;
.source "SharingPeer.java"

# interfaces
.implements Lcom/turn/ttorrent/client/peer/MessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/client/peer/SharingPeer$1;,
        Lcom/turn/ttorrent/client/peer/SharingPeer$ULRateComparator;,
        Lcom/turn/ttorrent/client/peer/SharingPeer$DLRateComparator;
    }
.end annotation


# static fields
.field private static final MAX_PIPELINED_REQUESTS:I = 0x5

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private availablePieces:Ljava/util/BitSet;

.field private choked:Z

.field private choking:Z

.field private download:Lcom/turn/ttorrent/client/peer/Rate;

.field private volatile downloading:Z

.field private exchange:Lcom/turn/ttorrent/client/peer/PeerExchange;

.field private exchangeLock:Ljava/lang/Object;

.field private interested:Z

.field private interesting:Z

.field private lastRequestedOffset:I

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/turn/ttorrent/client/peer/PeerActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private requestedPiece:Lcom/turn/ttorrent/client/Piece;

.field private requests:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field private requestsLock:Ljava/lang/Object;

.field private torrent:Lcom/turn/ttorrent/client/SharedTorrent;

.field private upload:Lcom/turn/ttorrent/client/peer/Rate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const-class v0, Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)V
    .registers 7
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "peerId"    # Ljava/nio/ByteBuffer;
    .param p4, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    .line 112
    iput-object p4, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->listeners:Ljava/util/Set;

    .line 114
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->availablePieces:Ljava/util/BitSet;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestsLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchangeLock:Ljava/lang/Object;

    .line 119
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->reset()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestedPiece:Lcom/turn/ttorrent/client/Piece;

    .line 121
    return-void
.end method

.method private fireBitfieldAvailabity()V
    .registers 4

    .prologue
    .line 677
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/peer/PeerActivityListener;

    .line 678
    .local v1, "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getAvailablePieces()Ljava/util/BitSet;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/turn/ttorrent/client/peer/PeerActivityListener;->handleBitfieldAvailability(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/util/BitSet;)V

    goto :goto_6

    .line 681
    .end local v1    # "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    :cond_1a
    return-void
.end method

.method private fireIOException(Ljava/io/IOException;)V
    .registers 5
    .param p1, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 737
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/peer/PeerActivityListener;

    .line 738
    .local v1, "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    invoke-interface {v1, p0, p1}, Lcom/turn/ttorrent/client/peer/PeerActivityListener;->handleIOException(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/io/IOException;)V

    goto :goto_6

    .line 740
    .end local v1    # "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    :cond_16
    return-void
.end method

.method private firePeerChoked()V
    .registers 4

    .prologue
    .line 639
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/peer/PeerActivityListener;

    .line 640
    .local v1, "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    invoke-interface {v1, p0}, Lcom/turn/ttorrent/client/peer/PeerActivityListener;->handlePeerChoked(Lcom/turn/ttorrent/client/peer/SharingPeer;)V

    goto :goto_6

    .line 642
    .end local v1    # "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    :cond_16
    return-void
.end method

.method private firePeerDisconnected()V
    .registers 4

    .prologue
    .line 723
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/peer/PeerActivityListener;

    .line 724
    .local v1, "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    invoke-interface {v1, p0}, Lcom/turn/ttorrent/client/peer/PeerActivityListener;->handlePeerDisconnected(Lcom/turn/ttorrent/client/peer/SharingPeer;)V

    goto :goto_6

    .line 726
    .end local v1    # "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    :cond_16
    return-void
.end method

.method private firePeerReady()V
    .registers 4

    .prologue
    .line 652
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/peer/PeerActivityListener;

    .line 653
    .local v1, "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    invoke-interface {v1, p0}, Lcom/turn/ttorrent/client/peer/PeerActivityListener;->handlePeerReady(Lcom/turn/ttorrent/client/peer/SharingPeer;)V

    goto :goto_6

    .line 655
    .end local v1    # "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    :cond_16
    return-void
.end method

.method private firePieceAvailabity(Lcom/turn/ttorrent/client/Piece;)V
    .registers 5
    .param p1, "piece"    # Lcom/turn/ttorrent/client/Piece;

    .prologue
    .line 665
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/peer/PeerActivityListener;

    .line 666
    .local v1, "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    invoke-interface {v1, p0, p1}, Lcom/turn/ttorrent/client/peer/PeerActivityListener;->handlePieceAvailability(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V

    goto :goto_6

    .line 668
    .end local v1    # "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    :cond_16
    return-void
.end method

.method private firePieceCompleted(Lcom/turn/ttorrent/client/Piece;)V
    .registers 5
    .param p1, "piece"    # Lcom/turn/ttorrent/client/Piece;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/peer/PeerActivityListener;

    .line 711
    .local v1, "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    invoke-interface {v1, p0, p1}, Lcom/turn/ttorrent/client/peer/PeerActivityListener;->handlePieceCompleted(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V

    goto :goto_6

    .line 713
    .end local v1    # "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    :cond_16
    return-void
.end method

.method private firePieceSent(Lcom/turn/ttorrent/client/Piece;)V
    .registers 5
    .param p1, "piece"    # Lcom/turn/ttorrent/client/Piece;

    .prologue
    .line 694
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/peer/PeerActivityListener;

    .line 695
    .local v1, "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    invoke-interface {v1, p0, p1}, Lcom/turn/ttorrent/client/peer/PeerActivityListener;->handlePieceSent(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V

    goto :goto_6

    .line 697
    .end local v1    # "listener":Lcom/turn/ttorrent/client/peer/PeerActivityListener;
    :cond_16
    return-void
.end method

.method private removeBlockRequest(Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;)V
    .registers 7
    .param p1, "message"    # Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;

    .prologue
    .line 423
    iget-object v3, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 424
    :try_start_3
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    if-nez v2, :cond_9

    .line 425
    monitor-exit v3

    .line 438
    :goto_8
    return-void

    .line 428
    :cond_9
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;

    .line 429
    .local v1, "request":Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getPiece()I

    move-result v2

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getPiece()I

    move-result v4

    if-ne v2, v4, :cond_f

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getOffset()I

    move-result v4

    if-ne v2, v4, :cond_f

    .line 431
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 436
    .end local v1    # "request":Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    :cond_34
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_44

    const/4 v2, 0x1

    :goto_3d
    iput-boolean v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->downloading:Z

    .line 437
    monitor-exit v3

    goto :goto_8

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v2

    .line 436
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_44
    const/4 v2, 0x0

    goto :goto_3d
.end method

.method private requestNextBlocks()V
    .registers 9

    .prologue
    .line 382
    iget-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 383
    :try_start_3
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestedPiece:Lcom/turn/ttorrent/client/Piece;

    if-nez v1, :cond_d

    .line 388
    :cond_b
    monitor-exit v2

    .line 408
    :goto_c
    return-void

    .line 391
    :cond_d
    :goto_d
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v1

    if-lez v1, :cond_54

    iget v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->lastRequestedOffset:I

    int-to-long v4, v1

    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestedPiece:Lcom/turn/ttorrent/client/Piece;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_54

    .line 393
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestedPiece:Lcom/turn/ttorrent/client/Piece;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v1

    iget v3, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->lastRequestedOffset:I

    iget-object v4, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestedPiece:Lcom/turn/ttorrent/client/Piece;

    invoke-virtual {v4}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v4

    iget v6, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->lastRequestedOffset:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    const/16 v5, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->craft(III)Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;

    move-result-object v0

    .line 401
    .local v0, "request":Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 403
    iget v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->lastRequestedOffset:I

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getLength()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->lastRequestedOffset:I

    goto :goto_d

    .line 407
    .end local v0    # "request":Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    :catchall_51
    move-exception v1

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1

    .line 406
    :cond_54
    :try_start_54
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_61

    const/4 v1, 0x1

    :goto_5d
    iput-boolean v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->downloading:Z

    .line 407
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_51

    goto :goto_c

    .line 406
    :cond_61
    const/4 v1, 0x0

    goto :goto_5d
.end method


# virtual methods
.method public declared-synchronized bind(Ljava/nio/channels/SocketChannel;)V
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->unbind(Z)V

    .line 271
    new-instance v0, Lcom/turn/ttorrent/client/peer/PeerExchange;

    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-direct {v0, p0, v1, p1}, Lcom/turn/ttorrent/client/peer/PeerExchange;-><init>(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/SharedTorrent;Ljava/nio/channels/SocketChannel;)V

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchange:Lcom/turn/ttorrent/client/peer/PeerExchange;

    .line 272
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchange:Lcom/turn/ttorrent/client/peer/PeerExchange;

    invoke-virtual {v0, p0}, Lcom/turn/ttorrent/client/peer/PeerExchange;->register(Lcom/turn/ttorrent/client/peer/MessageListener;)V

    .line 274
    new-instance v0, Lcom/turn/ttorrent/client/peer/Rate;

    invoke-direct {v0}, Lcom/turn/ttorrent/client/peer/Rate;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->download:Lcom/turn/ttorrent/client/peer/Rate;

    .line 275
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->download:Lcom/turn/ttorrent/client/peer/Rate;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/peer/Rate;->reset()V

    .line 277
    new-instance v0, Lcom/turn/ttorrent/client/peer/Rate;

    invoke-direct {v0}, Lcom/turn/ttorrent/client/peer/Rate;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->upload:Lcom/turn/ttorrent/client/peer/Rate;

    .line 278
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->upload:Lcom/turn/ttorrent/client/peer/Rate;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/peer/Rate;->reset()V
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2d

    .line 279
    monitor-exit p0

    return-void

    .line 269
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelPendingRequests()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v4, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 455
    :try_start_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 458
    .local v2, "requests":Ljava/util/Set;, "Ljava/util/Set<Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;>;"
    iget-object v3, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    if-eqz v3, :cond_38

    .line 459
    iget-object v3, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;

    .line 460
    .local v1, "request":Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getPiece()I

    move-result v3

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getOffset()I

    move-result v5

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getLength()I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->craft(III)Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/turn/ttorrent/client/peer/SharingPeer;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 462
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 469
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "request":Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    .end local v2    # "requests":Ljava/util/Set;, "Ljava/util/Set<Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;>;"
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v3

    .line 466
    .restart local v2    # "requests":Ljava/util/Set;, "Ljava/util/Set<Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;>;"
    :cond_38
    const/4 v3, 0x0

    :try_start_39
    iput-object v3, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    .line 467
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->downloading:Z

    .line 468
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_35

    return-object v2
.end method

.method public choke()V
    .registers 3

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choking:Z

    if-nez v0, :cond_15

    .line 172
    sget-object v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Choking {}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Lcom/turn/ttorrent/common/protocol/PeerMessage$ChokeMessage;->craft()Lcom/turn/ttorrent/common/protocol/PeerMessage$ChokeMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choking:Z

    .line 176
    :cond_15
    return-void
.end method

.method public declared-synchronized downloadPiece(Lcom/turn/ttorrent/client/Piece;)V
    .registers 6
    .param p1, "piece"    # Lcom/turn/ttorrent/client/Piece;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 355
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to download a piece while previous download not completed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "up":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v2, "What\'s going on? {}"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    throw v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1a

    .line 355
    .end local v0    # "up":Ljava/lang/IllegalStateException;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 363
    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    .line 365
    iput-object p1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestedPiece:Lcom/turn/ttorrent/client/Piece;

    .line 366
    const/4 v1, 0x0

    iput v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->lastRequestedOffset:I

    .line 367
    invoke-direct {p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestNextBlocks()V
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_1a

    .line 368
    monitor-exit p0

    return-void
.end method

.method public getAvailablePieces()Ljava/util/BitSet;
    .registers 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->availablePieces:Ljava/util/BitSet;

    monitor-enter v1

    .line 235
    :try_start_3
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->availablePieces:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    monitor-exit v1

    return-object v0

    .line 236
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getDLRate()Lcom/turn/ttorrent/client/peer/Rate;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->download:Lcom/turn/ttorrent/client/peer/Rate;

    return-object v0
.end method

.method public getRequestedPiece()Lcom/turn/ttorrent/client/Piece;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestedPiece:Lcom/turn/ttorrent/client/Piece;

    return-object v0
.end method

.method public getULRate()Lcom/turn/ttorrent/client/peer/Rate;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->upload:Lcom/turn/ttorrent/client/peer/Rate;

    return-object v0
.end method

.method public declared-synchronized handleMessage(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V
    .registers 19
    .param p1, "msg"    # Lcom/turn/ttorrent/common/protocol/PeerMessage;

    .prologue
    .line 479
    monitor-enter p0

    :try_start_1
    sget-object v11, Lcom/turn/ttorrent/client/peer/SharingPeer$1;->$SwitchMap$com$turn$ttorrent$common$protocol$PeerMessage$Type:[I

    invoke-virtual/range {p1 .. p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage;->getType()Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    move-result-object v12

    invoke-virtual {v12}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    packed-switch v11, :pswitch_data_230

    .line 629
    :cond_10
    :goto_10
    :pswitch_10
    monitor-exit p0

    return-void

    .line 484
    :pswitch_12
    const/4 v11, 0x1

    :try_start_13
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choked:Z

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->firePeerChoked()V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->cancelPendingRequests()Ljava/util/Set;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1e

    goto :goto_10

    .line 479
    :catchall_1e
    move-exception v11

    monitor-exit p0

    throw v11

    .line 489
    :pswitch_21
    const/4 v11, 0x0

    :try_start_22
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choked:Z

    .line 490
    sget-object v11, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v12, "Peer {} is now accepting requests."

    move-object/from16 v0, p0

    invoke-interface {v11, v12, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->firePeerReady()V

    goto :goto_10

    .line 494
    :pswitch_33
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interested:Z

    goto :goto_10

    .line 497
    :pswitch_39
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interested:Z

    goto :goto_10

    .line 501
    :pswitch_3f
    move-object/from16 v0, p1

    check-cast v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;

    move-object v4, v0

    .line 502
    .local v4, "have":Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v4}, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;->getPieceIndex()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/turn/ttorrent/client/SharedTorrent;->getPiece(I)Lcom/turn/ttorrent/client/Piece;

    move-result-object v5

    .line 504
    .local v5, "havePiece":Lcom/turn/ttorrent/client/Piece;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->availablePieces:Ljava/util/BitSet;

    monitor-enter v12
    :try_end_55
    .catchall {:try_start_22 .. :try_end_55} :catchall_1e

    .line 505
    :try_start_55
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->availablePieces:Ljava/util/BitSet;

    invoke-virtual {v5}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/util/BitSet;->set(I)V

    .line 506
    sget-object v11, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v13, "Peer {} now has {} [{}/{}]."

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->availablePieces:Ljava/util/BitSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v11, v13, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    monitor-exit v12
    :try_end_93
    .catchall {:try_start_55 .. :try_end_93} :catchall_9a

    .line 515
    :try_start_93
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/turn/ttorrent/client/peer/SharingPeer;->firePieceAvailabity(Lcom/turn/ttorrent/client/Piece;)V
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_1e

    goto/16 :goto_10

    .line 513
    :catchall_9a
    move-exception v11

    :try_start_9b
    monitor-exit v12
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw v11

    .line 519
    .end local v4    # "have":Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;
    .end local v5    # "havePiece":Lcom/turn/ttorrent/client/Piece;
    :pswitch_9d
    move-object/from16 v0, p1

    check-cast v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;

    move-object v2, v0

    .line 522
    .local v2, "bitfield":Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->availablePieces:Ljava/util/BitSet;

    monitor-enter v12
    :try_end_a7
    .catchall {:try_start_9c .. :try_end_a7} :catchall_1e

    .line 523
    :try_start_a7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->availablePieces:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;->getBitfield()Ljava/util/BitSet;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 524
    sget-object v11, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v13, "Recorded bitfield from {} with {} pieces(s) [{}/{}]."

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;->getBitfield()Ljava/util/BitSet;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->availablePieces:Ljava/util/BitSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v11, v13, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    monitor-exit v12
    :try_end_f1
    .catchall {:try_start_a7 .. :try_end_f1} :catchall_f6

    .line 534
    :try_start_f1
    invoke-direct/range {p0 .. p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->fireBitfieldAvailabity()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_1e

    goto/16 :goto_10

    .line 532
    :catchall_f6
    move-exception v11

    :try_start_f7
    monitor-exit v12
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    :try_start_f8
    throw v11

    .line 537
    .end local v2    # "bitfield":Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;
    :pswitch_f9
    move-object/from16 v0, p1

    check-cast v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;

    move-object v9, v0

    .line 539
    .local v9, "request":Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v9}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getPiece()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/turn/ttorrent/client/SharedTorrent;->getPiece(I)Lcom/turn/ttorrent/client/Piece;

    move-result-object v10

    .line 546
    .local v10, "rp":Lcom/turn/ttorrent/client/Piece;
    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isChoking()Z

    move-result v11

    if-nez v11, :cond_116

    invoke-virtual {v10}, Lcom/turn/ttorrent/client/Piece;->isValid()Z

    move-result v11

    if-nez v11, :cond_127

    .line 547
    :cond_116
    sget-object v11, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v12, "Peer {} violated protocol, terminating exchange."

    move-object/from16 v0, p0

    invoke-interface {v11, v12, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/turn/ttorrent/client/peer/SharingPeer;->unbind(Z)V

    goto/16 :goto_10

    .line 553
    :cond_127
    invoke-virtual {v9}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getLength()I

    move-result v11

    const/high16 v12, 0x20000

    if-le v11, v12, :cond_140

    .line 555
    sget-object v11, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v12, "Peer {} requested a block too big, terminating exchange."

    move-object/from16 v0, p0

    invoke-interface {v11, v12, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/turn/ttorrent/client/peer/SharingPeer;->unbind(Z)V
    :try_end_13e
    .catchall {:try_start_f8 .. :try_end_13e} :catchall_1e

    goto/16 :goto_10

    .line 564
    :cond_140
    :try_start_140
    invoke-virtual {v9}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getOffset()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v9}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getLength()I

    move-result v11

    invoke-virtual {v10, v12, v13, v11}, Lcom/turn/ttorrent/client/Piece;->read(JI)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 566
    .local v3, "block":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getPiece()I

    move-result v11

    invoke-virtual {v9}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getOffset()I

    move-result v12

    invoke-static {v11, v12, v3}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->craft(IILjava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/turn/ttorrent/client/peer/SharingPeer;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->upload:Lcom/turn/ttorrent/client/peer/Rate;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/turn/ttorrent/client/peer/Rate;->add(J)V

    .line 570
    invoke-virtual {v9}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getOffset()I

    move-result v11

    invoke-virtual {v9}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getLength()I

    move-result v12

    add-int/2addr v11, v12

    int-to-long v12, v11

    invoke-virtual {v10}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_10

    .line 571
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/turn/ttorrent/client/peer/SharingPeer;->firePieceSent(Lcom/turn/ttorrent/client/Piece;)V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_181} :catch_183
    .catchall {:try_start_140 .. :try_end_181} :catchall_1e

    goto/16 :goto_10

    .line 573
    .end local v3    # "block":Ljava/nio/ByteBuffer;
    :catch_183
    move-exception v6

    .line 574
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_184
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Error while sending piece block request!"

    invoke-direct {v11, v12, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/turn/ttorrent/client/peer/SharingPeer;->fireIOException(Ljava/io/IOException;)V

    goto/16 :goto_10

    .line 585
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v9    # "request":Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    .end local v10    # "rp":Lcom/turn/ttorrent/client/Piece;
    :pswitch_192
    move-object/from16 v0, p1

    check-cast v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;

    move-object v8, v0

    .line 586
    .local v8, "piece":Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v8}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getPiece()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/turn/ttorrent/client/SharedTorrent;->getPiece(I)Lcom/turn/ttorrent/client/Piece;

    move-result-object v7

    .line 590
    .local v7, "p":Lcom/turn/ttorrent/client/Piece;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/turn/ttorrent/client/peer/SharingPeer;->removeBlockRequest(Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->download:Lcom/turn/ttorrent/client/peer/Rate;

    invoke-virtual {v8}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getBlock()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/turn/ttorrent/client/peer/Rate;->add(J)V
    :try_end_1b8
    .catchall {:try_start_184 .. :try_end_1b8} :catchall_1e

    .line 594
    :try_start_1b8
    monitor-enter v7
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1b9} :catch_1e8
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1e

    .line 595
    :try_start_1b9
    invoke-virtual {v7}, Lcom/turn/ttorrent/client/Piece;->isValid()Z

    move-result v11

    if-eqz v11, :cond_1f7

    .line 596
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestedPiece:Lcom/turn/ttorrent/client/Piece;

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->cancelPendingRequests()Ljava/util/Set;

    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->firePeerReady()V

    .line 599
    sget-object v11, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Discarding block for already completed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 600
    monitor-exit v7

    goto/16 :goto_10

    .line 618
    :catchall_1e5
    move-exception v11

    monitor-exit v7
    :try_end_1e7
    .catchall {:try_start_1b9 .. :try_end_1e7} :catchall_1e5

    :try_start_1e7
    throw v11
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1e8} :catch_1e8
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_1e

    .line 619
    :catch_1e8
    move-exception v6

    .line 620
    .restart local v6    # "ioe":Ljava/io/IOException;
    :try_start_1e9
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Error while storing received piece block!"

    invoke-direct {v11, v12, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/turn/ttorrent/client/peer/SharingPeer;->fireIOException(Ljava/io/IOException;)V
    :try_end_1f5
    .catchall {:try_start_1e9 .. :try_end_1f5} :catchall_1e

    goto/16 :goto_10

    .line 603
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_1f7
    :try_start_1f7
    invoke-virtual {v8}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getBlock()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v8}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getOffset()I

    move-result v12

    invoke-virtual {v7, v11, v12}, Lcom/turn/ttorrent/client/Piece;->record(Ljava/nio/ByteBuffer;I)V

    .line 609
    invoke-virtual {v8}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getOffset()I

    move-result v11

    invoke-virtual {v8}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getBlock()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    add-int/2addr v11, v12

    int-to-long v12, v11

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_22b

    .line 611
    invoke-virtual {v7}, Lcom/turn/ttorrent/client/Piece;->validate()Z

    .line 612
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/turn/ttorrent/client/peer/SharingPeer;->firePieceCompleted(Lcom/turn/ttorrent/client/Piece;)V

    .line 613
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestedPiece:Lcom/turn/ttorrent/client/Piece;

    .line 614
    invoke-direct/range {p0 .. p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->firePeerReady()V

    .line 618
    :goto_228
    monitor-exit v7

    goto/16 :goto_10

    .line 616
    :cond_22b
    invoke-direct/range {p0 .. p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestNextBlocks()V
    :try_end_22e
    .catchall {:try_start_1f7 .. :try_end_22e} :catchall_1e5

    goto :goto_228

    .line 479
    nop

    :pswitch_data_230
    .packed-switch 0x1
        :pswitch_10
        :pswitch_12
        :pswitch_21
        :pswitch_33
        :pswitch_39
        :pswitch_3f
        :pswitch_9d
        :pswitch_f9
        :pswitch_192
    .end packed-switch
.end method

.method public interesting()V
    .registers 3

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interesting:Z

    if-nez v0, :cond_15

    .line 201
    sget-object v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Telling {} we\'re interested."

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    invoke-static {}, Lcom/turn/ttorrent/common/protocol/PeerMessage$InterestedMessage;->craft()Lcom/turn/ttorrent/common/protocol/PeerMessage$InterestedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interesting:Z

    .line 205
    :cond_15
    return-void
.end method

.method public isChoked()Z
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choked:Z

    return v0
.end method

.method public isChoking()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choking:Z

    return v0
.end method

.method public isConnected()Z
    .registers 3

    .prologue
    .line 285
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_3
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchange:Lcom/turn/ttorrent/client/peer/PeerExchange;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchange:Lcom/turn/ttorrent/client/peer/PeerExchange;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/peer/PeerExchange;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 287
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public isDownloading()Z
    .registers 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->downloading:Z

    return v0
.end method

.method public isInterested()Z
    .registers 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interested:Z

    return v0
.end method

.method public isInteresting()Z
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interesting:Z

    return v0
.end method

.method public declared-synchronized isSeed()Z
    .registers 3

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getAvailablePieces()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    move-result v1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_1a
    monitor-exit p0

    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1a

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notInteresting()V
    .registers 3

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interesting:Z

    if-eqz v0, :cond_15

    .line 209
    sget-object v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Telling {} we\'re no longer interested."

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;->craft()Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interesting:Z

    .line 213
    :cond_15
    return-void
.end method

.method public register(Lcom/turn/ttorrent/client/peer/PeerActivityListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/turn/ttorrent/client/peer/PeerActivityListener;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choking:Z

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interesting:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choked:Z

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interested:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchange:Lcom/turn/ttorrent/client/peer/PeerExchange;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requests:Ljava/util/concurrent/BlockingQueue;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->lastRequestedOffset:I

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->downloading:Z
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 160
    monitor-exit p0

    return-void

    .line 150
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V
    .registers 4
    .param p1, "message"    # Lcom/turn/ttorrent/common/protocol/PeerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 332
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchange:Lcom/turn/ttorrent/client/peer/PeerExchange;

    invoke-virtual {v0, p1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 336
    :goto_b
    return-void

    .line 334
    :cond_c
    sget-object v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Attempting to send a message to non-connected peer {}!"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/turn/ttorrent/common/Peer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choked:Z

    if-eqz v0, :cond_58

    const-string v0, "C"

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interested:Z

    if-eqz v0, :cond_5b

    const-string v0, "I"

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choking:Z

    if-eqz v0, :cond_5e

    const-string v0, "C"

    :goto_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->interesting:Z

    if-eqz v0, :cond_61

    const-string v0, "I"

    :goto_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->availablePieces:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_58
    const-string v0, "c"

    goto :goto_15

    :cond_5b
    const-string v0, "i"

    goto :goto_1f

    :cond_5e
    const-string v0, "c"

    goto :goto_2f

    :cond_61
    const-string v0, "i"

    goto :goto_39
.end method

.method public unbind(Z)V
    .registers 5
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x0

    .line 302
    if-nez p1, :cond_d

    .line 305
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->cancelPendingRequests()Ljava/util/Set;

    .line 306
    invoke-static {}, Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;->craft()Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 309
    :cond_d
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_10
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchange:Lcom/turn/ttorrent/client/peer/PeerExchange;

    if-eqz v0, :cond_1c

    .line 311
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchange:Lcom/turn/ttorrent/client/peer/PeerExchange;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/peer/PeerExchange;->close()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->exchange:Lcom/turn/ttorrent/client/peer/PeerExchange;

    .line 314
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_23

    .line 316
    invoke-direct {p0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->firePeerDisconnected()V

    .line 317
    iput-object v2, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->requestedPiece:Lcom/turn/ttorrent/client/Piece;

    .line 318
    return-void

    .line 314
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public unchoke()V
    .registers 3

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choking:Z

    if-eqz v0, :cond_15

    .line 188
    sget-object v0, Lcom/turn/ttorrent/client/peer/SharingPeer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Unchoking {}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;->craft()Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/client/peer/SharingPeer;->send(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/peer/SharingPeer;->choking:Z

    .line 192
    :cond_15
    return-void
.end method
