.class public Lcom/turn/ttorrent/client/storage/FileStorage;
.super Ljava/lang/Object;
.source "FileStorage.java"

# interfaces
.implements Lcom/turn/ttorrent/client/storage/TorrentByteStorage;


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private current:Ljava/io/File;

.field private final offset:J

.field private final partial:Ljava/io/File;

.field private raf:Ljava/io/RandomAccessFile;

.field private final size:J

.field private final target:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/turn/ttorrent/client/storage/FileStorage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/storage/FileStorage;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .registers 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/turn/ttorrent/client/storage/FileStorage;-><init>(Ljava/io/File;JJ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/File;JJ)V
    .registers 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    .line 61
    iput-wide p2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->offset:J

    .line 62
    iput-wide p4, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->size:J

    .line 64
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".part"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->partial:Ljava/io/File;

    .line 67
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->partial:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 68
    sget-object v0, Lcom/turn/ttorrent/client/storage/FileStorage;->logger:Lorg/slf4j/Logger;

    const-string v1, "Partial download found at {}. Continuing..."

    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->partial:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->partial:Ljava/io/File;

    iput-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->current:Ljava/io/File;

    .line 81
    :goto_42
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->current:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->raf:Ljava/io/RandomAccessFile;

    .line 85
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->raf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 87
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    .line 88
    sget-object v0, Lcom/turn/ttorrent/client/storage/FileStorage;->logger:Lorg/slf4j/Logger;

    const-string v1, "Initialized byte storage file at {} ({}+{} byte(s))."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->current:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->offset:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-void

    .line 71
    :cond_82
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 72
    sget-object v0, Lcom/turn/ttorrent/client/storage/FileStorage;->logger:Lorg/slf4j/Logger;

    const-string v1, "Downloading new file to {}..."

    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->partial:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->partial:Ljava/io/File;

    iput-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->current:Ljava/io/File;

    goto :goto_42

    .line 76
    :cond_9c
    sget-object v0, Lcom/turn/ttorrent/client/storage/FileStorage;->logger:Lorg/slf4j/Logger;

    const-string v1, "Using existing file {}."

    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    iput-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->current:Ljava/io/File;

    goto :goto_42
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/turn/ttorrent/client/storage/FileStorage;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing file channel to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->current:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 137
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 139
    :cond_33
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 140
    monitor-exit p0

    return-void

    .line 135
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finish()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/turn/ttorrent/client/storage/FileStorage;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing file channel to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->current:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (download complete)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 149
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 153
    :cond_33
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/storage/FileStorage;->isFinished()Z
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_90

    move-result v0

    if-eqz v0, :cond_3b

    .line 173
    :goto_39
    monitor-exit p0

    return-void

    .line 157
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 158
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    invoke-static {v0}, Lru/killer666/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 159
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->current:Ljava/io/File;

    iget-object v1, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    invoke-static {v0, v1}, Lru/killer666/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 161
    sget-object v0, Lcom/turn/ttorrent/client/storage/FileStorage;->logger:Lorg/slf4j/Logger;

    const-string v1, "Re-opening torrent byte storage at {}."

    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->raf:Ljava/io/RandomAccessFile;

    .line 165
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->raf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 166
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    .line 167
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    iput-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->current:Ljava/io/File;

    .line 169
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->partial:Ljava/io/File;

    invoke-static {v0}, Lru/killer666/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 170
    sget-object v0, Lcom/turn/ttorrent/client/storage/FileStorage;->logger:Lorg/slf4j/Logger;

    const-string v1, "Moved torrent data from {} to {}."

    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->partial:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8f
    .catchall {:try_start_3b .. :try_end_8f} :catchall_90

    goto :goto_39

    .line 146
    :catchall_90
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFinished()Z
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->current:Ljava/io/File;

    iget-object v1, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->target:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected offset()J
    .registers 3

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->offset:J

    return-wide v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 110
    .local v1, "requested":I
    int-to-long v2, v1

    add-long/2addr v2, p2

    iget-wide v4, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_14

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid storage read request!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_14
    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    .line 115
    .local v0, "bytes":I
    if-ge v0, v1, :cond_24

    .line 116
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Storage underrun!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_24
    return v0
.end method

.method public size()J
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->size:J

    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 126
    .local v0, "requested":I
    int-to-long v2, v0

    add-long/2addr v2, p2

    iget-wide v4, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->size:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_14

    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid storage write request!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_14
    iget-object v1, p0, Lcom/turn/ttorrent/client/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    return v1
.end method
