.class public Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;
.super Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;
.source "HTTPTrackerErrorMessage.java"

# interfaces
.implements Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;


# instance fields
.field private final reason:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ERROR:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-direct {p0, v0, p1}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    .line 43
    iput-object p2, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;->reason:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static craft(Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;)Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;
    .registers 2
    .param p0, "reason"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;->craft(Ljava/lang/String;)Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;

    move-result-object v0

    return-object v0
.end method

.method public static craft(Ljava/lang/String;)Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;
    .registers 5
    .param p0, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    const-string v1, "failure reason"

    new-instance v2, Lcom/turn/ttorrent/bcodec/BEValue;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, p0, v3}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;

    invoke-static {v0}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-object v1
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;
    .registers 7
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecode(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v0

    .line 54
    .local v0, "decoded":Lcom/turn/ttorrent/bcodec/BEValue;
    if-nez v0, :cond_e

    .line 55
    new-instance v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v4, "Could not decode tracker message (not B-encoded?)!"

    invoke-direct {v3, v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_e
    invoke-virtual {v0}, Lcom/turn/ttorrent/bcodec/BEValue;->getMap()Ljava/util/Map;

    move-result-object v2

    .line 62
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    :try_start_12
    new-instance v4, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;

    const-string v3, "failure reason"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/turn/ttorrent/bcodec/BEValue;

    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v5}, Lcom/turn/ttorrent/bcodec/BEValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, p0, v3}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_25
    .catch Lcom/turn/ttorrent/bcodec/InvalidBEncodingException; {:try_start_12 .. :try_end_25} :catch_26

    return-object v4

    .line 66
    :catch_26
    move-exception v1

    .line 67
    .local v1, "ibee":Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
    new-instance v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v4, "Invalid tracker error message!"

    invoke-direct {v3, v4, v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerErrorMessage;->reason:Ljava/lang/String;

    return-object v0
.end method
