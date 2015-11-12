.class Lorg/simpleframework/transport/SocketTransport;
.super Ljava/lang/Object;
.source "SocketTransport.java"

# interfaces
.implements Lorg/simpleframework/transport/Transport;


# instance fields
.field private builder:Lorg/simpleframework/transport/PacketBuilder;

.field private channel:Ljava/nio/channels/SocketChannel;

.field private closed:Z

.field private socket:Lorg/simpleframework/transport/Socket;

.field private writer:Lorg/simpleframework/transport/Controller;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Socket;Lorg/simpleframework/transport/reactor/Reactor;)V
    .registers 4
    .param p1, "socket"    # Lorg/simpleframework/transport/Socket;
    .param p2, "reactor"    # Lorg/simpleframework/transport/reactor/Reactor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/16 v0, 0x5000

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/transport/SocketTransport;-><init>(Lorg/simpleframework/transport/Socket;Lorg/simpleframework/transport/reactor/Reactor;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/transport/Socket;Lorg/simpleframework/transport/reactor/Reactor;I)V
    .registers 5
    .param p1, "socket"    # Lorg/simpleframework/transport/Socket;
    .param p2, "reactor"    # Lorg/simpleframework/transport/reactor/Reactor;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/transport/SocketTransport;-><init>(Lorg/simpleframework/transport/Socket;Lorg/simpleframework/transport/reactor/Reactor;II)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/transport/Socket;Lorg/simpleframework/transport/reactor/Reactor;II)V
    .registers 6
    .param p1, "socket"    # Lorg/simpleframework/transport/Socket;
    .param p2, "reactor"    # Lorg/simpleframework/transport/reactor/Reactor;
    .param p3, "limit"    # I
    .param p4, "queue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lorg/simpleframework/transport/SocketController;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/transport/SocketController;-><init>(Lorg/simpleframework/transport/Socket;Lorg/simpleframework/transport/reactor/Reactor;I)V

    iput-object v0, p0, Lorg/simpleframework/transport/SocketTransport;->writer:Lorg/simpleframework/transport/Controller;

    .line 123
    new-instance v0, Lorg/simpleframework/transport/PacketBuilder;

    invoke-direct {v0, p4}, Lorg/simpleframework/transport/PacketBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/simpleframework/transport/SocketTransport;->builder:Lorg/simpleframework/transport/PacketBuilder;

    .line 124
    invoke-interface {p1}, Lorg/simpleframework/transport/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/SocketTransport;->channel:Ljava/nio/channels/SocketChannel;

    .line 125
    iput-object p1, p0, Lorg/simpleframework/transport/SocketTransport;->socket:Lorg/simpleframework/transport/Socket;

    .line 126
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-boolean v1, p0, Lorg/simpleframework/transport/SocketTransport;->closed:Z

    if-nez v1, :cond_19

    .line 234
    iget-object v1, p0, Lorg/simpleframework/transport/SocketTransport;->builder:Lorg/simpleframework/transport/PacketBuilder;

    invoke-virtual {v1}, Lorg/simpleframework/transport/PacketBuilder;->build()Lorg/simpleframework/transport/Packet;

    move-result-object v0

    .line 236
    .local v0, "packet":Lorg/simpleframework/transport/Packet;
    if-eqz v0, :cond_11

    .line 237
    iget-object v1, p0, Lorg/simpleframework/transport/SocketTransport;->writer:Lorg/simpleframework/transport/Controller;

    invoke-interface {v1, v0}, Lorg/simpleframework/transport/Controller;->write(Lorg/simpleframework/transport/Packet;)V

    .line 239
    :cond_11
    iget-object v1, p0, Lorg/simpleframework/transport/SocketTransport;->writer:Lorg/simpleframework/transport/Controller;

    invoke-interface {v1}, Lorg/simpleframework/transport/Controller;->close()V

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/simpleframework/transport/SocketTransport;->closed:Z

    .line 242
    .end local v0    # "packet":Lorg/simpleframework/transport/Packet;
    :cond_19
    return-void
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-boolean v1, p0, Lorg/simpleframework/transport/SocketTransport;->closed:Z

    if-eqz v1, :cond_c

    .line 217
    new-instance v1, Lorg/simpleframework/transport/TransportException;

    const-string v2, "Transport is closed"

    invoke-direct {v1, v2}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_c
    iget-object v1, p0, Lorg/simpleframework/transport/SocketTransport;->builder:Lorg/simpleframework/transport/PacketBuilder;

    invoke-virtual {v1}, Lorg/simpleframework/transport/PacketBuilder;->build()Lorg/simpleframework/transport/Packet;

    move-result-object v0

    .line 221
    .local v0, "packet":Lorg/simpleframework/transport/Packet;
    if-eqz v0, :cond_19

    .line 222
    iget-object v1, p0, Lorg/simpleframework/transport/SocketTransport;->writer:Lorg/simpleframework/transport/Controller;

    invoke-interface {v1, v0}, Lorg/simpleframework/transport/Controller;->write(Lorg/simpleframework/transport/Packet;)V

    .line 224
    :cond_19
    return-void
.end method

.method public getAttributes()Ljava/util/Map;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/simpleframework/transport/SocketTransport;->socket:Lorg/simpleframework/transport/Socket;

    invoke-interface {v0}, Lorg/simpleframework/transport/Socket;->getAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/simpleframework/transport/SocketTransport;->socket:Lorg/simpleframework/transport/Socket;

    invoke-interface {v0}, Lorg/simpleframework/transport/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/simpleframework/transport/SocketTransport;->socket:Lorg/simpleframework/transport/Socket;

    invoke-interface {v0}, Lorg/simpleframework/transport/Socket;->getEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-boolean v0, p0, Lorg/simpleframework/transport/SocketTransport;->closed:Z

    if-eqz v0, :cond_c

    .line 180
    new-instance v0, Lorg/simpleframework/transport/TransportException;

    const-string v1, "Transport is closed"

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/transport/SocketTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-boolean v1, p0, Lorg/simpleframework/transport/SocketTransport;->closed:Z

    if-eqz v1, :cond_c

    .line 197
    new-instance v1, Lorg/simpleframework/transport/TransportException;

    const-string v2, "Transport is closed"

    invoke-direct {v1, v2}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_c
    iget-object v1, p0, Lorg/simpleframework/transport/SocketTransport;->builder:Lorg/simpleframework/transport/PacketBuilder;

    invoke-virtual {v1, p1}, Lorg/simpleframework/transport/PacketBuilder;->build(Ljava/nio/ByteBuffer;)Lorg/simpleframework/transport/Packet;

    move-result-object v0

    .line 201
    .local v0, "packet":Lorg/simpleframework/transport/Packet;
    :goto_12
    if-eqz v0, :cond_24

    .line 202
    iget-boolean v1, p0, Lorg/simpleframework/transport/SocketTransport;->closed:Z

    if-nez v1, :cond_1d

    .line 203
    iget-object v1, p0, Lorg/simpleframework/transport/SocketTransport;->writer:Lorg/simpleframework/transport/Controller;

    invoke-interface {v1, v0}, Lorg/simpleframework/transport/Controller;->write(Lorg/simpleframework/transport/Packet;)V

    .line 205
    :cond_1d
    iget-object v1, p0, Lorg/simpleframework/transport/SocketTransport;->builder:Lorg/simpleframework/transport/PacketBuilder;

    invoke-virtual {v1, p1}, Lorg/simpleframework/transport/PacketBuilder;->build(Ljava/nio/ByteBuffer;)Lorg/simpleframework/transport/Packet;

    move-result-object v0

    goto :goto_12

    .line 207
    :cond_24
    return-void
.end method
