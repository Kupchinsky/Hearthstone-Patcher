.class Lorg/simpleframework/http/core/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Operation;


# instance fields
.field private final channel:Lorg/simpleframework/http/core/Channel;

.field private final source:Lorg/simpleframework/http/core/Selector;

.field private final task:Lorg/simpleframework/http/core/Collector;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Selector;Lorg/simpleframework/http/core/Collector;)V
    .registers 4
    .param p1, "source"    # Lorg/simpleframework/http/core/Selector;
    .param p2, "task"    # Lorg/simpleframework/http/core/Collector;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-interface {p2}, Lorg/simpleframework/http/core/Collector;->getChannel()Lorg/simpleframework/http/core/Channel;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/Reader;->channel:Lorg/simpleframework/http/core/Channel;

    .line 64
    iput-object p1, p0, Lorg/simpleframework/http/core/Reader;->source:Lorg/simpleframework/http/core/Selector;

    .line 65
    iput-object p2, p0, Lorg/simpleframework/http/core/Reader;->task:Lorg/simpleframework/http/core/Collector;

    .line 66
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/http/core/Reader;->channel:Lorg/simpleframework/http/core/Channel;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Channel;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 107
    :goto_5
    return-void

    .line 104
    :catch_6
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_5
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/simpleframework/http/core/Reader;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/simpleframework/http/core/Reader;->task:Lorg/simpleframework/http/core/Collector;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Collector;->getSocket()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/http/core/Reader;->task:Lorg/simpleframework/http/core/Collector;

    iget-object v2, p0, Lorg/simpleframework/http/core/Reader;->source:Lorg/simpleframework/http/core/Selector;

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Collector;->collect(Lorg/simpleframework/http/core/Selector;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 93
    :goto_7
    return-void

    .line 90
    :catch_8
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/simpleframework/http/core/Reader;->cancel()V

    goto :goto_7
.end method
