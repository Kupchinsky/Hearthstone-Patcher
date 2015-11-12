.class public Lcom/turn/ttorrent/tracker/TrackerService;
.super Ljava/lang/Object;
.source "TrackerService.java"

# interfaces
.implements Lorg/simpleframework/http/core/Container;


# static fields
.field private static final NUMERIC_REQUEST_FIELDS:[Ljava/lang/String;

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final torrents:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/tracker/TrackedTorrent;",
            ">;"
        }
    .end annotation
.end field

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    const-class v0, Lcom/turn/ttorrent/tracker/TrackerService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/tracker/TrackerService;->logger:Lorg/slf4j/Logger;

    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uploaded"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "downloaded"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "left"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "no_peer_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numwant"

    aput-object v2, v0, v1

    sput-object v0, Lcom/turn/ttorrent/tracker/TrackerService;->NUMERIC_REQUEST_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 3
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/tracker/TrackedTorrent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "torrents":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lcom/turn/ttorrent/tracker/TrackedTorrent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/turn/ttorrent/tracker/TrackerService;->version:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/turn/ttorrent/tracker/TrackerService;->torrents:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    return-void
.end method

.method private parseQuery(Lorg/simpleframework/http/Request;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;
    .registers 14
    .param p1, "request"    # Lorg/simpleframework/http/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 256
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    :try_start_6
    invoke-interface {p1}, Lorg/simpleframework/http/Request;->getAddress()Lorg/simpleframework/http/Address;

    move-result-object v8

    invoke-interface {v8}, Lorg/simpleframework/http/Address;->toString()Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, "uri":Ljava/lang/String;
    const-string v8, "[?]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1f
    if-ge v2, v4, :cond_45

    aget-object v5, v0, v2

    .line 261
    .local v5, "pair":Ljava/lang/String;
    const-string v8, "[=]"

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "keyval":[Ljava/lang/String;
    array-length v8, v3

    if-ne v8, v10, :cond_37

    .line 263
    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x0

    invoke-direct {p0, v6, v8, v9}, Lcom/turn/ttorrent/tracker/TrackerService;->recordParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 265
    :cond_37
    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-direct {p0, v6, v8, v9}, Lcom/turn/ttorrent/tracker/TrackerService;->recordParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_40} :catch_41

    goto :goto_34

    .line 268
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "keyval":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "pair":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    :catch_41
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 274
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_45
    const-string v8, "ip"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_65

    .line 275
    const-string v8, "ip"

    new-instance v9, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-interface {p1}, Lorg/simpleframework/http/Request;->getClientAddress()Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ISO-8859-1"

    invoke-direct {v9, v10, v11}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_65
    invoke-static {v6}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {v8}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;

    move-result-object v8

    return-object v8
.end method

.method private process(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/Response;Ljava/io/OutputStream;)V
    .registers 28
    .param p1, "request"    # Lorg/simpleframework/http/Request;
    .param p2, "response"    # Lorg/simpleframework/http/Response;
    .param p3, "body"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v6, "Content-Type"

    const-string v7, "text/plain"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lorg/simpleframework/http/Response;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v6, "Server"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/turn/ttorrent/tracker/TrackerService;->version:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lorg/simpleframework/http/Response;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v6, "Date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v8, v9}, Lorg/simpleframework/http/Response;->setDate(Ljava/lang/String;J)V

    .line 152
    const/16 v16, 0x0

    .line 154
    .local v16, "announceRequest":Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;
    :try_start_21
    invoke-direct/range {p0 .. p1}, Lcom/turn/ttorrent/tracker/TrackerService;->parseQuery(Lorg/simpleframework/http/Request;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;
    :try_end_24
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_21 .. :try_end_24} :catch_4e

    move-result-object v16

    .line 162
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/turn/ttorrent/tracker/TrackerService;->torrents:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getHexInfoHash()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/turn/ttorrent/tracker/TrackedTorrent;

    .line 164
    .local v4, "torrent":Lcom/turn/ttorrent/tracker/TrackedTorrent;
    if-nez v4, :cond_5f

    .line 165
    sget-object v6, Lcom/turn/ttorrent/tracker/TrackerService;->logger:Lorg/slf4j/Logger;

    const-string v7, "Requested torrent hash was: {}"

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getHexInfoHash()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    sget-object v6, Lorg/simpleframework/http/Status;->BAD_REQUEST:Lorg/simpleframework/http/Status;

    sget-object v7, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->UNKNOWN_TORRENT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/turn/ttorrent/tracker/TrackerService;->serveError(Lorg/simpleframework/http/Response;Ljava/io/OutputStream;Lorg/simpleframework/http/Status;Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;)V

    .line 230
    .end local v4    # "torrent":Lcom/turn/ttorrent/tracker/TrackedTorrent;
    :goto_4d
    return-void

    .line 155
    :catch_4e
    move-exception v21

    .line 156
    .local v21, "mve":Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
    sget-object v6, Lorg/simpleframework/http/Status;->BAD_REQUEST:Lorg/simpleframework/http/Status;

    invoke-virtual/range {v21 .. v21}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/turn/ttorrent/tracker/TrackerService;->serveError(Lorg/simpleframework/http/Response;Ljava/io/OutputStream;Lorg/simpleframework/http/Status;Ljava/lang/String;)V

    goto :goto_4d

    .line 172
    .end local v21    # "mve":Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
    .restart local v4    # "torrent":Lcom/turn/ttorrent/tracker/TrackedTorrent;
    :cond_5f
    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getEvent()Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    move-result-object v5

    .line 173
    .local v5, "event":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getHexPeerId()Ljava/lang/String;

    move-result-object v23

    .line 179
    .local v23, "peerId":Ljava/lang/String;
    if-eqz v5, :cond_71

    sget-object v6, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->NONE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-virtual {v6, v5}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    :cond_71
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getPeer(Ljava/lang/String;)Lcom/turn/ttorrent/tracker/TrackedPeer;

    move-result-object v6

    if-nez v6, :cond_7b

    .line 182
    sget-object v5, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STARTED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .line 190
    :cond_7b
    if-eqz v5, :cond_9b

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getPeer(Ljava/lang/String;)Lcom/turn/ttorrent/tracker/TrackedPeer;

    move-result-object v6

    if-nez v6, :cond_9b

    sget-object v6, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STARTED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-virtual {v6, v5}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 192
    sget-object v6, Lorg/simpleframework/http/Status;->BAD_REQUEST:Lorg/simpleframework/http/Status;

    sget-object v7, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->INVALID_EVENT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/turn/ttorrent/tracker/TrackerService;->serveError(Lorg/simpleframework/http/Response;Ljava/io/OutputStream;Lorg/simpleframework/http/Status;Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;)V

    goto :goto_4d

    .line 198
    :cond_9b
    const/16 v22, 0x0

    .line 200
    .local v22, "peer":Lcom/turn/ttorrent/tracker/TrackedPeer;
    :try_start_9d
    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getPeerId()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getHexPeerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getIp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getPort()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getUploaded()J

    move-result-wide v10

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getDownloaded()J

    move-result-wide v12

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getLeft()J

    move-result-wide v14

    invoke-virtual/range {v4 .. v15}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->update(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;IJJJ)Lcom/turn/ttorrent/tracker/TrackedPeer;
    :try_end_c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_c0} :catch_ff

    move-result-object v22

    .line 215
    const/16 v17, 0x0

    .line 217
    .local v17, "announceResponse":Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;
    :try_start_c3
    invoke-virtual {v4}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getAnnounceInterval()I

    move-result v6

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/turn/ttorrent/tracker/TrackerService;->version:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->seeders()I

    move-result v9

    invoke-virtual {v4}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->leechers()I

    move-result v10

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getSomePeers(Lcom/turn/ttorrent/tracker/TrackedPeer;)Ljava/util/List;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->craft(IILjava/lang/String;IILjava/util/List;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;

    move-result-object v17

    .line 224
    invoke-static/range {p3 .. p3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v18

    .line 225
    .local v18, "channel":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual/range {v17 .. v17}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_eb} :catch_ed

    goto/16 :goto_4d

    .line 226
    .end local v18    # "channel":Ljava/nio/channels/WritableByteChannel;
    :catch_ed
    move-exception v19

    .line 227
    .local v19, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/simpleframework/http/Status;->INTERNAL_SERVER_ERROR:Lorg/simpleframework/http/Status;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/turn/ttorrent/tracker/TrackerService;->serveError(Lorg/simpleframework/http/Response;Ljava/io/OutputStream;Lorg/simpleframework/http/Status;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 208
    .end local v17    # "announceResponse":Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_ff
    move-exception v20

    .line 209
    .local v20, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lorg/simpleframework/http/Status;->BAD_REQUEST:Lorg/simpleframework/http/Status;

    sget-object v7, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->INVALID_EVENT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/turn/ttorrent/tracker/TrackerService;->serveError(Lorg/simpleframework/http/Response;Ljava/io/OutputStream;Lorg/simpleframework/http/Status;Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;)V

    goto/16 :goto_4d
.end method

.method private recordParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    :try_start_0
    const-string v5, "ISO-8859-1"

    invoke-static {p3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 289
    sget-object v0, Lcom/turn/ttorrent/tracker/TrackerService;->NUMERIC_REQUEST_FIELDS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a
    if-ge v2, v3, :cond_24

    aget-object v1, v0, v2

    .line 290
    .local v1, "f":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 291
    new-instance v5, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/Number;)V

    invoke-interface {p1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "f":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_20
    return-void

    .line 289
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "f":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 296
    .end local v1    # "f":Ljava/lang/String;
    :cond_24
    new-instance v5, Lcom/turn/ttorrent/bcodec/BEValue;

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, p3, v6}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_20

    .line 297
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catch_2f
    move-exception v4

    .line 299
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    goto :goto_20
.end method

.method private serveError(Lorg/simpleframework/http/Response;Ljava/io/OutputStream;Lorg/simpleframework/http/Status;Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;)V
    .registers 6
    .param p1, "response"    # Lorg/simpleframework/http/Response;
    .param p2, "body"    # Ljava/io/OutputStream;
    .param p3, "status"    # Lorg/simpleframework/http/Status;
    .param p4, "reason"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/turn/ttorrent/tracker/TrackerService;->serveError(Lorg/simpleframework/http/Response;Ljava/io/OutputStream;Lorg/simpleframework/http/Status;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private serveError(Lorg/simpleframework/http/Response;Ljava/io/OutputStream;Lorg/simpleframework/http/Status;Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;)V
    .registers 9
    .param p1, "response"    # Lorg/simpleframework/http/Response;
    .param p2, "body"    # Ljava/io/OutputStream;
    .param p3, "status"    # Lorg/simpleframework/http/Status;
    .param p4, "error"    # Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p3}, Lorg/simpleframework/http/Status;->getCode()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/simpleframework/http/Response;->setCode(I)V

    .line 315
    invoke-virtual {p3}, Lorg/simpleframework/http/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/simpleframework/http/Response;->setText(Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/turn/ttorrent/tracker/TrackerService;->logger:Lorg/slf4j/Logger;

    const-string v2, "Could not process announce request ({}) !"

    invoke-virtual {p4}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    invoke-static {p2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    .line 320
    .local v0, "channel":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual {p4}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 321
    return-void
.end method

.method private serveError(Lorg/simpleframework/http/Response;Ljava/io/OutputStream;Lorg/simpleframework/http/Status;Ljava/lang/String;)V
    .registers 8
    .param p1, "response"    # Lorg/simpleframework/http/Response;
    .param p2, "body"    # Ljava/io/OutputStream;
    .param p3, "status"    # Lorg/simpleframework/http/Status;
    .param p4, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    :try_start_0
    invoke-static {p4}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;->craft(Ljava/lang/String;)Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/turn/ttorrent/tracker/TrackerService;->serveError(Lorg/simpleframework/http/Response;Ljava/io/OutputStream;Lorg/simpleframework/http/Status;Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;)V
    :try_end_7
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_0 .. :try_end_7} :catch_8

    .line 339
    :goto_7
    return-void

    .line 336
    :catch_8
    move-exception v0

    .line 337
    .local v0, "mve":Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
    sget-object v1, Lcom/turn/ttorrent/tracker/TrackerService;->logger:Lorg/slf4j/Logger;

    const-string v2, "Could not craft tracker error message!"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method


# virtual methods
.method public handle(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/Response;)V
    .registers 8
    .param p1, "request"    # Lorg/simpleframework/http/Request;
    .param p2, "response"    # Lorg/simpleframework/http/Response;

    .prologue
    .line 107
    const-string v2, "/announce"

    invoke-interface {p1}, Lorg/simpleframework/http/Request;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v3

    invoke-interface {v3}, Lorg/simpleframework/http/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 108
    const/16 v2, 0x194

    invoke-interface {p2, v2}, Lorg/simpleframework/http/Response;->setCode(I)V

    .line 109
    const-string v2, "Not Found"

    invoke-interface {p2, v2}, Lorg/simpleframework/http/Response;->setText(Ljava/lang/String;)V

    .line 123
    :goto_1a
    return-void

    .line 113
    :cond_1b
    const/4 v0, 0x0

    .line 115
    .local v0, "body":Ljava/io/OutputStream;
    :try_start_1c
    invoke-interface {p2}, Lorg/simpleframework/http/Response;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcom/turn/ttorrent/tracker/TrackerService;->process(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/Response;Ljava/io/OutputStream;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_26} :catch_2a
    .catchall {:try_start_1c .. :try_end_26} :catchall_3a

    .line 121
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1a

    .line 118
    :catch_2a
    move-exception v1

    .line 119
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_2b
    sget-object v2, Lcom/turn/ttorrent/tracker/TrackerService;->logger:Lorg/slf4j/Logger;

    const-string v3, "Error while writing response: {}!"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_3a

    .line 121
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1a

    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_3a
    move-exception v2

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2
.end method
