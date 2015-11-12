.class public Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;
.super Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;
.source "HTTPAnnounceResponseMessage.java"

# interfaces
.implements Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;


# instance fields
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


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;IIILjava/util/List;)V
    .registers 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "interval"    # I
    .param p3, "complete"    # I
    .param p4, "incomplete"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "III",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p5, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_RESPONSE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-direct {p0, v0, p1}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    .line 54
    iput p2, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->interval:I

    .line 55
    iput p3, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->complete:I

    .line 56
    iput p4, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->incomplete:I

    .line 57
    iput-object p5, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->peers:Ljava/util/List;

    .line 58
    return-void
.end method

.method public static craft(IILjava/lang/String;IILjava/util/List;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;
    .registers 17
    .param p0, "interval"    # I
    .param p1, "minInterval"    # I
    .param p2, "trackerId"    # Ljava/lang/String;
    .param p3, "complete"    # I
    .param p4, "incomplete"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;)",
            "Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 190
    .local p5, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v10, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    const-string v0, "interval"

    new-instance v1, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-direct {v1, p0}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(I)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "complete"

    new-instance v1, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-direct {v1, p3}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(I)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "incomplete"

    new-instance v1, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-direct {v1, p4}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(I)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 196
    .local v6, "data":Ljava/nio/ByteBuffer;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/turn/ttorrent/common/Peer;

    .line 197
    .local v9, "peer":Lcom/turn/ttorrent/common/Peer;
    invoke-virtual {v9}, Lcom/turn/ttorrent/common/Peer;->getRawIp()[B

    move-result-object v8

    .line 198
    .local v8, "ip":[B
    if-eqz v8, :cond_31

    array-length v0, v8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_31

    .line 201
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 202
    invoke-virtual {v9}, Lcom/turn/ttorrent/common/Peer;->getPort()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_31

    .line 204
    .end local v8    # "ip":[B
    .end local v9    # "peer":Lcom/turn/ttorrent/common/Peer;
    :cond_53
    const-string v0, "peers"

    new-instance v1, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>([B)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;

    invoke-static {v10}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move v2, p0

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;-><init>(Ljava/nio/ByteBuffer;IIILjava/util/List;)V

    return-object v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;
    .registers 11
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-static {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecode(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v6

    .line 83
    .local v6, "decoded":Lcom/turn/ttorrent/bcodec/BEValue;
    if-nez v6, :cond_f

    .line 84
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Could not decode tracker message (not B-encoded?)!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_f
    invoke-virtual {v6}, Lcom/turn/ttorrent/bcodec/BEValue;->getMap()Ljava/util/Map;

    move-result-object v8

    .line 90
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    const-string v0, "interval"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    .line 91
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Tracker message missing mandatory field \'interval\'!"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_23
    :try_start_23
    const-string v0, "peers"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v0}, Lcom/turn/ttorrent/bcodec/BEValue;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->toPeerList([B)Ljava/util/List;
    :try_end_32
    .catch Lcom/turn/ttorrent/bcodec/InvalidBEncodingException; {:try_start_23 .. :try_end_32} :catch_6e
    .catch Ljava/net/UnknownHostException; {:try_start_23 .. :try_end_32} :catch_8b

    move-result-object v5

    .line 108
    .local v5, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    :goto_33
    :try_start_33
    new-instance v0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;

    const-string v1, "interval"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v1}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v2

    const-string v1, "complete"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_80

    const-string v1, "complete"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v1}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v3

    :goto_55
    const-string v1, "incomplete"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_69

    const-string v1, "incomplete"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v1}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v4

    :cond_69
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;-><init>(Ljava/nio/ByteBuffer;IIILjava/util/List;)V

    return-object v0

    .line 102
    .end local v5    # "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    :catch_6e
    move-exception v7

    .line 105
    .local v7, "ibee":Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
    const-string v0, "peers"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v0}, Lcom/turn/ttorrent/bcodec/BEValue;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->toPeerList(Ljava/util/List;)Ljava/util/List;
    :try_end_7e
    .catch Lcom/turn/ttorrent/bcodec/InvalidBEncodingException; {:try_start_33 .. :try_end_7e} :catch_82
    .catch Ljava/net/UnknownHostException; {:try_start_33 .. :try_end_7e} :catch_8b

    move-result-object v5

    .restart local v5    # "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    goto :goto_33

    .end local v7    # "ibee":Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
    :cond_80
    move v3, v4

    .line 108
    goto :goto_55

    .line 113
    .end local v5    # "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    :catch_82
    move-exception v7

    .line 114
    .restart local v7    # "ibee":Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Invalid response from tracker!"

    invoke-direct {v0, v1, v7}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 116
    .end local v7    # "ibee":Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
    :catch_8b
    move-exception v9

    .line 117
    .local v9, "uhe":Ljava/net/UnknownHostException;
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v1, "Invalid peer in tracker response!"

    invoke-direct {v0, v1, v9}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static toPeerList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 135
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/bcodec/BEValue;

    .line 136
    .local v1, "peer":Lcom/turn/ttorrent/bcodec/BEValue;
    invoke-virtual {v1}, Lcom/turn/ttorrent/bcodec/BEValue;->getMap()Ljava/util/Map;

    move-result-object v2

    .line 137
    .local v2, "peerInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    new-instance v5, Lcom/turn/ttorrent/common/Peer;

    const-string v4, "ip"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/turn/ttorrent/bcodec/BEValue;

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v6}, Lcom/turn/ttorrent/bcodec/BEValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "port"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v4}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 142
    .end local v1    # "peer":Lcom/turn/ttorrent/bcodec/BEValue;
    .end local v2    # "peerInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    :cond_3c
    return-object v3
.end method

.method private static toPeerList([B)Ljava/util/List;
    .registers 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 156
    array-length v6, p0

    rem-int/lit8 v6, v6, 0x6

    if-eqz v6, :cond_d

    .line 157
    new-instance v6, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    const-string v7, "Invalid peers binary information string!"

    invoke-direct {v6, v7}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 161
    :cond_d
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 162
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 164
    .local v3, "peers":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v6, p0

    div-int/lit8 v6, v6, 0x6

    if-ge v0, v6, :cond_46

    .line 165
    const/4 v6, 0x4

    new-array v2, v6, [B

    .line 166
    .local v2, "ipBytes":[B
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 167
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 168
    .local v1, "ip":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int v4, v6, v7

    .line 171
    .local v4, "port":I
    new-instance v6, Lcom/turn/ttorrent/common/Peer;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v6, v7}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/net/InetSocketAddress;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 174
    .end local v1    # "ip":Ljava/net/InetAddress;
    .end local v2    # "ipBytes":[B
    .end local v4    # "port":I
    :cond_46
    return-object v5
.end method


# virtual methods
.method public getComplete()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->complete:I

    return v0
.end method

.method public getIncomplete()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->incomplete:I

    return v0
.end method

.method public getInterval()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->interval:I

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
    .line 77
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->peers:Ljava/util/List;

    return-object v0
.end method
