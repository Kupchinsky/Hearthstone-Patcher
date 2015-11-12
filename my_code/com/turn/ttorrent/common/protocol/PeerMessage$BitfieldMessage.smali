.class public Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;
.super Lcom/turn/ttorrent/common/protocol/PeerMessage;
.source "PeerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/PeerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitfieldMessage"
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x1


# instance fields
.field private bitfield:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/util/BitSet;)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bitfield"    # Ljava/util/BitSet;

    .prologue
    .line 399
    sget-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->BITFIELD:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/PeerMessage$1;)V

    .line 400
    iput-object p2, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;->bitfield:Ljava/util/BitSet;

    .line 401
    return-void
.end method

.method public static craft(Ljava/util/BitSet;)Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;
    .registers 9
    .param p0, "availablePieces"    # Ljava/util/BitSet;

    .prologue
    .line 431
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    new-array v0, v3, [B

    .line 433
    .local v0, "bitfield":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_2b

    .line 435
    div-int/lit8 v3, v2, 0x8

    aget-byte v4, v0, v3

    const/4 v5, 0x1

    rem-int/lit8 v6, v2, 0x8

    rsub-int/lit8 v6, v6, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 434
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_14

    .line 438
    :cond_2b
    array-length v3, v0

    add-int/lit8 v3, v3, 0x5

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 440
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 441
    sget-object v3, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->BITFIELD:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    invoke-virtual {v3}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->getTypeByte()B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 442
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 443
    new-instance v3, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;

    invoke-direct {v3, v1, p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;-><init>(Ljava/nio/ByteBuffer;Ljava/util/BitSet;)V

    return-object v3
.end method

.method public static parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;
    .registers 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 419
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 420
    .local v0, "bitfield":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_29

    .line 421
    div-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/4 v3, 0x1

    rem-int/lit8 v4, v1, 0x8

    rsub-int/lit8 v4, v4, 0x7

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-lez v2, :cond_26

    .line 422
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 420
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 426
    :cond_29
    new-instance v2, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;

    invoke-direct {v2, p0, v0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;-><init>(Ljava/nio/ByteBuffer;Ljava/util/BitSet;)V

    invoke-virtual {v2, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getBitfield()Ljava/util/BitSet;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;->bitfield:Ljava/util/BitSet;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;->getBitfield()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;
    .registers 4
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;->bitfield:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/SharedTorrent;->getPieceCount()I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 411
    return-object p0

    .line 414
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
    .line 392
    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;->validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;

    move-result-object v0

    return-object v0
.end method
