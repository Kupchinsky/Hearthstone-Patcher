.class public abstract Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;
.super Lcom/turn/ttorrent/common/protocol/TrackerMessage;
.source "HTTPTrackerMessage.java"


# direct methods
.method protected constructor <init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "type"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
    .param p2, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    .line 36
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;
    .registers 5
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecode(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v0

    .line 41
    .local v0, "decoded":Lcom/turn/ttorrent/bcodec/BEValue;
    if-nez v0, :cond_e

    .line 42
    new-instance v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v3, "Could not decode tracker message (not B-encoded?)!"

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_e
    invoke-virtual {v0}, Lcom/turn/ttorrent/bcodec/BEValue;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 48
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    const-string v2, "info_hash"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 49
    invoke-static {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;

    move-result-object v2

    .line 53
    :goto_1e
    return-object v2

    .line 50
    :cond_1f
    const-string v2, "peers"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 51
    invoke-static {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceResponseMessage;

    move-result-object v2

    goto :goto_1e

    .line 52
    :cond_2c
    const-string v2, "failure reason"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 53
    invoke-static {p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;

    move-result-object v2

    goto :goto_1e

    .line 56
    :cond_39
    new-instance v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v3, "Unknown HTTP tracker message!"

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
