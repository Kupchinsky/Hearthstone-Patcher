.class public Lcom/turn/ttorrent/client/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# static fields
.field public static final BASE_HANDSHAKE_LENGTH:I = 0x31

.field public static final BITTORRENT_PROTOCOL_IDENTIFIER:Ljava/lang/String; = "BitTorrent protocol"


# instance fields
.field data:Ljava/nio/ByteBuffer;

.field infoHash:Ljava/nio/ByteBuffer;

.field peerId:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "infoHash"    # Ljava/nio/ByteBuffer;
    .param p3, "peerId"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/turn/ttorrent/client/Handshake;->data:Ljava/nio/ByteBuffer;

    .line 42
    iget-object v0, p0, Lcom/turn/ttorrent/client/Handshake;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 44
    iput-object p2, p0, Lcom/turn/ttorrent/client/Handshake;->infoHash:Ljava/nio/ByteBuffer;

    .line 45
    iput-object p3, p0, Lcom/turn/ttorrent/client/Handshake;->peerId:Ljava/nio/ByteBuffer;

    .line 46
    return-void
.end method

.method public static craft([B[B)Lcom/turn/ttorrent/client/Handshake;
    .registers 9
    .param p0, "torrentInfoHash"    # [B
    .param p1, "clientPeerId"    # [B

    .prologue
    .line 93
    :try_start_0
    const-string v5, "BitTorrent protocol"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x31

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/16 v5, 0x8

    new-array v3, v5, [B

    .line 98
    .local v3, "reserved":[B
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 99
    .local v1, "infoHash":Ljava/nio/ByteBuffer;
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 101
    .local v2, "peerId":Ljava/nio/ByteBuffer;
    const-string v5, "BitTorrent protocol"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 103
    const-string v5, "BitTorrent protocol"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 109
    new-instance v5, Lcom/turn/ttorrent/client/Handshake;

    invoke-direct {v5, v0, v1, v2}, Lcom/turn/ttorrent/client/Handshake;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 111
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "infoHash":Ljava/nio/ByteBuffer;
    .end local v2    # "peerId":Ljava/nio/ByteBuffer;
    .end local v3    # "reserved":[B
    :goto_3b
    return-object v5

    .line 110
    :catch_3c
    move-exception v4

    .line 111
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    const/4 v5, 0x0

    goto :goto_3b
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/client/Handshake;
    .registers 10
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x14

    .line 62
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->intValue()I

    move-result v3

    .line 63
    .local v3, "pstrlen":I
    if-ltz v3, :cond_1a

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/lit8 v6, v3, 0x31

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_3a

    .line 65
    :cond_1a
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect handshake message length (pstrlen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 70
    :cond_3a
    new-array v2, v3, [B

    .line 71
    .local v2, "pstr":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 73
    const-string v5, "BitTorrent protocol"

    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 75
    new-instance v5, Ljava/text/ParseException;

    const-string v6, "Invalid protocol identifier!"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 79
    :cond_57
    const/16 v5, 0x8

    new-array v4, v5, [B

    .line 80
    .local v4, "reserved":[B
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    new-array v0, v8, [B

    .line 83
    .local v0, "infoHash":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    new-array v1, v8, [B

    .line 85
    .local v1, "peerId":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 86
    new-instance v5, Lcom/turn/ttorrent/client/Handshake;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/turn/ttorrent/client/Handshake;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-object v5
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/turn/ttorrent/client/Handshake;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getInfoHash()[B
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/turn/ttorrent/client/Handshake;->infoHash:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getPeerId()[B
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/turn/ttorrent/client/Handshake;->peerId:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
