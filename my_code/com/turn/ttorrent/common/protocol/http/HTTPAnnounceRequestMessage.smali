.class public Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;
.super Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;
.source "HTTPAnnounceRequestMessage.java"

# interfaces
.implements Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage;


# instance fields
.field private final compact:Z

.field private final downloaded:J

.field private final event:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

.field private final infoHash:[B

.field private final left:J

.field private final noPeerId:Z

.field private final numWant:I

.field private final peer:Lcom/turn/ttorrent/common/Peer;

.field private final uploaded:J


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;[BLcom/turn/ttorrent/common/Peer;JJJZZLcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;I)V
    .registers 16
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "infoHash"    # [B
    .param p3, "peer"    # Lcom/turn/ttorrent/common/Peer;
    .param p4, "uploaded"    # J
    .param p6, "downloaded"    # J
    .param p8, "left"    # J
    .param p10, "compact"    # Z
    .param p11, "noPeerId"    # Z
    .param p12, "event"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .param p13, "numWant"    # I

    .prologue
    .line 65
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-direct {p0, v0, p1}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    .line 66
    iput-object p2, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->infoHash:[B

    .line 67
    iput-object p3, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->peer:Lcom/turn/ttorrent/common/Peer;

    .line 68
    iput-wide p6, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->downloaded:J

    .line 69
    iput-wide p4, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->uploaded:J

    .line 70
    iput-wide p8, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->left:J

    .line 71
    iput-boolean p10, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->compact:Z

    .line 72
    iput-boolean p11, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->noPeerId:Z

    .line 73
    iput-object p12, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->event:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .line 74
    iput p13, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->numWant:I

    .line 75
    return-void
.end method

.method public static craft([B[BIJJJZZLcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Ljava/lang/String;I)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;
    .registers 31
    .param p0, "infoHash"    # [B
    .param p1, "peerId"    # [B
    .param p2, "port"    # I
    .param p3, "uploaded"    # J
    .param p5, "downloaded"    # J
    .param p7, "left"    # J
    .param p9, "compact"    # Z
    .param p10, "noPeerId"    # Z
    .param p11, "event"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .param p12, "ip"    # Ljava/lang/String;
    .param p13, "numWant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v16, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    const-string v2, "info_hash"

    new-instance v3, Lcom/turn/ttorrent/bcodec/BEValue;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>([B)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v2, "peer_id"

    new-instance v3, Lcom/turn/ttorrent/bcodec/BEValue;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>([B)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v2, "port"

    new-instance v3, Lcom/turn/ttorrent/bcodec/BEValue;

    move/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(I)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v2, "uploaded"

    new-instance v3, Lcom/turn/ttorrent/bcodec/BEValue;

    move-wide/from16 v0, p3

    invoke-direct {v3, v0, v1}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(J)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "downloaded"

    new-instance v3, Lcom/turn/ttorrent/bcodec/BEValue;

    move-wide/from16 v0, p5

    invoke-direct {v3, v0, v1}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(J)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v2, "left"

    new-instance v3, Lcom/turn/ttorrent/bcodec/BEValue;

    move-wide/from16 v0, p7

    invoke-direct {v3, v0, v1}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(J)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v3, "compact"

    new-instance v4, Lcom/turn/ttorrent/bcodec/BEValue;

    if-eqz p9, :cond_d8

    const/4 v2, 0x1

    :goto_60
    invoke-direct {v4, v2}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(I)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v3, "no_peer_id"

    new-instance v4, Lcom/turn/ttorrent/bcodec/BEValue;

    if-eqz p10, :cond_da

    const/4 v2, 0x1

    :goto_6f
    invoke-direct {v4, v2}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(I)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    if-eqz p11, :cond_8b

    .line 282
    const-string v2, "event"

    new-instance v3, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {p11 .. p11}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->getEventName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_8b
    if-eqz p12, :cond_9d

    .line 287
    const-string v2, "ip"

    new-instance v3, Lcom/turn/ttorrent/bcodec/BEValue;

    const-string v4, "ISO-8859-1"

    move-object/from16 v0, p12

    invoke-direct {v3, v0, v4}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_9d
    const/16 v2, 0x32

    move/from16 v0, p13

    if-eq v0, v2, :cond_b1

    .line 292
    const-string v2, "numwant"

    new-instance v3, Lcom/turn/ttorrent/bcodec/BEValue;

    move/from16 v0, p13

    invoke-direct {v3, v0}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(I)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_b1
    new-instance v2, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;

    invoke-static/range {v16 .. v16}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v3

    new-instance v5, Lcom/turn/ttorrent/common/Peer;

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p12

    move/from16 v1, p2

    invoke-direct {v5, v0, v1, v4}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    move-object/from16 v4, p0

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p13

    invoke-direct/range {v2 .. v15}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;-><init>(Ljava/nio/ByteBuffer;[BLcom/turn/ttorrent/common/Peer;JJJZZLcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;I)V

    return-object v2

    .line 278
    :cond_d8
    const/4 v2, 0x0

    goto :goto_60

    .line 279
    :cond_da
    const/4 v2, 0x0

    goto :goto_6f
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;
    .registers 23
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static/range {p0 .. p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecode(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v16

    .line 183
    .local v16, "decoded":Lcom/turn/ttorrent/bcodec/BEValue;
    if-nez v16, :cond_e

    .line 184
    new-instance v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v3, "Could not decode tracker message (not B-encoded?)!"

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/bcodec/BEValue;->getMap()Ljava/util/Map;

    move-result-object v19

    .line 190
    .local v19, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    const-string v2, "info_hash"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 191
    new-instance v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    sget-object v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->MISSING_HASH:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    invoke-virtual {v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_28
    const-string v2, "peer_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 196
    new-instance v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    sget-object v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->MISSING_PEER_ID:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    invoke-virtual {v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_3e
    const-string v2, "port"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 201
    new-instance v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    sget-object v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->MISSING_PORT:Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;

    invoke-virtual {v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_54
    :try_start_54
    const-string v2, "info_hash"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v2}, Lcom/turn/ttorrent/bcodec/BEValue;->getBytes()[B

    move-result-object v4

    .line 207
    .local v4, "infoHash":[B
    const-string v2, "peer_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v2}, Lcom/turn/ttorrent/bcodec/BEValue;->getBytes()[B

    move-result-object v20

    .line 208
    .local v20, "peerId":[B
    const-string v2, "port"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v2}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v21

    .line 212
    .local v21, "port":I
    const-wide/16 v6, 0x0

    .line 213
    .local v6, "uploaded":J
    const-string v2, "uploaded"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 214
    const-string v2, "uploaded"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v2}, Lcom/turn/ttorrent/bcodec/BEValue;->getLong()J

    move-result-wide v6

    .line 217
    :cond_98
    const-wide/16 v8, 0x0

    .line 218
    .local v8, "downloaded":J
    const-string v2, "downloaded"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 219
    const-string v2, "downloaded"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v2}, Lcom/turn/ttorrent/bcodec/BEValue;->getLong()J

    move-result-wide v8

    .line 224
    :cond_b2
    const-wide/16 v10, -0x1

    .line 225
    .local v10, "left":J
    const-string v2, "left"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 226
    const-string v2, "left"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v2}, Lcom/turn/ttorrent/bcodec/BEValue;->getLong()J

    move-result-wide v10

    .line 229
    :cond_cc
    const/4 v12, 0x0

    .line 230
    .local v12, "compact":Z
    const-string v2, "compact"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 231
    const-string v2, "compact"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v2}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_171

    const/4 v12, 0x1

    .line 234
    :cond_e9
    :goto_e9
    const/4 v13, 0x0

    .line 235
    .local v13, "noPeerId":Z
    const-string v2, "no_peer_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 236
    const-string v2, "no_peer_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v2}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_174

    const/4 v13, 0x1

    .line 239
    :cond_106
    :goto_106
    const/16 v15, 0x32

    .line 240
    .local v15, "numWant":I
    const-string v2, "numwant"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 241
    const-string v2, "numwant"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v2}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v15

    .line 244
    :cond_120
    const/16 v18, 0x0

    .line 245
    .local v18, "ip":Ljava/lang/String;
    const-string v2, "ip"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 246
    const-string v2, "ip"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lcom/turn/ttorrent/bcodec/BEValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 249
    :cond_13c
    sget-object v14, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->NONE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .line 250
    .local v14, "event":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    const-string v2, "event"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 251
    const-string v2, "event"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/bcodec/BEValue;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lcom/turn/ttorrent/bcodec/BEValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->getByName(Ljava/lang/String;)Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    move-result-object v14

    .line 255
    :cond_15c
    new-instance v2, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;

    new-instance v5, Lcom/turn/ttorrent/common/Peer;

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v5, v0, v1, v3}, Lcom/turn/ttorrent/common/Peer;-><init>(Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v15}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;-><init>(Ljava/nio/ByteBuffer;[BLcom/turn/ttorrent/common/Peer;JJJZZLcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;I)V
    :try_end_170
    .catch Lcom/turn/ttorrent/bcodec/InvalidBEncodingException; {:try_start_54 .. :try_end_170} :catch_176

    return-object v2

    .line 231
    .end local v13    # "noPeerId":Z
    .end local v14    # "event":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .end local v15    # "numWant":I
    .end local v18    # "ip":Ljava/lang/String;
    :cond_171
    const/4 v12, 0x0

    goto/16 :goto_e9

    .line 236
    .restart local v13    # "noPeerId":Z
    :cond_174
    const/4 v13, 0x0

    goto :goto_106

    .line 259
    .end local v4    # "infoHash":[B
    .end local v6    # "uploaded":J
    .end local v8    # "downloaded":J
    .end local v10    # "left":J
    .end local v12    # "compact":Z
    .end local v13    # "noPeerId":Z
    .end local v20    # "peerId":[B
    .end local v21    # "port":I
    :catch_176
    move-exception v17

    .line 260
    .local v17, "ibee":Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
    new-instance v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v3, "Invalid HTTP tracker request!"

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public buildAnnounceURL(Ljava/net/URL;)Ljava/net/URL;
    .registers 10
    .param p1, "trackerAnnounceURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "url":Ljava/lang/StringBuilder;
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string v2, "&"

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "info_hash="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getInfoHash()[B

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v6, "ISO-8859-1"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&peer_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getPeerId()[B

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v6, "ISO-8859-1"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&port="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getPort()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&uploaded="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getUploaded()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&downloaded="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getDownloaded()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&left="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getLeft()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&compact="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getCompact()Z

    move-result v2

    if-eqz v2, :cond_eb

    move v2, v3

    :goto_94
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&no_peer_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getNoPeerIds()Z

    move-result v5

    if-eqz v5, :cond_ed

    :goto_a4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getEvent()Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    move-result-object v2

    if-eqz v2, :cond_ca

    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->NONE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getEvent()Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ca

    .line 170
    const-string v2, "&event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getEvent()Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_ca
    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getIp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_dd

    .line 174
    const-string v2, "&ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_dd
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 152
    :cond_e7
    const-string v2, "?"

    goto/16 :goto_15

    :cond_eb
    move v2, v4

    goto :goto_94

    :cond_ed
    move v3, v4

    goto :goto_a4
.end method

.method public getCompact()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->compact:Z

    return v0
.end method

.method public getDownloaded()J
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->downloaded:J

    return-wide v0
.end method

.method public getEvent()Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->event:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    return-object v0
.end method

.method public getHexInfoHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->infoHash:[B

    invoke-static {v0}, Lcom/turn/ttorrent/common/Torrent;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHexPeerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/Peer;->getHexPeerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoHash()[B
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->infoHash:[B

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/Peer;->getIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()J
    .registers 3

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->left:J

    return-wide v0
.end method

.method public getNoPeerIds()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->noPeerId:Z

    return v0
.end method

.method public getNumWant()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->numWant:I

    return v0
.end method

.method public getPeerId()[B
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/Peer;->getPeerId()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/Peer;->getPort()I

    move-result v0

    return v0
.end method

.method public getUploaded()J
    .registers 3

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->uploaded:J

    return-wide v0
.end method
