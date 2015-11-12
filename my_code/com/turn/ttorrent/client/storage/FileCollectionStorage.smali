.class public Lcom/turn/ttorrent/client/storage/FileCollectionStorage;
.super Ljava/lang/Object;
.source "FileCollectionStorage.java"

# interfaces
.implements Lcom/turn/ttorrent/client/storage/TorrentByteStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/client/storage/FileStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .registers 8
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/client/storage/FileStorage;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/client/storage/FileStorage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->files:Ljava/util/List;

    .line 59
    iput-wide p2, p0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->size:J

    .line 61
    sget-object v0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->logger:Lorg/slf4j/Logger;

    const-string v1, "Initialized torrent byte storage on {} file(s) ({} total byte(s))."

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method private select(JJ)Ljava/util/List;
    .registers 22
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    add-long v12, p1, p3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->size:J

    cmp-long v2, v12, v14

    if-lez v2, :cond_45

    .line 177
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Buffer overrun ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") !"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_45
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 182
    .local v11, "selected":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;>;"
    const-wide/16 v8, 0x0

    .line 184
    .local v8, "bytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_54
    :goto_54
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/turn/ttorrent/client/storage/FileStorage;

    .line 185
    .local v3, "file":Lcom/turn/ttorrent/client/storage/FileStorage;
    invoke-virtual {v3}, Lcom/turn/ttorrent/client/storage/FileStorage;->offset()J

    move-result-wide v12

    add-long v14, p1, p3

    cmp-long v2, v12, v14

    if-ltz v2, :cond_9f

    .line 202
    .end local v3    # "file":Lcom/turn/ttorrent/client/storage/FileStorage;
    :cond_6a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_74

    cmp-long v2, v8, p3

    if-gez v2, :cond_d0

    .line 203
    :cond_74
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Buffer underrun (only got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " out of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " byte(s) requested)!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    .restart local v3    # "file":Lcom/turn/ttorrent/client/storage/FileStorage;
    :cond_9f
    invoke-virtual {v3}, Lcom/turn/ttorrent/client/storage/FileStorage;->offset()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/storage/FileStorage;->size()J

    move-result-wide v14

    add-long/2addr v12, v14

    cmp-long v2, v12, p1

    if-ltz v2, :cond_54

    .line 193
    invoke-virtual {v3}, Lcom/turn/ttorrent/client/storage/FileStorage;->offset()J

    move-result-wide v12

    sub-long v4, p1, v12

    .line 194
    .local v4, "position":J
    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-lez v2, :cond_cd

    .line 195
    :goto_b8
    invoke-virtual {v3}, Lcom/turn/ttorrent/client/storage/FileStorage;->size()J

    move-result-wide v12

    sub-long/2addr v12, v4

    sub-long v14, p3, v8

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 198
    .local v6, "size":J
    new-instance v2, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;

    invoke-direct/range {v2 .. v7}, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;-><init>(Lcom/turn/ttorrent/client/storage/FileStorage;JJ)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-long/2addr v8, v6

    .line 200
    goto :goto_54

    .line 194
    .end local v6    # "size":J
    :cond_cd
    const-wide/16 v4, 0x0

    goto :goto_b8

    .line 207
    .end local v3    # "file":Lcom/turn/ttorrent/client/storage/FileStorage;
    .end local v4    # "position":J
    :cond_d0
    return-object v11
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/client/storage/FileStorage;

    .line 110
    .local v0, "file":Lcom/turn/ttorrent/client/storage/FileStorage;
    invoke-virtual {v0}, Lcom/turn/ttorrent/client/storage/FileStorage;->close()V

    goto :goto_6

    .line 112
    .end local v0    # "file":Lcom/turn/ttorrent/client/storage/FileStorage;
    :cond_16
    return-void
.end method

.method public finish()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/client/storage/FileStorage;

    .line 117
    .local v0, "file":Lcom/turn/ttorrent/client/storage/FileStorage;
    invoke-virtual {v0}, Lcom/turn/ttorrent/client/storage/FileStorage;->finish()V

    goto :goto_6

    .line 119
    .end local v0    # "file":Lcom/turn/ttorrent/client/storage/FileStorage;
    :cond_16
    return-void
.end method

.method public isFinished()Z
    .registers 4

    .prologue
    .line 123
    iget-object v2, p0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/client/storage/FileStorage;

    .line 124
    .local v0, "file":Lcom/turn/ttorrent/client/storage/FileStorage;
    invoke-virtual {v0}, Lcom/turn/ttorrent/client/storage/FileStorage;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    .line 125
    const/4 v2, 0x0

    .line 129
    .end local v0    # "file":Lcom/turn/ttorrent/client/storage/FileStorage;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 73
    .local v3, "requested":I
    const/4 v0, 0x0

    .line 75
    .local v0, "bytes":I
    int-to-long v4, v3

    invoke-direct {p0, p2, p3, v4, v5}, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->select(JJ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;

    .line 78
    .local v1, "fo":Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;
    int-to-long v4, v0

    iget-wide v6, v1, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;->length:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 79
    iget-object v4, v1, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;->file:Lcom/turn/ttorrent/client/storage/FileStorage;

    iget-wide v6, v1, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;->offset:J

    invoke-virtual {v4, p1, v6, v7}, Lcom/turn/ttorrent/client/storage/FileStorage;->read(Ljava/nio/ByteBuffer;J)I

    move-result v4

    add-int/2addr v0, v4

    .line 80
    goto :goto_e

    .line 82
    .end local v1    # "fo":Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;
    :cond_2c
    if-ge v0, v3, :cond_36

    .line 83
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Storage collection read underrun!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_36
    return v0
.end method

.method public size()J
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->size:J

    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .registers 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 93
    .local v3, "requested":I
    const/4 v0, 0x0

    .line 95
    .local v0, "bytes":I
    int-to-long v4, v3

    invoke-direct {p0, p2, p3, v4, v5}, Lcom/turn/ttorrent/client/storage/FileCollectionStorage;->select(JJ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;

    .line 96
    .local v1, "fo":Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;
    iget-wide v4, v1, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;->length:J

    long-to-int v4, v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 97
    iget-object v4, v1, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;->file:Lcom/turn/ttorrent/client/storage/FileStorage;

    iget-wide v6, v1, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;->offset:J

    invoke-virtual {v4, p1, v6, v7}, Lcom/turn/ttorrent/client/storage/FileStorage;->write(Ljava/nio/ByteBuffer;J)I

    move-result v4

    add-int/2addr v0, v4

    .line 98
    goto :goto_e

    .line 100
    .end local v1    # "fo":Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;
    :cond_2b
    if-ge v0, v3, :cond_35

    .line 101
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Storage collection write underrun!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :cond_35
    return v0
.end method
