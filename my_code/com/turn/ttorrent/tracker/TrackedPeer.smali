.class public Lcom/turn/ttorrent/tracker/TrackedPeer;
.super Lcom/turn/ttorrent/common/Peer;
.source "TrackedPeer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;
    }
.end annotation


# static fields
.field private static final FRESH_TIME_SECONDS:I = 0x1e

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private downloaded:J

.field private lastAnnounce:Ljava/util/Date;

.field private left:J

.field private state:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

.field private torrent:Lcom/turn/ttorrent/common/Torrent;

.field private uploaded:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/turn/ttorrent/tracker/TrackedPeer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/turn/ttorrent/common/Torrent;Ljava/lang/String;ILjava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "torrent"    # Lcom/turn/ttorrent/common/Torrent;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "peerId"    # Ljava/nio/ByteBuffer;

    .prologue
    const-wide/16 v2, 0x0

    .line 105
    invoke-direct {p0, p2, p3, p4}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    .line 106
    iput-object p1, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->torrent:Lcom/turn/ttorrent/common/Torrent;

    .line 109
    sget-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->UNKNOWN:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    iput-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->state:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->lastAnnounce:Ljava/util/Date;

    .line 112
    iput-wide v2, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->uploaded:J

    .line 113
    iput-wide v2, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->downloaded:J

    .line 114
    iput-wide v2, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->left:J

    .line 115
    return-void
.end method


# virtual methods
.method public getDownloaded()J
    .registers 3

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->downloaded:J

    return-wide v0
.end method

.method public getLeft()J
    .registers 3

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->left:J

    return-wide v0
.end method

.method public getUploaded()J
    .registers 3

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->uploaded:J

    return-wide v0
.end method

.method public isCompleted()Z
    .registers 3

    .prologue
    .line 157
    sget-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->COMPLETED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    iget-object v1, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->state:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    invoke-virtual {v0, v1}, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFresh()Z
    .registers 5

    .prologue
    .line 191
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->lastAnnounce:Ljava/util/Date;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->lastAnnounce:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public toBEValue()Lcom/turn/ttorrent/bcodec/BEValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v0, "peer":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    invoke-virtual {p0}, Lcom/turn/ttorrent/tracker/TrackedPeer;->hasPeerId()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 206
    const-string v1, "peer id"

    new-instance v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {p0}, Lcom/turn/ttorrent/tracker/TrackedPeer;->getPeerId()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>([B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1d
    const-string v1, "ip"

    new-instance v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {p0}, Lcom/turn/ttorrent/tracker/TrackedPeer;->getIp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, v3, v4}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "port"

    new-instance v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {p0}, Lcom/turn/ttorrent/tracker/TrackedPeer;->getPort()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v1, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-direct {v1, v0}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public update(Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;JJJ)V
    .registers 14
    .param p1, "state"    # Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;
    .param p2, "uploaded"    # J
    .param p4, "downloaded"    # J
    .param p6, "left"    # J

    .prologue
    .line 132
    sget-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->STARTED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    invoke-virtual {v0, p1}, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-nez v0, :cond_10

    .line 133
    sget-object p1, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->COMPLETED:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    .line 136
    :cond_10
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->state:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    invoke-virtual {p1, v0}, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 137
    sget-object v0, Lcom/turn/ttorrent/tracker/TrackedPeer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Peer {} {} download of {}."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->torrent:Lcom/turn/ttorrent/common/Torrent;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_35
    iput-object p1, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->state:Lcom/turn/ttorrent/tracker/TrackedPeer$PeerState;

    .line 146
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->lastAnnounce:Ljava/util/Date;

    .line 147
    iput-wide p2, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->uploaded:J

    .line 148
    iput-wide p4, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->downloaded:J

    .line 149
    iput-wide p6, p0, Lcom/turn/ttorrent/tracker/TrackedPeer;->left:J

    .line 150
    return-void
.end method
