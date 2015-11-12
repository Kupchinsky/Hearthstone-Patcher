.class Lorg/simpleframework/transport/SocketWriter;
.super Ljava/lang/Object;
.source "SocketWriter.java"

# interfaces
.implements Lorg/simpleframework/transport/Writer;


# instance fields
.field private builder:Lorg/simpleframework/transport/SegmentBuilder;

.field private channel:Ljava/nio/channels/SocketChannel;

.field private closed:Z


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Socket;)V
    .registers 3
    .param p1, "socket"    # Lorg/simpleframework/transport/Socket;

    .prologue
    .line 61
    const/16 v0, 0x5000

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/SocketWriter;-><init>(Lorg/simpleframework/transport/Socket;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/transport/Socket;I)V
    .registers 4
    .param p1, "socket"    # Lorg/simpleframework/transport/Socket;
    .param p2, "limit"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/simpleframework/transport/SegmentBuilder;

    invoke-direct {v0, p2}, Lorg/simpleframework/transport/SegmentBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/simpleframework/transport/SocketWriter;->builder:Lorg/simpleframework/transport/SegmentBuilder;

    .line 75
    invoke-interface {p1}, Lorg/simpleframework/transport/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/SocketWriter;->channel:Ljava/nio/channels/SocketChannel;

    .line 76
    return-void
.end method

.method private declared-synchronized complete()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/simpleframework/transport/SocketWriter;->builder:Lorg/simpleframework/transport/SegmentBuilder;

    invoke-virtual {v1}, Lorg/simpleframework/transport/SegmentBuilder;->length()I

    move-result v0

    .line 180
    .local v0, "count":I
    if-lez v0, :cond_e

    .line 181
    iget-object v1, p0, Lorg/simpleframework/transport/SocketWriter;->builder:Lorg/simpleframework/transport/SegmentBuilder;

    invoke-virtual {v1}, Lorg/simpleframework/transport/SegmentBuilder;->compact()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_15

    .line 183
    :cond_e
    if-gtz v0, :cond_13

    const/4 v1, 0x1

    :goto_11
    monitor-exit p0

    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_11

    .line 178
    .end local v0    # "count":I
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized write(Lorg/simpleframework/transport/Segment;)I
    .registers 6
    .param p1, "segment"    # Lorg/simpleframework/transport/Segment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/simpleframework/transport/SocketWriter;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1, v2}, Lorg/simpleframework/transport/Segment;->write(Ljava/nio/channels/ByteChannel;)I

    move-result v1

    .line 134
    .local v1, "size":I
    invoke-virtual {p1}, Lorg/simpleframework/transport/Segment;->length()I

    move-result v0

    .line 136
    .local v0, "left":I
    if-nez v0, :cond_10

    .line 137
    invoke-virtual {p1}, Lorg/simpleframework/transport/Segment;->close()V

    .line 139
    :cond_10
    if-gez v1, :cond_1d

    .line 140
    new-instance v2, Lorg/simpleframework/transport/TransportException;

    const-string v3, "Socket is closed"

    invoke-direct {v2, v3}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1a

    .line 133
    .end local v0    # "left":I
    .end local v1    # "size":I
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 142
    .restart local v0    # "left":I
    .restart local v1    # "size":I
    :cond_1d
    monitor-exit p0

    return v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/simpleframework/transport/SocketWriter;->closed:Z

    if-nez v0, :cond_1b

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/transport/SocketWriter;->closed:Z

    .line 197
    iget-object v0, p0, Lorg/simpleframework/transport/SocketWriter;->builder:Lorg/simpleframework/transport/SegmentBuilder;

    invoke-virtual {v0}, Lorg/simpleframework/transport/SegmentBuilder;->close()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1d

    .line 199
    :try_start_d
    iget-object v0, p0, Lorg/simpleframework/transport/SocketWriter;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_20
    .catchall {:try_start_d .. :try_end_16} :catchall_1d

    .line 202
    :goto_16
    :try_start_16
    iget-object v0, p0, Lorg/simpleframework/transport/SocketWriter;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    .line 204
    :cond_1b
    monitor-exit p0

    return-void

    .line 195
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 200
    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method public declared-synchronized flush()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/simpleframework/transport/SocketWriter;->builder:Lorg/simpleframework/transport/SegmentBuilder;

    invoke-virtual {v2}, Lorg/simpleframework/transport/SegmentBuilder;->build()Lorg/simpleframework/transport/Segment;

    move-result-object v0

    .line 155
    .local v0, "segment":Lorg/simpleframework/transport/Segment;
    :goto_7
    if-eqz v0, :cond_1c

    .line 156
    invoke-direct {p0, v0}, Lorg/simpleframework/transport/SocketWriter;->write(Lorg/simpleframework/transport/Segment;)I

    move-result v1

    .line 158
    .local v1, "size":I
    if-gez v1, :cond_1a

    .line 159
    new-instance v2, Lorg/simpleframework/transport/TransportException;

    const-string v3, "Connection reset"

    invoke-direct {v2, v3}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_17

    .line 153
    .end local v0    # "segment":Lorg/simpleframework/transport/Segment;
    .end local v1    # "size":I
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 161
    .restart local v0    # "segment":Lorg/simpleframework/transport/Segment;
    .restart local v1    # "size":I
    :cond_1a
    if-nez v1, :cond_22

    .line 166
    .end local v1    # "size":I
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Lorg/simpleframework/transport/SocketWriter;->complete()Z
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_17

    move-result v2

    monitor-exit p0

    return v2

    .line 164
    .restart local v1    # "size":I
    :cond_22
    :try_start_22
    iget-object v2, p0, Lorg/simpleframework/transport/SocketWriter;->builder:Lorg/simpleframework/transport/SegmentBuilder;

    invoke-virtual {v2}, Lorg/simpleframework/transport/SegmentBuilder;->build()Lorg/simpleframework/transport/Segment;
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_17

    move-result-object v0

    .line 165
    goto :goto_7
.end method

.method public declared-synchronized getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/simpleframework/transport/SocketWriter;->channel:Ljava/nio/channels/SocketChannel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBlocking()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/simpleframework/transport/SocketWriter;->builder:Lorg/simpleframework/transport/SegmentBuilder;

    invoke-virtual {v0}, Lorg/simpleframework/transport/SegmentBuilder;->isReference()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Lorg/simpleframework/transport/Packet;)Z
    .registers 4
    .param p1, "packet"    # Lorg/simpleframework/transport/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/simpleframework/transport/SocketWriter;->builder:Lorg/simpleframework/transport/SegmentBuilder;

    invoke-virtual {v1, p1}, Lorg/simpleframework/transport/SegmentBuilder;->build(Lorg/simpleframework/transport/Packet;)Lorg/simpleframework/transport/Segment;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-result-object v0

    .line 116
    .local v0, "segment":Lorg/simpleframework/transport/Segment;
    if-nez v0, :cond_c

    .line 117
    const/4 v1, 0x1

    .line 119
    :goto_a
    monitor-exit p0

    return v1

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lorg/simpleframework/transport/SocketWriter;->flush()Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    move-result v1

    goto :goto_a

    .line 114
    .end local v0    # "segment":Lorg/simpleframework/transport/Segment;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method
