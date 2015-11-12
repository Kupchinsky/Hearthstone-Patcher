.class public Lcom/turn/ttorrent/tracker/TrackedTorrent;
.super Lcom/turn/ttorrent/common/Torrent;
.source "TrackedTorrent.java"


# static fields
.field private static final DEFAULT_ANNOUNCE_INTERVAL_SECONDS:I = 0xa

.field private static final DEFAULT_ANSWER_NUM_PEERS:I = 0x1e

.field public static final MIN_ANNOUNCE_INTERVAL_SECONDS:I = 0x5

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private announceInterval:I

.field private answerPeers:I

.field private peers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/tracker/TrackedPeer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/turn/ttorrent/tracker/TrackedTorrent;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/turn/ttorrent/common/Torrent;)V
    .registers 3
    .param p1, "torrent"    # Lcom/turn/ttorrent/common/Torrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Torrent;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/turn/ttorrent/tracker/TrackedTorrent;-><init>([B)V

    .line 90
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "torrent"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/turn/ttorrent/common/Torrent;-><init>([BZ)V

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    .line 84
    const/16 v0, 0x1e

    iput v0, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->answerPeers:I

    .line 85
    const/16 v0, 0xa

    iput v0, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->announceInterval:I

    .line 86
    return-void
.end method

.method public static load(Ljava/io/File;)Lcom/turn/ttorrent/tracker/TrackedTorrent;
    .registers 3
    .param p0, "torrent"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 294
    .local v0, "data":[B
    new-instance v1, Lcom/turn/ttorrent/tracker/TrackedTorrent;

    invoke-direct {v1, v0}, Lcom/turn/ttorrent/tracker/TrackedTorrent;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public addPeer(Lcom/turn/ttorrent/tracker/TrackedPeer;)V
    .registers 4
    .param p1, "peer"    # Lcom/turn/ttorrent/tracker/TrackedPeer;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/tracker/TrackedPeer;->getHexPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public collectUnfreshPeers()V
    .registers 5

    .prologue
    .line 162
    iget-object v2, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/tracker/TrackedPeer;

    .line 163
    .local v1, "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    invoke-virtual {v1}, Lcom/turn/ttorrent/tracker/TrackedPeer;->isFresh()Z

    move-result v2

    if-nez v2, :cond_a

    .line 164
    iget-object v2, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lcom/turn/ttorrent/tracker/TrackedPeer;->getHexPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 167
    .end local v1    # "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    :cond_26
    return-void
.end method

.method public getAnnounceInterval()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->announceInterval:I

    return v0
.end method

.method public getPeer(Ljava/lang/String;)Lcom/turn/ttorrent/tracker/TrackedPeer;
    .registers 3
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/tracker/TrackedPeer;

    return-object v0
.end method

.method public getPeers()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/tracker/TrackedPeer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getSomePeers(Lcom/turn/ttorrent/tracker/TrackedPeer;)Ljava/util/List;
    .registers 11
    .param p1, "peer"    # Lcom/turn/ttorrent/tracker/TrackedPeer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/turn/ttorrent/tracker/TrackedPeer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 247
    .local v5, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    new-instance v1, Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 249
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/tracker/TrackedPeer;>;"
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, "count":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/tracker/TrackedPeer;

    .line 254
    .local v0, "candidate":Lcom/turn/ttorrent/tracker/TrackedPeer;
    invoke-virtual {v0}, Lcom/turn/ttorrent/tracker/TrackedPeer;->isFresh()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v0, p1}, Lcom/turn/ttorrent/tracker/TrackedPeer;->looksLike(Lcom/turn/ttorrent/common/Peer;)Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 256
    :cond_36
    sget-object v6, Lcom/turn/ttorrent/tracker/TrackedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v7, "Collecting stale peer {}..."

    invoke-interface {v6, v7, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    iget-object v6, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcom/turn/ttorrent/tracker/TrackedPeer;->getHexPeerId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 262
    :cond_47
    invoke-virtual {p1, v0}, Lcom/turn/ttorrent/tracker/TrackedPeer;->looksLike(Lcom/turn/ttorrent/common/Peer;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 267
    invoke-virtual {v0}, Lcom/turn/ttorrent/tracker/TrackedPeer;->isFresh()Z

    move-result v6

    if-nez v6, :cond_68

    .line 268
    sget-object v6, Lcom/turn/ttorrent/tracker/TrackedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v7, "Collecting stale peer {}..."

    invoke-virtual {v0}, Lcom/turn/ttorrent/tracker/TrackedPeer;->getHexPeerId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    iget-object v6, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcom/turn/ttorrent/tracker/TrackedPeer;->getHexPeerId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 275
    :cond_68
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    iget v6, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->answerPeers:I

    if-le v2, v6, :cond_70

    move v2, v3

    .line 282
    .end local v0    # "candidate":Lcom/turn/ttorrent/tracker/TrackedPeer;
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :cond_6f
    return-object v5

    .line 279
    .end local v2    # "count":I
    .restart local v0    # "candidate":Lcom/turn/ttorrent/tracker/TrackedPeer;
    .restart local v3    # "count":I
    :cond_70
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 280
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_18
.end method

.method public leechers()I
    .registers 5

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "count":I
    iget-object v3, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/tracker/TrackedPeer;

    .line 146
    .local v2, "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    invoke-virtual {v2}, Lcom/turn/ttorrent/tracker/TrackedPeer;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 150
    .end local v2    # "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    :cond_20
    return v0
.end method

.method public removePeer(Ljava/lang/String;)Lcom/turn/ttorrent/tracker/TrackedPeer;
    .registers 3
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/tracker/TrackedPeer;

    return-object v0
.end method

.method public seeders()I
    .registers 5

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "count":I
    iget-object v3, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->peers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/tracker/TrackedPeer;

    .line 133
    .local v2, "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    invoke-virtual {v2}, Lcom/turn/ttorrent/tracker/TrackedPeer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 137
    .end local v2    # "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    :cond_20
    return v0
.end method

.method public setAnnounceInterval(I)V
    .registers 4
    .param p1, "interval"    # I

    .prologue
    .line 182
    if-gtz p1, :cond_a

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid announce interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_a
    iput p1, p0, Lcom/turn/ttorrent/tracker/TrackedTorrent;->announceInterval:I

    .line 187
    return-void
.end method

.method public update(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;IJJJ)Lcom/turn/ttorrent/tracker/TrackedPeer;
    .registers 20
    .param p1, "event"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .param p2, "peerId"    # Ljava/nio/ByteBuffer;
    .param p3, "hexPeerId"    # Ljava/lang/String;
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uploaded"    # J
    .param p8, "downloaded"    # J
    .param p10, "left"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 212
    sget-object v1, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->UNKNOWN:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    .line 214
    .local v1, "state":Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;
    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STARTED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-virtual {v2, p1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 215
    new-instance v0, Lcom/turn/ttorrent/tracker/TrackedPeer;

    invoke-direct {v0, p0, p4, p5, p2}, Lcom/turn/ttorrent/tracker/TrackedPeer;-><init>(Lcom/turn/ttorrent/common/Torrent;Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    .line 216
    .local v0, "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    sget-object v1, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->STARTED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    .line 217
    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->addPeer(Lcom/turn/ttorrent/tracker/TrackedPeer;)V

    :goto_14
    move-wide v2, p6

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    .line 231
    invoke-virtual/range {v0 .. v7}, Lcom/turn/ttorrent/tracker/TrackedPeer;->update(Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;JJJ)V

    .line 232
    return-object v0

    .line 218
    .end local v0    # "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    :cond_1d
    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STOPPED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-virtual {v2, p1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 219
    invoke-virtual {p0, p3}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->removePeer(Ljava/lang/String;)Lcom/turn/ttorrent/tracker/TrackedPeer;

    move-result-object v0

    .line 220
    .restart local v0    # "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    sget-object v1, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->STOPPED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    goto :goto_14

    .line 221
    .end local v0    # "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    :cond_2c
    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->COMPLETED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-virtual {v2, p1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 222
    invoke-virtual {p0, p3}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getPeer(Ljava/lang/String;)Lcom/turn/ttorrent/tracker/TrackedPeer;

    move-result-object v0

    .line 223
    .restart local v0    # "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    sget-object v1, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->COMPLETED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    goto :goto_14

    .line 224
    .end local v0    # "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    :cond_3b
    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->NONE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-virtual {v2, p1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 225
    invoke-virtual {p0, p3}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getPeer(Ljava/lang/String;)Lcom/turn/ttorrent/tracker/TrackedPeer;

    move-result-object v0

    .line 226
    .restart local v0    # "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    sget-object v1, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->STARTED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    goto :goto_14

    .line 228
    .end local v0    # "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    :cond_4a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unexpected announce event type!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
