.class public Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;
.super Lcom/turn/ttorrent/common/protocol/PeerMessage;
.source "PeerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/PeerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PieceMessage"
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x9


# instance fields
.field private block:Ljava/nio/ByteBuffer;

.field private offset:I

.field private piece:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "piece"    # I
    .param p3, "offset"    # I
    .param p4, "block"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 543
    sget-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->PIECE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/PeerMessage$1;)V

    .line 544
    iput p2, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->piece:I

    .line 545
    iput p3, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->offset:I

    .line 546
    iput-object p4, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->block:Ljava/nio/ByteBuffer;

    .line 547
    return-void
.end method

.method public static craft(IILjava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;
    .registers 5
    .param p0, "piece"    # I
    .param p1, "offset"    # I
    .param p2, "block"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 584
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 586
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 587
    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->PIECE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->getTypeByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 588
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 589
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 590
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 591
    new-instance v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;-><init>(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public static parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 576
    .local v2, "piece":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 577
    .local v1, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 578
    .local v0, "block":Ljava/nio/ByteBuffer;
    new-instance v3, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;-><init>(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V

    invoke-virtual {v3, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getBlock()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->block:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 554
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->offset:I

    return v0
.end method

.method public getPiece()I
    .registers 2

    .prologue
    .line 550
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->piece:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getPiece()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getBlock()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->getOffset()I

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

.method public validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;
    .registers 6
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 564
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->piece:I

    if-ltz v0, :cond_25

    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->piece:I

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->offset:I

    iget-object v1, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->block:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->piece:I

    invoke-virtual {p1, v2}, Lcom/turn/ttorrent/client/SharedTorrent;->getPiece(I)Lcom/turn/ttorrent/client/Piece;

    move-result-object v2

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_25

    .line 567
    return-object p0

    .line 570
    :cond_25
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
    .line 533
    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;

    move-result-object v0

    return-object v0
.end method
