.class public Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;
.super Lcom/turn/ttorrent/common/protocol/PeerMessage;
.source "PeerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/PeerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HaveMessage"
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x5


# instance fields
.field private piece:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "piece"    # I

    .prologue
    .line 349
    sget-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->HAVE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/PeerMessage$1;)V

    .line 350
    iput p2, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;->piece:I

    .line 351
    return-void
.end method

.method public static craft(I)Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;
    .registers 3
    .param p0, "piece"    # I

    .prologue
    .line 374
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 376
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 377
    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->HAVE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->getTypeByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 378
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 379
    new-instance v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;

    invoke-direct {v1, v0, p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;-><init>(Ljava/nio/ByteBuffer;I)V

    return-object v1
.end method

.method public static parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPieceIndex()I
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;->piece:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;->getPieceIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;
    .registers 4
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 360
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;->piece:I

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;->piece:I

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 361
    return-object p0

    .line 364
    :cond_d
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;

    invoke-direct {v0, p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;-><init>(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V

    throw v0
.end method

.method public bridge synthetic validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage;
    .registers 3
    .param p1, "x0"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;

    move-result-object v0

    return-object v0
.end method
