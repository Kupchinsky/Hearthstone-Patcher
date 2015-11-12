.class public Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;
.super Lcom/turn/ttorrent/common/protocol/PeerMessage;
.source "PeerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/PeerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotInterestedMessage"
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x1


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 319
    sget-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->NOT_INTERESTED:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/PeerMessage$1;)V

    .line 320
    return-void
.end method

.method public static craft()Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;
    .registers 2

    .prologue
    .line 329
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 331
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 332
    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->NOT_INTERESTED:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->getTypeByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 333
    new-instance v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;

    invoke-direct {v1, v0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public static parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;

    invoke-direct {v0, p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;

    return-object v0
.end method
