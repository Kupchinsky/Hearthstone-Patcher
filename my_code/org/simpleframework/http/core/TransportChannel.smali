.class Lorg/simpleframework/http/core/TransportChannel;
.super Ljava/lang/Object;
.source "TransportChannel.java"

# interfaces
.implements Lorg/simpleframework/http/core/Channel;


# instance fields
.field private final cursor:Lorg/simpleframework/transport/Cursor;

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private final sender:Lorg/simpleframework/http/core/Sender;

.field private final transport:Lorg/simpleframework/transport/Transport;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Transport;)V
    .registers 3
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/simpleframework/transport/TransportCursor;

    invoke-direct {v0, p1}, Lorg/simpleframework/transport/TransportCursor;-><init>(Lorg/simpleframework/transport/Transport;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/TransportChannel;->cursor:Lorg/simpleframework/transport/Cursor;

    .line 74
    new-instance v0, Lorg/simpleframework/http/core/TransportSender;

    invoke-direct {v0, p1}, Lorg/simpleframework/http/core/TransportSender;-><init>(Lorg/simpleframework/transport/Transport;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/TransportChannel;->sender:Lorg/simpleframework/http/core/Sender;

    .line 75
    invoke-interface {p1}, Lorg/simpleframework/transport/Transport;->getEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/TransportChannel;->engine:Ljavax/net/ssl/SSLEngine;

    .line 76
    iput-object p1, p0, Lorg/simpleframework/http/core/TransportChannel;->transport:Lorg/simpleframework/transport/Transport;

    .line 77
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/http/core/TransportChannel;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v1}, Lorg/simpleframework/transport/Transport;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 156
    :goto_5
    return-void

    .line 153
    :catch_6
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_5
.end method

.method public getAttributes()Ljava/util/Map;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/simpleframework/http/core/TransportChannel;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v0}, Lorg/simpleframework/transport/Transport;->getAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Lorg/simpleframework/transport/Cursor;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simpleframework/http/core/TransportChannel;->cursor:Lorg/simpleframework/transport/Cursor;

    return-object v0
.end method

.method public getSender()Lorg/simpleframework/http/core/Sender;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/simpleframework/http/core/TransportChannel;->sender:Lorg/simpleframework/http/core/Sender;

    return-object v0
.end method

.method public getSocket()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/simpleframework/http/core/TransportChannel;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v0}, Lorg/simpleframework/transport/Transport;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/simpleframework/http/core/TransportChannel;->engine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
