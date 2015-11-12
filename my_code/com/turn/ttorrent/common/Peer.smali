.class public Lcom/turn/ttorrent/common/Peer;
.super Ljava/lang/Object;
.source "Peer.java"


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private hexPeerId:Ljava/lang/String;

.field private final hostId:Ljava/lang/String;

.field private peerId:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 59
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "peerId"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 70
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p3}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .registers 3
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "peerId"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/turn/ttorrent/common/Peer;->address:Ljava/net/InetSocketAddress;

    .line 81
    const-string v0, "%s:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/turn/ttorrent/common/Peer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/turn/ttorrent/common/Peer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/turn/ttorrent/common/Peer;->hostId:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p2}, Lcom/turn/ttorrent/common/Peer;->setPeerId(Ljava/nio/ByteBuffer;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/turn/ttorrent/common/Peer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHexPeerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/turn/ttorrent/common/Peer;->hexPeerId:Ljava/lang/String;

    return-object v0
.end method

.method public getHostIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/turn/ttorrent/common/Peer;->hostId:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/turn/ttorrent/common/Peer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerId()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/turn/ttorrent/common/Peer;->peerId:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/turn/ttorrent/common/Peer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getRawIp()[B
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/turn/ttorrent/common/Peer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    return-object v0
.end method

.method public getShortHexPeerId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 128
    const-string v0, "..%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/turn/ttorrent/common/Peer;->hexPeerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/turn/ttorrent/common/Peer;->hexPeerId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPeerId()Z
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/turn/ttorrent/common/Peer;->peerId:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public looksLike(Lcom/turn/ttorrent/common/Peer;)Z
    .registers 5
    .param p1, "other"    # Lcom/turn/ttorrent/common/Peer;

    .prologue
    const/4 v0, 0x0

    .line 193
    if-nez p1, :cond_4

    .line 197
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/turn/ttorrent/common/Peer;->hostId:Ljava/lang/String;

    iget-object v2, p1, Lcom/turn/ttorrent/common/Peer;->hostId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/Peer;->hasPeerId()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/turn/ttorrent/common/Peer;->hexPeerId:Ljava/lang/String;

    iget-object v2, p1, Lcom/turn/ttorrent/common/Peer;->hexPeerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1e
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public setPeerId(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "peerId"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v0, 0x0

    .line 108
    if-eqz p1, :cond_10

    .line 109
    iput-object p1, p0, Lcom/turn/ttorrent/common/Peer;->peerId:Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/turn/ttorrent/common/Torrent;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/turn/ttorrent/common/Peer;->hexPeerId:Ljava/lang/String;

    .line 115
    :goto_f
    return-void

    .line 112
    :cond_10
    iput-object v0, p0, Lcom/turn/ttorrent/common/Peer;->peerId:Ljava/nio/ByteBuffer;

    .line 113
    iput-object v0, p0, Lcom/turn/ttorrent/common/Peer;->hexPeerId:Ljava/lang/String;

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "peer://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/Peer;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/Peer;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/turn/ttorrent/common/Peer;->hasPeerId()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 176
    iget-object v1, p0, Lcom/turn/ttorrent/common/Peer;->hexPeerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/turn/ttorrent/common/Peer;->hexPeerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :goto_3a
    invoke-virtual {p0}, Lcom/turn/ttorrent/common/Peer;->getPort()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_47

    .line 182
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 178
    :cond_4c
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a
.end method
