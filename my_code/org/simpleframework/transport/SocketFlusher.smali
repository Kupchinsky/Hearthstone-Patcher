.class Lorg/simpleframework/transport/SocketFlusher;
.super Ljava/lang/Object;
.source "SocketFlusher.java"

# interfaces
.implements Lorg/simpleframework/transport/Flusher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/transport/SocketFlusher$Signaller;
    }
.end annotation


# instance fields
.field private closed:Z

.field private scheduler:Lorg/simpleframework/transport/Scheduler;

.field private signaller:Lorg/simpleframework/transport/SocketFlusher$Signaller;

.field private writer:Lorg/simpleframework/transport/Writer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/reactor/Reactor;Lorg/simpleframework/transport/Writer;)V
    .registers 5
    .param p1, "reactor"    # Lorg/simpleframework/transport/reactor/Reactor;
    .param p2, "writer"    # Lorg/simpleframework/transport/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lorg/simpleframework/transport/SocketFlusher$Signaller;

    invoke-direct {v0, p0, p2}, Lorg/simpleframework/transport/SocketFlusher$Signaller;-><init>(Lorg/simpleframework/transport/SocketFlusher;Lorg/simpleframework/transport/Writer;)V

    iput-object v0, p0, Lorg/simpleframework/transport/SocketFlusher;->signaller:Lorg/simpleframework/transport/SocketFlusher$Signaller;

    .line 73
    new-instance v0, Lorg/simpleframework/transport/Scheduler;

    iget-object v1, p0, Lorg/simpleframework/transport/SocketFlusher;->signaller:Lorg/simpleframework/transport/SocketFlusher$Signaller;

    invoke-direct {v0, p1, v1, p0}, Lorg/simpleframework/transport/Scheduler;-><init>(Lorg/simpleframework/transport/reactor/Reactor;Lorg/simpleframework/transport/reactor/Operation;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/simpleframework/transport/SocketFlusher;->scheduler:Lorg/simpleframework/transport/Scheduler;

    .line 74
    iput-object p2, p0, Lorg/simpleframework/transport/SocketFlusher;->writer:Lorg/simpleframework/transport/Writer;

    .line 75
    return-void
.end method

.method private declared-synchronized abort()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/simpleframework/transport/SocketFlusher;->scheduler:Lorg/simpleframework/transport/Scheduler;

    invoke-virtual {v0}, Lorg/simpleframework/transport/Scheduler;->close()V

    .line 124
    iget-object v0, p0, Lorg/simpleframework/transport/SocketFlusher;->writer:Lorg/simpleframework/transport/Writer;

    invoke-interface {v0}, Lorg/simpleframework/transport/Writer;->close()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 125
    monitor-exit p0

    return-void

    .line 123
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lorg/simpleframework/transport/SocketFlusher;)V
    .registers 1
    .param p0, "x0"    # Lorg/simpleframework/transport/SocketFlusher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/simpleframework/transport/SocketFlusher;->execute()V

    return-void
.end method

.method static synthetic access$100(Lorg/simpleframework/transport/SocketFlusher;)V
    .registers 1
    .param p0, "x0"    # Lorg/simpleframework/transport/SocketFlusher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/simpleframework/transport/SocketFlusher;->abort()V

    return-void
.end method

.method private declared-synchronized execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/simpleframework/transport/SocketFlusher;->writer:Lorg/simpleframework/transport/Writer;

    invoke-interface {v2}, Lorg/simpleframework/transport/Writer;->flush()Z

    move-result v1

    .line 104
    .local v1, "ready":Z
    if-nez v1, :cond_21

    .line 105
    iget-object v2, p0, Lorg/simpleframework/transport/SocketFlusher;->writer:Lorg/simpleframework/transport/Writer;

    invoke-interface {v2}, Lorg/simpleframework/transport/Writer;->isBlocking()Z

    move-result v0

    .line 107
    .local v0, "block":Z
    if-nez v0, :cond_1a

    iget-boolean v2, p0, Lorg/simpleframework/transport/SocketFlusher;->closed:Z

    if-nez v2, :cond_1a

    .line 108
    iget-object v2, p0, Lorg/simpleframework/transport/SocketFlusher;->scheduler:Lorg/simpleframework/transport/Scheduler;

    invoke-virtual {v2}, Lorg/simpleframework/transport/Scheduler;->release()V

    .line 110
    :cond_1a
    iget-object v2, p0, Lorg/simpleframework/transport/SocketFlusher;->scheduler:Lorg/simpleframework/transport/Scheduler;

    invoke-virtual {v2}, Lorg/simpleframework/transport/Scheduler;->repeat()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_27

    .line 114
    .end local v0    # "block":Z
    :goto_1f
    monitor-exit p0

    return-void

    .line 112
    :cond_21
    :try_start_21
    iget-object v2, p0, Lorg/simpleframework/transport/SocketFlusher;->scheduler:Lorg/simpleframework/transport/Scheduler;

    invoke-virtual {v2}, Lorg/simpleframework/transport/Scheduler;->ready()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_27

    goto :goto_1f

    .line 102
    .end local v1    # "ready":Z
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
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
    .line 134
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/simpleframework/transport/SocketFlusher;->writer:Lorg/simpleframework/transport/Writer;

    invoke-interface {v1}, Lorg/simpleframework/transport/Writer;->flush()Z

    move-result v0

    .line 136
    .local v0, "ready":Z
    iget-boolean v1, p0, Lorg/simpleframework/transport/SocketFlusher;->closed:Z

    if-nez v1, :cond_e

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/simpleframework/transport/SocketFlusher;->closed:Z

    .line 139
    :cond_e
    if-nez v0, :cond_16

    .line 140
    iget-object v1, p0, Lorg/simpleframework/transport/SocketFlusher;->scheduler:Lorg/simpleframework/transport/Scheduler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/simpleframework/transport/Scheduler;->schedule(Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 142
    :cond_16
    monitor-exit p0

    return-void

    .line 134
    .end local v0    # "ready":Z
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lorg/simpleframework/transport/SocketFlusher;->closed:Z

    if-eqz v1, :cond_10

    .line 85
    new-instance v1, Lorg/simpleframework/transport/TransportException;

    const-string v2, "Flusher is closed"

    invoke-direct {v1, v2}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 84
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 87
    :cond_10
    :try_start_10
    iget-object v1, p0, Lorg/simpleframework/transport/SocketFlusher;->writer:Lorg/simpleframework/transport/Writer;

    invoke-interface {v1}, Lorg/simpleframework/transport/Writer;->isBlocking()Z

    move-result v0

    .line 89
    .local v0, "block":Z
    iget-boolean v1, p0, Lorg/simpleframework/transport/SocketFlusher;->closed:Z

    if-nez v1, :cond_1f

    .line 90
    iget-object v1, p0, Lorg/simpleframework/transport/SocketFlusher;->scheduler:Lorg/simpleframework/transport/Scheduler;

    invoke-virtual {v1, v0}, Lorg/simpleframework/transport/Scheduler;->schedule(Z)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_d

    .line 92
    :cond_1f
    monitor-exit p0

    return-void
.end method
