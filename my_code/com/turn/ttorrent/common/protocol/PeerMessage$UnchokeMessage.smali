.class public Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;
.super Lcom/turn/ttorrent/common/protocol/PeerMessage;
.source "PeerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/PeerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnchokeMessage"
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x1


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 263
    sget-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->UNCHOKE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/PeerMessage$1;)V

    .line 264
    return-void
.end method

.method public static craft()Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;
    .registers 2

    .prologue
    .line 273
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 275
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 276
    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->UNCHOKE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->getTypeByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 277
    new-instance v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;

    invoke-direct {v1, v0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public static parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;

    invoke-direct {v0, p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;

    return-object v0
.end method
