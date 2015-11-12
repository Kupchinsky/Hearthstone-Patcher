.class Lorg/simpleframework/transport/SocketController;
.super Ljava/lang/Object;
.source "SocketController.java"

# interfaces
.implements Lorg/simpleframework/transport/Controller;


# instance fields
.field private final flusher:Lorg/simpleframework/transport/Flusher;

.field private final writer:Lorg/simpleframework/transport/Writer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Socket;Lorg/simpleframework/transport/reactor/Reactor;I)V
    .registers 6
    .param p1, "socket"    # Lorg/simpleframework/transport/Socket;
    .param p2, "reactor"    # Lorg/simpleframework/transport/reactor/Reactor;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/simpleframework/transport/SocketWriter;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/transport/SocketWriter;-><init>(Lorg/simpleframework/transport/Socket;I)V

    iput-object v0, p0, Lorg/simpleframework/transport/SocketController;->writer:Lorg/simpleframework/transport/Writer;

    .line 58
    new-instance v0, Lorg/simpleframework/transport/SocketFlusher;

    iget-object v1, p0, Lorg/simpleframework/transport/SocketController;->writer:Lorg/simpleframework/transport/Writer;

    invoke-direct {v0, p2, v1}, Lorg/simpleframework/transport/SocketFlusher;-><init>(Lorg/simpleframework/transport/reactor/Reactor;Lorg/simpleframework/transport/Writer;)V

    iput-object v0, p0, Lorg/simpleframework/transport/SocketController;->flusher:Lorg/simpleframework/transport/Flusher;

    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/simpleframework/transport/SocketController;->flusher:Lorg/simpleframework/transport/Flusher;

    invoke-interface {v0}, Lorg/simpleframework/transport/Flusher;->close()V

    .line 99
    iget-object v0, p0, Lorg/simpleframework/transport/SocketController;->writer:Lorg/simpleframework/transport/Writer;

    invoke-interface {v0}, Lorg/simpleframework/transport/Writer;->close()V

    .line 100
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lorg/simpleframework/transport/SocketController;->writer:Lorg/simpleframework/transport/Writer;

    invoke-interface {v1}, Lorg/simpleframework/transport/Writer;->flush()Z

    move-result v0

    .line 86
    .local v0, "done":Z
    if-nez v0, :cond_d

    .line 87
    iget-object v1, p0, Lorg/simpleframework/transport/SocketController;->flusher:Lorg/simpleframework/transport/Flusher;

    invoke-interface {v1}, Lorg/simpleframework/transport/Flusher;->flush()V

    .line 89
    :cond_d
    return-void
.end method

.method public write(Lorg/simpleframework/transport/Packet;)V
    .registers 4
    .param p1, "packet"    # Lorg/simpleframework/transport/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lorg/simpleframework/transport/SocketController;->writer:Lorg/simpleframework/transport/Writer;

    invoke-interface {v1, p1}, Lorg/simpleframework/transport/Writer;->write(Lorg/simpleframework/transport/Packet;)Z

    move-result v0

    .line 72
    .local v0, "done":Z
    if-nez v0, :cond_d

    .line 73
    iget-object v1, p0, Lorg/simpleframework/transport/SocketController;->flusher:Lorg/simpleframework/transport/Flusher;

    invoke-interface {v1}, Lorg/simpleframework/transport/Flusher;->flush()V

    .line 75
    :cond_d
    return-void
.end method
