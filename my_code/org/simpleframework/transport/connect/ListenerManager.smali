.class Lorg/simpleframework/transport/connect/ListenerManager;
.super Ljava/util/HashSet;
.source "ListenerManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lorg/simpleframework/transport/connect/Listener;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final server:Lorg/simpleframework/transport/Server;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Server;)V
    .registers 2
    .param p1, "server"    # Lorg/simpleframework/transport/Server;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/simpleframework/transport/connect/ListenerManager;->server:Lorg/simpleframework/transport/Server;

    .line 58
    return-void
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
    .line 107
    invoke-virtual {p0}, Lorg/simpleframework/transport/connect/ListenerManager;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/transport/connect/Listener;

    .line 108
    .local v1, "listener":Ljava/io/Closeable;
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_4

    .line 110
    .end local v1    # "listener":Ljava/io/Closeable;
    :cond_14
    invoke-virtual {p0}, Lorg/simpleframework/transport/connect/ListenerManager;->clear()V

    .line 111
    return-void
.end method

.method public listen(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .registers 3
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/transport/connect/ListenerManager;->listen(Ljava/net/SocketAddress;Ljavax/net/ssl/SSLContext;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public listen(Ljava/net/SocketAddress;Ljavax/net/ssl/SSLContext;)Ljava/net/SocketAddress;
    .registers 5
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "context"    # Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lorg/simpleframework/transport/connect/Listener;

    iget-object v1, p0, Lorg/simpleframework/transport/connect/ListenerManager;->server:Lorg/simpleframework/transport/Server;

    invoke-direct {v0, p1, p2, v1}, Lorg/simpleframework/transport/connect/Listener;-><init>(Ljava/net/SocketAddress;Ljavax/net/ssl/SSLContext;Lorg/simpleframework/transport/Server;)V

    .line 92
    .local v0, "listener":Lorg/simpleframework/transport/connect/Listener;
    iget-object v1, p0, Lorg/simpleframework/transport/connect/ListenerManager;->server:Lorg/simpleframework/transport/Server;

    if-eqz v1, :cond_e

    .line 93
    invoke-virtual {p0, v0}, Lorg/simpleframework/transport/connect/ListenerManager;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_e
    invoke-virtual {v0}, Lorg/simpleframework/transport/connect/Listener;->getAddress()Ljava/net/SocketAddress;

    move-result-object v1

    return-object v1
.end method
