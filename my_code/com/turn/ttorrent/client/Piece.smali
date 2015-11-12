.class public Lcom/turn/ttorrent/client/Piece;
.super Ljava/lang/Object;
.source "Piece.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/client/Piece$CallableHasher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/turn/ttorrent/client/Piece;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

.field private data:Ljava/nio/ByteBuffer;

.field private final hash:[B

.field private final index:I

.field private final length:J

.field private final offset:J

.field private final seeder:Z

.field private seen:I

.field private volatile valid:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/turn/ttorrent/client/Piece;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/Piece;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/turn/ttorrent/client/storage/TorrentByteStorage;IJJ[BZ)V
    .registers 10
    .param p1, "bucket"    # Lcom/turn/ttorrent/client/storage/TorrentByteStorage;
    .param p2, "index"    # I
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .param p7, "hash"    # [B
    .param p8, "seeder"    # Z

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/turn/ttorrent/client/Piece;->bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

    .line 79
    iput p2, p0, Lcom/turn/ttorrent/client/Piece;->index:I

    .line 80
    iput-wide p3, p0, Lcom/turn/ttorrent/client/Piece;->offset:J

    .line 81
    iput-wide p5, p0, Lcom/turn/ttorrent/client/Piece;->length:J

    .line 82
    iput-object p7, p0, Lcom/turn/ttorrent/client/Piece;->hash:[B

    .line 83
    iput-boolean p8, p0, Lcom/turn/ttorrent/client/Piece;->seeder:Z

    .line 86
    iput-boolean v0, p0, Lcom/turn/ttorrent/client/Piece;->valid:Z

    .line 89
    iput v0, p0, Lcom/turn/ttorrent/client/Piece;->seen:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/turn/ttorrent/client/Piece;->data:Ljava/nio/ByteBuffer;

    .line 92
    return-void
.end method

.method private _read(JJ)Ljava/nio/ByteBuffer;
    .registers 12
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    add-long v2, p1, p3

    iget-wide v4, p0, Lcom/turn/ttorrent/client/Piece;->length:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_49

    .line 188
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Piece#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/turn/ttorrent/client/Piece;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " overrun ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/turn/ttorrent/client/Piece;->length:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_49
    long-to-int v2, p3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 196
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/turn/ttorrent/client/Piece;->bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

    iget-wide v4, p0, Lcom/turn/ttorrent/client/Piece;->offset:J

    add-long/2addr v4, p1

    invoke-interface {v2, v0, v4, v5}, Lcom/turn/ttorrent/client/storage/TorrentByteStorage;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1

    .line 197
    .local v1, "bytes":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 198
    if-ltz v1, :cond_60

    .end local v1    # "bytes":I
    :goto_5c
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 199
    return-object v0

    .line 198
    .restart local v1    # "bytes":I
    :cond_60
    const/4 v1, 0x0

    goto :goto_5c
.end method


# virtual methods
.method public available()Z
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/turn/ttorrent/client/Piece;->seen:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public compareTo(Lcom/turn/ttorrent/client/Piece;)I
    .registers 6
    .param p1, "other"    # Lcom/turn/ttorrent/client/Piece;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 279
    iget v2, p0, Lcom/turn/ttorrent/client/Piece;->seen:I

    iget v3, p1, Lcom/turn/ttorrent/client/Piece;->seen:I

    if-eq v2, v3, :cond_11

    .line 280
    iget v2, p0, Lcom/turn/ttorrent/client/Piece;->seen:I

    iget v3, p1, Lcom/turn/ttorrent/client/Piece;->seen:I

    if-ge v2, v3, :cond_f

    .line 282
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 280
    goto :goto_e

    .line 282
    :cond_11
    iget v2, p0, Lcom/turn/ttorrent/client/Piece;->index:I

    iget v3, p1, Lcom/turn/ttorrent/client/Piece;->index:I

    if-ne v2, v3, :cond_19

    const/4 v0, 0x0

    goto :goto_e

    :cond_19
    iget v2, p0, Lcom/turn/ttorrent/client/Piece;->index:I

    iget v3, p1, Lcom/turn/ttorrent/client/Piece;->index:I

    if-lt v2, v3, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lcom/turn/ttorrent/client/Piece;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/client/Piece;->compareTo(Lcom/turn/ttorrent/client/Piece;)I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/turn/ttorrent/client/Piece;->index:I

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/Piece;->valid:Z

    return v0
.end method

.method public noLongerAt(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    .registers 3
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    .line 141
    iget v0, p0, Lcom/turn/ttorrent/client/Piece;->seen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/turn/ttorrent/client/Piece;->seen:I

    .line 142
    return-void
.end method

.method public read(JI)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "offset"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/Piece;->valid:Z

    if-nez v0, :cond_c

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to read an known-to-be invalid piece!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_c
    int-to-long v0, p3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/turn/ttorrent/client/Piece;->_read(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized record(Ljava/nio/ByteBuffer;I)V
    .registers 9
    .param p1, "block"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/turn/ttorrent/client/Piece;->data:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_7

    if-nez p2, :cond_10

    .line 247
    :cond_7
    iget-wide v2, p0, Lcom/turn/ttorrent/client/Piece;->length:J

    long-to-int v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/turn/ttorrent/client/Piece;->data:Ljava/nio/ByteBuffer;

    .line 250
    :cond_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 251
    .local v0, "pos":I
    iget-object v1, p0, Lcom/turn/ttorrent/client/Piece;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 252
    iget-object v1, p0, Lcom/turn/ttorrent/client/Piece;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v1, p2

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/turn/ttorrent/client/Piece;->length:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_45

    .line 256
    iget-object v1, p0, Lcom/turn/ttorrent/client/Piece;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 257
    sget-object v1, Lcom/turn/ttorrent/client/Piece;->logger:Lorg/slf4j/Logger;

    const-string v2, "Recording {}..."

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    iget-object v1, p0, Lcom/turn/ttorrent/client/Piece;->bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

    iget-object v2, p0, Lcom/turn/ttorrent/client/Piece;->data:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lcom/turn/ttorrent/client/Piece;->offset:J

    invoke-interface {v1, v2, v4, v5}, Lcom/turn/ttorrent/client/storage/TorrentByteStorage;->write(Ljava/nio/ByteBuffer;J)I

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/turn/ttorrent/client/Piece;->data:Ljava/nio/ByteBuffer;
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 261
    :cond_45
    monitor-exit p0

    return-void

    .line 244
    .end local v0    # "pos":I
    :catchall_47
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public seenAt(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    .registers 3
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    .line 132
    iget v0, p0, Lcom/turn/ttorrent/client/Piece;->seen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/turn/ttorrent/client/Piece;->seen:I

    .line 133
    return-void
.end method

.method public size()J
    .registers 3

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/turn/ttorrent/client/Piece;->length:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 267
    const-string v1, "piece#%4d%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v3, p0, Lcom/turn/ttorrent/client/Piece;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/turn/ttorrent/client/Piece;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "+"

    :goto_17
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    const-string v0, "-"

    goto :goto_17
.end method

.method public declared-synchronized validate()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 152
    monitor-enter p0

    :try_start_2
    iget-boolean v3, p0, Lcom/turn/ttorrent/client/Piece;->seeder:Z

    if-eqz v3, :cond_12

    .line 153
    sget-object v3, Lcom/turn/ttorrent/client/Piece;->logger:Lorg/slf4j/Logger;

    const-string v4, "Skipping validation of {} (seeder mode)."

    invoke-interface {v3, v4, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/turn/ttorrent/client/Piece;->valid:Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_3d

    .line 166
    :goto_10
    monitor-exit p0

    return v2

    .line 158
    :cond_12
    :try_start_12
    sget-object v2, Lcom/turn/ttorrent/client/Piece;->logger:Lorg/slf4j/Logger;

    const-string v3, "Validating {}..."

    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/turn/ttorrent/client/Piece;->valid:Z

    .line 161
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/turn/ttorrent/client/Piece;->length:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/turn/ttorrent/client/Piece;->_read(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/turn/ttorrent/client/Piece;->length:J

    long-to-int v2, v2

    new-array v1, v2, [B

    .line 163
    .local v1, "data":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 164
    invoke-static {v1}, Lcom/turn/ttorrent/common/Torrent;->hash([B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/turn/ttorrent/client/Piece;->hash:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    iput-boolean v2, p0, Lcom/turn/ttorrent/client/Piece;->valid:Z

    .line 166
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/Piece;->isValid()Z
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_3d

    move-result v2

    goto :goto_10

    .line 152
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "data":[B
    :catchall_3d
    move-exception v2

    monitor-exit p0

    throw v2
.end method
