.class public Lcom/turn/ttorrent/client/SharedTorrent;
.super Lcom/turn/ttorrent/common/Torrent;
.source "SharedTorrent.java"

# interfaces
.implements Lcom/turn/ttorrent/client/peer/PeerActivityListener;


# static fields
.field private static final ENG_GAME_COMPLETION_RATIO:F = 0.95f

.field private static final RAREST_PIECE_JITTER:I = 0x2a

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

.field private completedPieces:Ljava/util/BitSet;

.field private downloaded:J

.field private initialized:Z

.field private left:J

.field private maxDownloadRate:D

.field private maxUploadRate:D

.field private final pieceLength:I

.field private pieces:[Lcom/turn/ttorrent/client/Piece;

.field private final piecesHashes:Ljava/nio/ByteBuffer;

.field private random:Ljava/util/Random;

.field private rarest:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/turn/ttorrent/client/Piece;",
            ">;"
        }
    .end annotation
.end field

.field private requestedPieces:Ljava/util/BitSet;

.field private stop:Z

.field private uploaded:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/turn/ttorrent/common/Torrent;Ljava/io/File;)V
    .registers 4
    .param p1, "torrent"    # Lcom/turn/ttorrent/common/Torrent;
    .param p2, "destDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/turn/ttorrent/client/SharedTorrent;-><init>(Lcom/turn/ttorrent/common/Torrent;Ljava/io/File;Z)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/turn/ttorrent/common/Torrent;Ljava/io/File;Z)V
    .registers 5
    .param p1, "torrent"    # Lcom/turn/ttorrent/common/Torrent;
    .param p2, "destDir"    # Ljava/io/File;
    .param p3, "seeder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Torrent;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/turn/ttorrent/client/SharedTorrent;-><init>([BLjava/io/File;Z)V

    .line 145
    return-void
.end method

.method public constructor <init>([BLjava/io/File;)V
    .registers 4
    .param p1, "torrent"    # [B
    .param p2, "destDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/turn/ttorrent/client/SharedTorrent;-><init>([BLjava/io/File;Z)V

    .line 160
    return-void
.end method

.method public constructor <init>([BLjava/io/File;Z)V
    .registers 22
    .param p1, "torrent"    # [B
    .param p2, "parent"    # Ljava/io/File;
    .param p3, "seeder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/turn/ttorrent/common/Torrent;-><init>([BZ)V

    .line 103
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/turn/ttorrent/client/SharedTorrent;->maxUploadRate:D

    .line 104
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/turn/ttorrent/client/SharedTorrent;->maxDownloadRate:D

    .line 177
    if-eqz p2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_25

    .line 178
    :cond_1d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid parent directory!"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 181
    :cond_25
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "parentPath":Ljava/lang/String;
    :try_start_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->decoded_info:Ljava/util/Map;

    const-string v8, "piece length"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v4}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->pieceLength:I

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->decoded_info:Ljava/util/Map;

    const-string v8, "pieces"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v4}, Lcom/turn/ttorrent/bcodec/BEValue;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->piecesHashes:Ljava/nio/ByteBuffer;

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->piecesHashes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    div-int/lit8 v4, v4, 0x14

    int-to-long v8, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->pieceLength:I

    int-to-long v0, v4

    move-wide/from16 v16, v0

    mul-long v8, v8, v16

    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getSize()J

    move-result-wide v16

    cmp-long v4, v8, v16

    if-gez v4, :cond_82

    .line 190
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "Torrent size does not match the number of pieces and the piece size!"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_79
    .catch Lcom/turn/ttorrent/bcodec/InvalidBEncodingException; {:try_start_29 .. :try_end_79} :catch_79

    .line 193
    :catch_79
    move-exception v13

    .line 194
    .local v13, "ibee":Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "Error reading torrent meta-info fields!"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    .end local v13    # "ibee":Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
    :cond_82
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 199
    .local v11, "files":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/client/storage/FileStorage;>;"
    const-wide/16 v6, 0x0

    .line 200
    .local v6, "offset":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_91
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/turn/ttorrent/common/Torrent$TorrentFile;

    .line 201
    .local v10, "file":Lcom/turn/ttorrent/common/Torrent$TorrentFile;
    new-instance v5, Ljava/io/File;

    iget-object v4, v10, Lcom/turn/ttorrent/common/Torrent$TorrentFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v5, "actual":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bc

    .line 204
    new-instance v4, Ljava/lang/SecurityException;

    const-string v8, "Torrent file path attempted to break directory jail!"

    invoke-direct {v4, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_bc
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 209
    new-instance v4, Lcom/turn/ttorrent/client/storage/FileStorage;

    iget-wide v8, v10, Lcom/turn/ttorrent/common/Torrent$TorrentFile;->size:J

    invoke-direct/range {v4 .. v9}, Lcom/turn/ttorrent/client/storage/FileStorage;-><init>(Ljava/io/File;JJ)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-wide v8, v10, Lcom/turn/ttorrent/common/Torrent$TorrentFile;->size:J

    add-long/2addr v6, v8

    .line 211
    goto :goto_91

    .line 212
    .end local v5    # "actual":Ljava/io/File;
    .end local v10    # "file":Lcom/turn/ttorrent/common/Torrent$TorrentFile;
    :cond_d1
    new-instance v4, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;

    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getSize()J

    move-result-wide v8

    invoke-direct {v4, v11, v8, v9}, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;-><init>(Ljava/util/List;J)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

    .line 214
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->random:Ljava/util/Random;

    .line 215
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->stop:Z

    .line 217
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/turn/ttorrent/client/SharedTorrent;->uploaded:J

    .line 218
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/turn/ttorrent/client/SharedTorrent;->downloaded:J

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getSize()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/turn/ttorrent/client/SharedTorrent;->left:J

    .line 221
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->initialized:Z

    .line 222
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/turn/ttorrent/client/Piece;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    .line 223
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->rarest:Ljava/util/SortedSet;

    .line 224
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    .line 225
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    .line 226
    return-void
.end method

.method public static fromFile(Ljava/io/File;Ljava/io/File;)Lcom/turn/ttorrent/client/SharedTorrent;
    .registers 4
    .param p0, "source"    # Ljava/io/File;
    .param p1, "parent"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p0}, Lru/killer666/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 239
    .local v0, "data":[B
    new-instance v1, Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-direct {v1, v0, p1}, Lcom/turn/ttorrent/client/SharedTorrent;-><init>([BLjava/io/File;)V

    return-object v1
.end method

.method private validatePieces(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/turn/ttorrent/client/Piece;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lcom/turn/ttorrent/client/Piece;>;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 408
    .local v3, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/turn/ttorrent/client/Piece;>;"
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/turn/ttorrent/client/Piece;

    .line 409
    .local v2, "piece":Lcom/turn/ttorrent/client/Piece;
    iget-object v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/turn/ttorrent/client/Piece;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 410
    iget-object v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 411
    iget-wide v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->left:J

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->left:J
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_4

    .line 416
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "piece":Lcom/turn/ttorrent/client/Piece;
    .end local v3    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/turn/ttorrent/client/Piece;>;"
    :catch_37
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Error while hashing a torrent piece!"

    invoke-direct {v4, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_40
    :try_start_40
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_37

    .line 419
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 5

    .prologue
    .line 424
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/turn/ttorrent/client/SharedTorrent;->bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

    invoke-interface {v1}, Lcom/turn/ttorrent/client/storage/TorrentByteStorage;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    .line 429
    :goto_6
    monitor-exit p0

    return-void

    .line 425
    :catch_8
    move-exception v0

    .line 426
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_9
    sget-object v1, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v2, "Error closing torrent byte storage: {}"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_6

    .line 424
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/SharedTorrent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 534
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Torrent not yet initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 533
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 537
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/SharedTorrent;->isComplete()Z

    move-result v0

    if-nez v0, :cond_20

    .line 538
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Torrent download is not complete!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_20
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

    invoke-interface {v0}, Lcom/turn/ttorrent/client/storage/TorrentByteStorage;->finish()V
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 542
    monitor-exit p0

    return-void
.end method

.method public getAvailablePieces()Ljava/util/BitSet;
    .registers 8

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/SharedTorrent;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_e

    .line 470
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Torrent not yet initialized!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 473
    :cond_e
    new-instance v1, Ljava/util/BitSet;

    iget-object v5, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    array-length v5, v5

    invoke-direct {v1, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 475
    .local v1, "availablePieces":Ljava/util/BitSet;
    iget-object v6, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    monitor-enter v6

    .line 476
    :try_start_19
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    .local v0, "arr$":[Lcom/turn/ttorrent/client/Piece;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1d
    if-ge v2, v3, :cond_31

    aget-object v4, v0, v2

    .line 477
    .local v4, "piece":Lcom/turn/ttorrent/client/Piece;
    invoke-virtual {v4}, Lcom/turn/ttorrent/client/Piece;->available()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 478
    invoke-virtual {v4}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 476
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 481
    .end local v4    # "piece":Lcom/turn/ttorrent/client/Piece;
    :cond_31
    monitor-exit v6

    .line 483
    return-object v1

    .line 481
    .end local v0    # "arr$":[Lcom/turn/ttorrent/client/Piece;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_33
    move-exception v5

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_33

    throw v5
.end method

.method public getCompletedPieces()Ljava/util/BitSet;
    .registers 3

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/SharedTorrent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Torrent not yet initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_e
    iget-object v1, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    monitor-enter v1

    .line 495
    :try_start_11
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    monitor-exit v1

    return-object v0

    .line 496
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getCompletion()F
    .registers 3

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/SharedTorrent;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getDownloaded()J
    .registers 3

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->downloaded:J

    return-wide v0
.end method

.method public getLeft()J
    .registers 3

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->left:J

    return-wide v0
.end method

.method public getMaxDownloadRate()D
    .registers 3

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->maxDownloadRate:D

    return-wide v0
.end method

.method public getMaxUploadRate()D
    .registers 3

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->maxUploadRate:D

    return-wide v0
.end method

.method public getPiece(I)Lcom/turn/ttorrent/client/Piece;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    if-nez v0, :cond_c

    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Torrent not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_c
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    array-length v0, v0

    if-lt p1, v0, :cond_19

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid piece index!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_19
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPieceCount()I
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    if-nez v0, :cond_c

    .line 453
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Torrent not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_c
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    array-length v0, v0

    return v0
.end method

.method public getRequestedPieces()Ljava/util/BitSet;
    .registers 3

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/SharedTorrent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Torrent not yet initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_e
    iget-object v1, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    monitor-enter v1

    .line 508
    :try_start_11
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    monitor-exit v1

    return-object v0

    .line 509
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getUploaded()J
    .registers 3

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->uploaded:J

    return-wide v0
.end method

.method public declared-synchronized handleBitfieldAvailability(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/util/BitSet;)V
    .registers 10
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "availablePieces"    # Ljava/util/BitSet;

    .prologue
    .line 738
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 739
    .local v1, "interesting":Ljava/util/BitSet;
    iget-object v2, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 740
    iget-object v2, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 742
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-nez v2, :cond_41

    .line 743
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->notInteresting()V

    .line 749
    :goto_1a
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .local v0, "i":I
    :goto_1f
    if-ltz v0, :cond_48

    .line 751
    iget-object v2, p0, Lcom/turn/ttorrent/client/SharedTorrent;->rarest:Ljava/util/SortedSet;

    iget-object v3, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 752
    iget-object v2, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/turn/ttorrent/client/Piece;->seenAt(Lcom/turn/ttorrent/client/peer/SharingPeer;)V

    .line 753
    iget-object v2, p0, Lcom/turn/ttorrent/client/SharedTorrent;->rarest:Ljava/util/SortedSet;

    iget-object v3, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 750
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_1f

    .line 745
    .end local v0    # "i":I
    :cond_41
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->interesting()V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    goto :goto_1a

    .line 738
    .end local v1    # "interesting":Ljava/util/BitSet;
    :catchall_45
    move-exception v2

    monitor-exit p0

    throw v2

    .line 756
    .restart local v0    # "i":I
    .restart local v1    # "interesting":Ljava/util/BitSet;
    :cond_48
    :try_start_48
    sget-object v2, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v3, "Peer {} contributes {} piece(s) ({} interesting) [completed={}; available={}/{}]."

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getAvailablePieces()Ljava/util/BitSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_91
    .catchall {:try_start_48 .. :try_end_91} :catchall_45

    .line 766
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized handleIOException(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/io/IOException;)V
    .registers 3
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 858
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized handlePeerChoked(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    .registers 8
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    .line 593
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getRequestedPiece()Lcom/turn/ttorrent/client/Piece;

    move-result-object v0

    .line 595
    .local v0, "piece":Lcom/turn/ttorrent/client/Piece;
    if-eqz v0, :cond_11

    .line 596
    iget-object v1, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 599
    :cond_11
    sget-object v1, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v2, "Peer {} choked, we now have {} outstanding request(s): {}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 606
    monitor-exit p0

    return-void

    .line 593
    .end local v0    # "piece":Lcom/turn/ttorrent/client/Piece;
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handlePeerDisconnected(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    .registers 10
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    .line 826
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getAvailablePieces()Ljava/util/BitSet;

    move-result-object v0

    .line 828
    .local v0, "availablePieces":Ljava/util/BitSet;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_2c

    .line 830
    iget-object v3, p0, Lcom/turn/ttorrent/client/SharedTorrent;->rarest:Ljava/util/SortedSet;

    iget-object v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 831
    iget-object v3, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/turn/ttorrent/client/Piece;->noLongerAt(Lcom/turn/ttorrent/client/peer/SharingPeer;)V

    .line 832
    iget-object v3, p0, Lcom/turn/ttorrent/client/SharedTorrent;->rarest:Ljava/util/SortedSet;

    iget-object v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 829
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_a

    .line 835
    :cond_2c
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getRequestedPiece()Lcom/turn/ttorrent/client/Piece;

    move-result-object v2

    .line 836
    .local v2, "requested":Lcom/turn/ttorrent/client/Piece;
    if-eqz v2, :cond_3c

    .line 837
    iget-object v3, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 840
    :cond_3c
    sget-object v3, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v4, "Peer {} went away with {} piece(s) [completed={}; available={}/{}]"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->cardinality()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getAvailablePieces()Ljava/util/BitSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/BitSet;->cardinality()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    sget-object v3, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v4, "We now have {} piece(s) and {} outstanding request(s): {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->cardinality()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->cardinality()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a3
    .catchall {:try_start_1 .. :try_end_a3} :catchall_a5

    .line 854
    monitor-exit p0

    return-void

    .line 826
    .end local v0    # "availablePieces":Ljava/util/BitSet;
    .end local v1    # "i":I
    .end local v2    # "requested":Lcom/turn/ttorrent/client/Piece;
    :catchall_a5
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized handlePeerReady(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    .registers 12
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    const/16 v8, 0x2a

    .line 620
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getAvailablePieces()Ljava/util/BitSet;

    move-result-object v3

    .line 621
    .local v3, "interesting":Ljava/util/BitSet;
    iget-object v5, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 622
    iget-object v5, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 624
    sget-object v5, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v6, "Peer {} is ready and has {} interesting piece(s)."

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, p1, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 630
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-nez v5, :cond_63

    .line 631
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getAvailablePieces()Ljava/util/BitSet;

    move-result-object v3

    .line 632
    iget-object v5, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 633
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-nez v5, :cond_3e

    .line 634
    sget-object v5, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v6, "No interesting piece from {}!"

    invoke-interface {v5, v6, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_59

    .line 678
    :goto_3c
    monitor-exit p0

    return-void

    .line 638
    :cond_3e
    :try_start_3e
    iget-object v5, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f733333    # 0.95f

    iget-object v7, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    array-length v7, v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5c

    .line 640
    sget-object v5, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v6, "Not far along enough to warrant end-game mode."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_59

    goto :goto_3c

    .line 620
    .end local v3    # "interesting":Ljava/util/BitSet;
    :catchall_59
    move-exception v5

    monitor-exit p0

    throw v5

    .line 644
    .restart local v3    # "interesting":Ljava/util/BitSet;
    :cond_5c
    :try_start_5c
    sget-object v5, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v6, "Possible end-game, we\'re about to request a piece that was already requested from another peer."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 650
    :cond_63
    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0x2a

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 651
    .local v0, "choice":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/turn/ttorrent/client/Piece;>;"
    iget-object v6, p0, Lcom/turn/ttorrent/client/SharedTorrent;->rarest:Ljava/util/SortedSet;

    monitor-enter v6
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_59

    .line 652
    :try_start_6d
    iget-object v5, p0, Lcom/turn/ttorrent/client/SharedTorrent;->rarest:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/turn/ttorrent/client/Piece;

    .line 653
    .local v4, "piece":Lcom/turn/ttorrent/client/Piece;
    invoke-virtual {v4}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 654
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v8, :cond_73

    .line 660
    .end local v4    # "piece":Lcom/turn/ttorrent/client/Piece;
    :cond_92
    monitor-exit v6
    :try_end_93
    .catchall {:try_start_6d .. :try_end_93} :catchall_d9

    .line 662
    :try_start_93
    iget-object v5, p0, Lcom/turn/ttorrent/client/SharedTorrent;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x2a

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/Piece;

    .line 666
    .local v1, "chosen":Lcom/turn/ttorrent/client/Piece;
    iget-object v5, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 668
    sget-object v5, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v6, "Requesting {} from {}, we now have {} outstanding request(s): {}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->cardinality()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    invoke-virtual {p1, v1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->downloadPiece(Lcom/turn/ttorrent/client/Piece;)V
    :try_end_d7
    .catchall {:try_start_93 .. :try_end_d7} :catchall_59

    goto/16 :goto_3c

    .line 660
    .end local v1    # "chosen":Lcom/turn/ttorrent/client/Piece;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_d9
    move-exception v5

    :try_start_da
    monitor-exit v6
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    :try_start_db
    throw v5
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_59
.end method

.method public declared-synchronized handlePieceAvailability(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V
    .registers 8
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "piece"    # Lcom/turn/ttorrent/client/Piece;

    .prologue
    .line 696
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 698
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->interesting()V

    .line 701
    :cond_1c
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->rarest:Ljava/util/SortedSet;

    invoke-interface {v0, p2}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 702
    invoke-virtual {p2, p1}, Lcom/turn/ttorrent/client/Piece;->seenAt(Lcom/turn/ttorrent/client/peer/SharingPeer;)V

    .line 703
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->rarest:Ljava/util/SortedSet;

    invoke-interface {v0, p2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 705
    sget-object v0, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v1, "Peer {} contributes {} piece(s) [{}/{}/{}]."

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getAvailablePieces()Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getAvailablePieces()Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isChoked()Z

    move-result v0

    if-nez v0, :cond_80

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isInteresting()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_80

    .line 717
    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/client/SharedTorrent;->handlePeerReady(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_82

    .line 719
    :cond_80
    monitor-exit p0

    return-void

    .line 696
    :catchall_82
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handlePieceCompleted(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V
    .registers 8
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "piece"    # Lcom/turn/ttorrent/client/Piece;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->downloaded:J

    invoke-virtual {p2}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->downloaded:J

    .line 804
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 806
    sget-object v0, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v1, "We now have {} piece(s) and {} outstanding request(s): {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/turn/ttorrent/client/SharedTorrent;->requestedPieces:Ljava/util/BitSet;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 812
    monitor-exit p0

    return-void

    .line 803
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handlePieceSent(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V
    .registers 7
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "piece"    # Lcom/turn/ttorrent/client/Piece;

    .prologue
    .line 783
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v1, "Completed upload of {} to {}."

    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 784
    iget-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->uploaded:J

    invoke-virtual {p2}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->uploaded:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 785
    monitor-exit p0

    return-void

    .line 783
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 326
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Torrent was already initialized!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 325
    :catchall_f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 329
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/turn/ttorrent/client/SharedTorrent;->getHashingThreadsCount()I

    move-result v16

    .line 330
    .local v16, "threads":I
    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->pieceLength:I

    int-to-double v0, v3

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v13, v0

    .line 332
    .local v13, "nPieces":I
    const/16 v15, 0xa

    .line 334
    .local v15, "step":I
    new-array v3, v13, [Lcom/turn/ttorrent/client/Piece;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    .line 335
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v13}, Ljava/util/BitSet;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->piecesHashes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 338
    invoke-static/range {v16 .. v16}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 339
    .local v2, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V
    :try_end_50
    .catchall {:try_start_12 .. :try_end_50} :catchall_f

    .line 342
    .local v14, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lcom/turn/ttorrent/client/Piece;>;>;"
    :try_start_50
    sget-object v3, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v4, "Analyzing local data for {} with {} threads ({} pieces)..."

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v17

    const/16 v17, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v11, v17

    const/16 v17, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v11, v17

    invoke-interface {v3, v4, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_73
    if-ge v5, v13, :cond_f0

    .line 345
    const/16 v3, 0x14

    new-array v10, v3, [B

    .line 346
    .local v10, "hash":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->piecesHashes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 351
    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->pieceLength:I

    int-to-long v0, v3

    move-wide/from16 v20, v0

    mul-long v6, v18, v20

    .line 352
    .local v6, "off":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

    invoke-interface {v3}, Lcom/turn/ttorrent/client/storage/TorrentByteStorage;->size()J

    move-result-wide v18

    sub-long v18, v18, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->pieceLength:I

    int-to-long v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 356
    .local v8, "len":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    move-object/from16 v17, v0

    new-instance v3, Lcom/turn/ttorrent/client/Piece;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->isSeeder()Z

    move-result v11

    invoke-direct/range {v3 .. v11}, Lcom/turn/ttorrent/client/Piece;-><init>(Lcom/turn/ttorrent/client/storage/TorrentByteStorage;IJJ[BZ)V

    aput-object v3, v17, v5

    .line 359
    new-instance v12, Lcom/turn/ttorrent/client/Piece$CallableHasher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    aget-object v3, v3, v5

    invoke-direct {v12, v3}, Lcom/turn/ttorrent/client/Piece$CallableHasher;-><init>(Lcom/turn/ttorrent/client/Piece;)V

    .line 360
    .local v12, "hasher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/turn/ttorrent/client/Piece;>;"
    invoke-interface {v2, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v16

    if-lt v3, v0, :cond_d5

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/turn/ttorrent/client/SharedTorrent;->validatePieces(Ljava/util/List;)V

    .line 366
    :cond_d5
    int-to-float v3, v5

    int-to-float v4, v13

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    int-to-float v4, v15

    cmpl-float v3, v3, v4

    if-lez v3, :cond_ed

    .line 367
    sget-object v3, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v4, "  ... {}% complete"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    add-int/lit8 v15, v15, 0xa

    .line 344
    :cond_ed
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 372
    .end local v6    # "off":J
    .end local v8    # "len":J
    .end local v10    # "hash":[B
    .end local v12    # "hasher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/turn/ttorrent/client/Piece;>;"
    :cond_f0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/turn/ttorrent/client/SharedTorrent;->validatePieces(Ljava/util/List;)V
    :try_end_f5
    .catchall {:try_start_50 .. :try_end_f5} :catchall_112

    .line 376
    :try_start_f5
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 377
    :goto_f8
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_131

    .line 378
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->stop:Z

    if-eqz v3, :cond_10c

    .line 379
    new-instance v3, Ljava/lang/InterruptedException;

    const-string v4, "Torrent data analysis interrupted."

    invoke-direct {v3, v4}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 383
    :cond_10c
    const-wide/16 v18, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_f8

    .line 376
    .end local v5    # "idx":I
    :catchall_112
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 377
    :goto_116
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_130

    .line 378
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/turn/ttorrent/client/SharedTorrent;->stop:Z

    if-eqz v4, :cond_12a

    .line 379
    new-instance v3, Ljava/lang/InterruptedException;

    const-string v4, "Torrent data analysis interrupted."

    invoke-direct {v3, v4}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 383
    :cond_12a
    const-wide/16 v18, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_116

    :cond_130
    throw v3

    .line 387
    .restart local v5    # "idx":I
    :cond_131
    sget-object v3, Lcom/turn/ttorrent/client/SharedTorrent;->logger:Lorg/slf4j/Logger;

    const-string v4, "{}: we have {}/{} bytes ({}%) [{}/{} pieces]."

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v17

    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getSize()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/turn/ttorrent/client/SharedTorrent;->left:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v11, v17

    const/16 v17, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v11, v17

    const/16 v17, 0x3

    const-string v18, "%.1f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x42c80000    # 100.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/turn/ttorrent/client/SharedTorrent;->left:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/client/SharedTorrent;->getSize()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v17

    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/BitSet;->cardinality()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v11, v17

    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v11, v17

    invoke-interface {v3, v4, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/turn/ttorrent/client/SharedTorrent;->initialized:Z
    :try_end_1c5
    .catchall {:try_start_f5 .. :try_end_1c5} :catchall_f

    .line 397
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isComplete()Z
    .registers 3

    .prologue
    .line 517
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    array-length v0, v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    iget-object v1, p0, Lcom/turn/ttorrent/client/SharedTorrent;->pieces:[Lcom/turn/ttorrent/client/Piece;

    array-length v1, v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_16

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFinished()Z
    .registers 2

    .prologue
    .line 545
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/SharedTorrent;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->bucket:Lcom/turn/ttorrent/client/storage/TorrentByteStorage;

    invoke-interface {v0}, Lcom/turn/ttorrent/client/storage/TorrentByteStorage;->isFinished()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->initialized:Z

    return v0
.end method

.method public declared-synchronized markCompleted(Lcom/turn/ttorrent/client/Piece;)V
    .registers 6
    .param p1, "piece"    # Lcom/turn/ttorrent/client/Piece;

    .prologue
    .line 568
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_22

    move-result v0

    if-eqz v0, :cond_f

    .line 576
    :goto_d
    monitor-exit p0

    return-void

    .line 574
    :cond_f
    :try_start_f
    iget-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->left:J

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/Piece;->size()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->left:J

    .line 575
    iget-object v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->completedPieces:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/Piece;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_22

    goto :goto_d

    .line 568
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxDownloadRate(D)V
    .registers 4
    .param p1, "rate"    # D

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/turn/ttorrent/client/SharedTorrent;->maxDownloadRate:D

    .line 268
    return-void
.end method

.method public setMaxUploadRate(D)V
    .registers 4
    .param p1, "rate"    # D

    .prologue
    .line 253
    iput-wide p1, p0, Lcom/turn/ttorrent/client/SharedTorrent;->maxUploadRate:D

    .line 254
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/SharedTorrent;->stop:Z

    .line 308
    return-void
.end method
