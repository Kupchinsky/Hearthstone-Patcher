.class public Lorg/simpleframework/transport/connect/SocketConnection;
.super Ljava/lang/Object;
.source "SocketConnection.java"

# interfaces
.implements Lorg/simpleframework/transport/connect/Connection;


# instance fields
.field private closed:Z

.field private manager:Lorg/simpleframework/transport/connect/ListenerManager;

.field private server:Lorg/simpleframework/transport/Server;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Container;)V
    .registers 3
    .param p1, "container"    # Lorg/simpleframework/http/core/Container;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lorg/simpleframework/http/core/ContainerServer;

    invoke-direct {v0, p1}, Lorg/simpleframework/http/core/ContainerServer;-><init>(Lorg/simpleframework/http/core/Container;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/transport/connect/SocketConnection;-><init>(Lorg/simpleframework/transport/Server;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/transport/Server;)V
    .registers 3
    .param p1, "server"    # Lorg/simpleframework/transport/Server;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/simpleframework/transport/connect/ListenerManager;

    invoke-direct {v0, p1}, Lorg/simpleframework/transport/connect/ListenerManager;-><init>(Lorg/simpleframework/transport/Server;)V

    iput-object v0, p0, Lorg/simpleframework/transport/connect/SocketConnection;->manager:Lorg/simpleframework/transport/connect/ListenerManager;

    .line 74
    iput-object p1, p0, Lorg/simpleframework/transport/connect/SocketConnection;->server:Lorg/simpleframework/transport/Server;

    .line 75
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
    .line 139
    iget-boolean v0, p0, Lorg/simpleframework/transport/connect/SocketConnection;->closed:Z

    if-nez v0, :cond_e

    .line 140
    iget-object v0, p0, Lorg/simpleframework/transport/connect/SocketConnection;->manager:Lorg/simpleframework/transport/connect/ListenerManager;

    invoke-virtual {v0}, Lorg/simpleframework/transport/connect/ListenerManager;->close()V

    .line 141
    iget-object v0, p0, Lorg/simpleframework/transport/connect/SocketConnection;->server:Lorg/simpleframework/transport/Server;

    invoke-interface {v0}, Lorg/simpleframework/transport/Server;->stop()V

    .line 143
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/transport/connect/SocketConnection;->closed:Z

    .line 144
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .registers 4
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/simpleframework/transport/connect/SocketConnection;->closed:Z

    if-eqz v0, :cond_c

    .line 104
    new-instance v0, Lorg/simpleframework/transport/connect/ConnectionException;

    const-string v1, "Connection is closed"

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/connect/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/transport/connect/SocketConnection;->manager:Lorg/simpleframework/transport/connect/ListenerManager;

    invoke-virtual {v0, p1}, Lorg/simpleframework/transport/connect/ListenerManager;->listen(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljavax/net/ssl/SSLContext;)Ljava/net/SocketAddress;
    .registers 5
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "context"    # Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/simpleframework/transport/connect/SocketConnection;->closed:Z

    if-eqz v0, :cond_c

    .line 124
    new-instance v0, Lorg/simpleframework/transport/connect/ConnectionException;

    const-string v1, "Connection is closed"

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/connect/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/transport/connect/SocketConnection;->manager:Lorg/simpleframework/transport/connect/ListenerManager;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/transport/connect/ListenerManager;->listen(Ljava/net/SocketAddress;Ljavax/net/ssl/SSLContext;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method
