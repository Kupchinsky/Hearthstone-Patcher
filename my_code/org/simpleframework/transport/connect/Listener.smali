.class Lorg/simpleframework/transport/connect/Listener;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final acceptor:Lorg/simpleframework/transport/connect/Acceptor;

.field private final reactor:Lorg/simpleframework/transport/reactor/Reactor;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljavax/net/ssl/SSLContext;Lorg/simpleframework/transport/Server;)V
    .registers 5
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "context"    # Ljavax/net/ssl/SSLContext;
    .param p3, "processor"    # Lorg/simpleframework/transport/Server;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lorg/simpleframework/transport/connect/Acceptor;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/transport/connect/Acceptor;-><init>(Ljava/net/SocketAddress;Ljavax/net/ssl/SSLContext;Lorg/simpleframework/transport/Server;)V

    iput-object v0, p0, Lorg/simpleframework/transport/connect/Listener;->acceptor:Lorg/simpleframework/transport/connect/Acceptor;

    .line 79
    new-instance v0, Lorg/simpleframework/transport/reactor/DirectReactor;

    invoke-direct {v0}, Lorg/simpleframework/transport/reactor/DirectReactor;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/transport/connect/Listener;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    .line 80
    invoke-direct {p0}, Lorg/simpleframework/transport/connect/Listener;->process()V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Lorg/simpleframework/transport/Server;)V
    .registers 4
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "processor"    # Lorg/simpleframework/transport/Server;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/transport/connect/Listener;-><init>(Ljava/net/SocketAddress;Ljavax/net/ssl/SSLContext;Lorg/simpleframework/transport/Server;)V

    .line 65
    return-void
.end method

.method private process()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/transport/connect/Listener;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    iget-object v2, p0, Lorg/simpleframework/transport/connect/Listener;->acceptor:Lorg/simpleframework/transport/connect/Acceptor;

    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Lorg/simpleframework/transport/reactor/Reactor;->process(Lorg/simpleframework/transport/reactor/Operation;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 109
    return-void

    .line 106
    :catch_a
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/simpleframework/transport/connect/ConnectionException;

    const-string v2, "Listen error"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/transport/connect/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .line 121
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/transport/connect/Listener;->acceptor:Lorg/simpleframework/transport/connect/Acceptor;

    invoke-virtual {v1}, Lorg/simpleframework/transport/connect/Acceptor;->close()V

    .line 122
    iget-object v1, p0, Lorg/simpleframework/transport/connect/Listener;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    invoke-interface {v1}, Lorg/simpleframework/transport/reactor/Reactor;->stop()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 126
    return-void

    .line 123
    :catch_b
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/simpleframework/transport/connect/ConnectionException;

    const-string v2, "Close error"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/transport/connect/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAddress()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Listener;->acceptor:Lorg/simpleframework/transport/connect/Acceptor;

    invoke-virtual {v0}, Lorg/simpleframework/transport/connect/Acceptor;->getAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method
