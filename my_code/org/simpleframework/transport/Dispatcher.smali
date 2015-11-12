.class Lorg/simpleframework/transport/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Operation;


# instance fields
.field private final negotiator:Lorg/simpleframework/transport/Negotiator;

.field private final transport:Lorg/simpleframework/transport/Transport;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Transport;Lorg/simpleframework/transport/Negotiator;)V
    .registers 3
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;
    .param p2, "negotiator"    # Lorg/simpleframework/transport/Negotiator;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lorg/simpleframework/transport/Dispatcher;->negotiator:Lorg/simpleframework/transport/Negotiator;

    .line 57
    iput-object p1, p0, Lorg/simpleframework/transport/Dispatcher;->transport:Lorg/simpleframework/transport/Transport;

    .line 58
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/transport/Dispatcher;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v1}, Lorg/simpleframework/transport/Transport;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 100
    :goto_5
    return-void

    .line 97
    :catch_6
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_5
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/simpleframework/transport/Dispatcher;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/simpleframework/transport/Dispatcher;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v0}, Lorg/simpleframework/transport/Transport;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/transport/Dispatcher;->negotiator:Lorg/simpleframework/transport/Negotiator;

    iget-object v2, p0, Lorg/simpleframework/transport/Dispatcher;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v1, v2}, Lorg/simpleframework/transport/Negotiator;->process(Lorg/simpleframework/transport/Transport;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 85
    :goto_7
    return-void

    .line 82
    :catch_8
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/simpleframework/transport/Dispatcher;->cancel()V

    goto :goto_7
.end method
