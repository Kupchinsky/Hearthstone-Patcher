.class public Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;
.super Lcom/turn/ttorrent/common/protocol/PeerMessage;
.source "PeerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/PeerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelMessage"
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0xd


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
    .line 615
    sget-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->CANCEL:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/PeerMessage$1;)V

    .line 616
    iput p2, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->piece:I

    .line 617
    iput p3, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->offset:I

    .line 618
    iput p4, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->length:I

    .line 619
    return-void
.end method

.method public static craft(III)Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;
    .registers 5
    .param p0, "piece"    # I
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 655
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 657
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 658
    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->CANCEL:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->getTypeByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 659
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 660
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 661
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 662
    new-instance v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;-><init>(Ljava/nio/ByteBuffer;III)V

    return-object v1
.end method

.method public static parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 648
    .local v2, "piece":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 649
    .local v1, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 650
    .local v0, "length":I
    new-instance v3, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;-><init>(Ljava/nio/ByteBuffer;III)V

    invoke-virtual {v3, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 630
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->length:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 626
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->offset:I

    return v0
.end method

.method public getPiece()I
    .registers 2

    .prologue
    .line 622
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->piece:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->getPiece()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->getOffset()I

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

.method public validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;
    .registers 6
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 636
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->piece:I

    if-ltz v0, :cond_21

    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->piece:I

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->offset:I

    iget v1, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->length:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->piece:I

    invoke-virtual {p1, v2}, Lcom/turn/ttorrent/client/SharedTorrent;->getPiece(I)Lcom/turn/ttorrent/client/Piece;

    move-result-object v2

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_21

    .line 639
    return-object p0

    .line 642
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
    .line 605
    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;

    move-result-object v0

    return-object v0
.end method
