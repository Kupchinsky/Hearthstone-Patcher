.class public Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
.super Lcom/turn/ttorrent/common/protocol/PeerMessage;
.source "PeerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/PeerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestMessage"
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0xd

.field public static final DEFAULT_REQUEST_SIZE:I = 0x4000

.field public static final MAX_REQUEST_SIZE:I = 0x20000


# instance fields
.field private length:I

.field private offset:I

.field private piece:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;III)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "piece"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 472
    sget-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->REQUEST:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/PeerMessage$1;)V

    .line 473
    iput p2, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->piece:I

    .line 474
    iput p3, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->offset:I

    .line 475
    iput p4, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->length:I

    .line 476
    return-void
.end method

.method public static craft(III)Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    .registers 5
    .param p0, "piece"    # I
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 512
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 514
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 515
    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->REQUEST:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->getTypeByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 516
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 517
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 518
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 519
    new-instance v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;-><init>(Ljava/nio/ByteBuffer;III)V

    return-object v1
.end method

.method public static parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 505
    .local v2, "piece":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 506
    .local v1, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 507
    .local v0, "length":I
    new-instance v3, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;-><init>(Ljava/nio/ByteBuffer;III)V

    invoke-virtual {v3, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 487
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->length:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 483
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->offset:I

    return v0
.end method

.method public getPiece()I
    .registers 2

    .prologue
    .line 479
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->piece:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getPiece()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;
    .registers 6
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 493
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->piece:I

    if-ltz v0, :cond_21

    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->piece:I

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->offset:I

    iget v1, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->length:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->piece:I

    invoke-virtual {p1, v2}, Lcom/turn/ttorrent/client/SharedTorrent;->getPiece(I)Lcom/turn/ttorrent/client/Piece;

    move-result-object v2

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_21

    .line 496
    return-object p0

    .line 499
    :cond_21
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
    .line 456
    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;

    move-result-object v0

    return-object v0
.end method
