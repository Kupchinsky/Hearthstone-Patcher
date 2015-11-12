.class Lorg/simpleframework/transport/connect/Acceptor;
.super Ljava/lang/Object;
.source "Acceptor.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Operation;


# instance fields
.field private final context:Ljavax/net/ssl/SSLContext;

.field private final handler:Lorg/simpleframework/transport/Server;

.field private final server:Ljava/nio/channels/ServerSocketChannel;

.field private final socket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljavax/net/ssl/SSLContext;Lorg/simpleframework/transport/Server;)V
    .registers 5
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "context"    # Ljavax/net/ssl/SSLContext;
    .param p3, "handler"    # Lorg/simpleframework/transport/Server;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/connect/Acceptor;->server:Ljava/nio/channels/ServerSocketChannel;

    .line 85
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Acceptor;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/connect/Acceptor;->socket:Ljava/net/ServerSocket;

    .line 86
    iput-object p3, p0, Lorg/simpleframework/transport/connect/Acceptor;->handler:Lorg/simpleframework/transport/Server;

    .line 87
    iput-object p2, p0, Lorg/simpleframework/transport/connect/Acceptor;->context:Ljavax/net/ssl/SSLContext;

    .line 88
    invoke-direct {p0, p1}, Lorg/simpleframework/transport/connect/Acceptor;->bind(Ljava/net/SocketAddress;)V

    .line 89
    return-void
.end method

.method private accept()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v1, p0, Lorg/simpleframework/transport/connect/Acceptor;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 186
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    :goto_6
    if-eqz v0, :cond_1e

    .line 187
    invoke-direct {p0, v0}, Lorg/simpleframework/transport/connect/Acceptor;->configure(Ljava/nio/channels/SocketChannel;)V

    .line 189
    iget-object v1, p0, Lorg/simpleframework/transport/connect/Acceptor;->context:Ljavax/net/ssl/SSLContext;

    if-nez v1, :cond_1a

    .line 190
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/transport/connect/Acceptor;->process(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;)V

    .line 194
    :goto_13
    iget-object v1, p0, Lorg/simpleframework/transport/connect/Acceptor;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    goto :goto_6

    .line 192
    :cond_1a
    invoke-direct {p0, v0}, Lorg/simpleframework/transport/connect/Acceptor;->process(Ljava/nio/channels/SocketChannel;)V

    goto :goto_13

    .line 196
    :cond_1e
    return-void
.end method

.method private bind(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Acceptor;->server:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 170
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Acceptor;->socket:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 171
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Acceptor;->socket:Ljava/net/ServerSocket;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 172
    return-void
.end method

.method private configure(Ljava/nio/channels/SocketChannel;)V
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 209
    return-void
.end method

.method private pause()V
    .registers 5

    .prologue
    .line 140
    const-wide/16 v2, 0xa

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 144
    :goto_5
    return-void

    .line 141
    :catch_6
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_5
.end method

.method private process(Ljava/nio/channels/SocketChannel;)V
    .registers 5
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v2, p0, Lorg/simpleframework/transport/connect/Acceptor;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 223
    .local v1, "engine":Ljavax/net/ssl/SSLEngine;
    :try_start_6
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/transport/connect/Acceptor;->process(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 227
    :goto_9
    return-void

    .line 224
    :catch_a
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V

    goto :goto_9
.end method

.method private process(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;)V
    .registers 6
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v1, Lorg/simpleframework/transport/connect/Subscription;

    invoke-direct {v1, p1, p2}, Lorg/simpleframework/transport/connect/Subscription;-><init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;)V

    .line 242
    .local v1, "socket":Lorg/simpleframework/transport/Socket;
    :try_start_5
    iget-object v2, p0, Lorg/simpleframework/transport/connect/Acceptor;->handler:Lorg/simpleframework/transport/Server;

    invoke-interface {v2, v1}, Lorg/simpleframework/transport/Server;->process(Lorg/simpleframework/transport/Socket;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 246
    :goto_a
    return-void

    .line 243
    :catch_b
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V

    goto :goto_a
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0}, Lorg/simpleframework/transport/connect/Acceptor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 158
    :goto_3
    return-void

    .line 155
    :catch_4
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_3
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Acceptor;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 258
    return-void
.end method

.method public getAddress()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Acceptor;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Acceptor;->server:Ljava/nio/channels/ServerSocketChannel;

    return-object v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 126
    :try_start_0
    invoke-direct {p0}, Lorg/simpleframework/transport/connect/Acceptor;->accept()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 130
    :goto_3
    return-void

    .line 127
    :catch_4
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lorg/simpleframework/transport/connect/Acceptor;->pause()V

    goto :goto_3
.end method
