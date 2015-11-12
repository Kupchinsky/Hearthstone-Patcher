.class Lorg/simpleframework/transport/OperationFactory;
.super Ljava/lang/Object;
.source "OperationFactory.java"


# instance fields
.field private final limit:I

.field private final negotiator:Lorg/simpleframework/transport/Negotiator;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Negotiator;I)V
    .registers 3
    .param p1, "negotiator"    # Lorg/simpleframework/transport/Negotiator;
    .param p2, "limit"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/simpleframework/transport/OperationFactory;->negotiator:Lorg/simpleframework/transport/Negotiator;

    .line 61
    iput p2, p0, Lorg/simpleframework/transport/OperationFactory;->limit:I

    .line 62
    return-void
.end method

.method private getInstance(Lorg/simpleframework/transport/Socket;Ljavax/net/ssl/SSLEngine;)Lorg/simpleframework/transport/reactor/Operation;
    .registers 6
    .param p1, "socket"    # Lorg/simpleframework/transport/Socket;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lorg/simpleframework/transport/SocketTransport;

    iget-object v1, p0, Lorg/simpleframework/transport/OperationFactory;->negotiator:Lorg/simpleframework/transport/Negotiator;

    iget v2, p0, Lorg/simpleframework/transport/OperationFactory;->limit:I

    invoke-direct {v0, p1, v1, v2}, Lorg/simpleframework/transport/SocketTransport;-><init>(Lorg/simpleframework/transport/Socket;Lorg/simpleframework/transport/reactor/Reactor;I)V

    .line 94
    .local v0, "transport":Lorg/simpleframework/transport/Transport;
    if-eqz p2, :cond_13

    .line 95
    new-instance v1, Lorg/simpleframework/transport/Handshake;

    iget-object v2, p0, Lorg/simpleframework/transport/OperationFactory;->negotiator:Lorg/simpleframework/transport/Negotiator;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/transport/Handshake;-><init>(Lorg/simpleframework/transport/Transport;Lorg/simpleframework/transport/Negotiator;)V

    .line 97
    :goto_12
    return-object v1

    :cond_13
    new-instance v1, Lorg/simpleframework/transport/Dispatcher;

    iget-object v2, p0, Lorg/simpleframework/transport/OperationFactory;->negotiator:Lorg/simpleframework/transport/Negotiator;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/transport/Dispatcher;-><init>(Lorg/simpleframework/transport/Transport;Lorg/simpleframework/transport/Negotiator;)V

    goto :goto_12
.end method


# virtual methods
.method public getInstance(Lorg/simpleframework/transport/Socket;)Lorg/simpleframework/transport/reactor/Operation;
    .registers 3
    .param p1, "socket"    # Lorg/simpleframework/transport/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p1}, Lorg/simpleframework/transport/Socket;->getEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/OperationFactory;->getInstance(Lorg/simpleframework/transport/Socket;Ljavax/net/ssl/SSLEngine;)Lorg/simpleframework/transport/reactor/Operation;

    move-result-object v0

    return-object v0
.end method
