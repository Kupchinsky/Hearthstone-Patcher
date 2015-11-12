.class Lorg/simpleframework/http/core/EntityCollector;
.super Ljava/lang/Object;
.source "EntityCollector.java"

# interfaces
.implements Lorg/simpleframework/http/core/Collector;


# instance fields
.field private final builder:Lorg/simpleframework/http/core/Builder;

.field private final channel:Lorg/simpleframework/http/core/Channel;

.field private final cursor:Lorg/simpleframework/transport/Cursor;

.field private final entity:Lorg/simpleframework/http/core/Consumer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Tracker;Lorg/simpleframework/http/core/Channel;)V
    .registers 6
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "tracker"    # Lorg/simpleframework/http/core/Tracker;
    .param p3, "channel"    # Lorg/simpleframework/http/core/Channel;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/simpleframework/http/core/TrackerBuilder;

    invoke-direct {v0, p2, p3}, Lorg/simpleframework/http/core/TrackerBuilder;-><init>(Lorg/simpleframework/http/core/Tracker;Lorg/simpleframework/http/core/Channel;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->builder:Lorg/simpleframework/http/core/Builder;

    .line 74
    new-instance v0, Lorg/simpleframework/http/core/BuilderConsumer;

    iget-object v1, p0, Lorg/simpleframework/http/core/EntityCollector;->builder:Lorg/simpleframework/http/core/Builder;

    invoke-direct {v0, p1, v1, p3}, Lorg/simpleframework/http/core/BuilderConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Builder;Lorg/simpleframework/http/core/Channel;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->entity:Lorg/simpleframework/http/core/Consumer;

    .line 75
    invoke-interface {p3}, Lorg/simpleframework/http/core/Channel;->getCursor()Lorg/simpleframework/transport/Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->cursor:Lorg/simpleframework/transport/Cursor;

    .line 76
    iput-object p3, p0, Lorg/simpleframework/http/core/EntityCollector;->channel:Lorg/simpleframework/http/core/Channel;

    .line 77
    return-void
.end method


# virtual methods
.method public collect(Lorg/simpleframework/http/core/Selector;)V
    .registers 4
    .param p1, "selector"    # Lorg/simpleframework/http/core/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->cursor:Lorg/simpleframework/transport/Cursor;

    invoke-interface {v0}, Lorg/simpleframework/transport/Cursor;->isReady()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 92
    iget-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->entity:Lorg/simpleframework/http/core/Consumer;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Consumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 99
    :cond_10
    iget-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->cursor:Lorg/simpleframework/transport/Cursor;

    invoke-interface {v0}, Lorg/simpleframework/transport/Cursor;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 100
    iget-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->entity:Lorg/simpleframework/http/core/Consumer;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Consumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 101
    invoke-interface {p1, p0}, Lorg/simpleframework/http/core/Selector;->ready(Lorg/simpleframework/http/core/Collector;)V

    .line 106
    :cond_23
    :goto_23
    return-void

    .line 95
    :cond_24
    iget-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->entity:Lorg/simpleframework/http/core/Consumer;

    iget-object v1, p0, Lorg/simpleframework/http/core/EntityCollector;->cursor:Lorg/simpleframework/transport/Cursor;

    invoke-interface {v0, v1}, Lorg/simpleframework/http/core/Consumer;->consume(Lorg/simpleframework/transport/Cursor;)V

    goto :goto_0

    .line 103
    :cond_2c
    invoke-interface {p1, p0}, Lorg/simpleframework/http/core/Selector;->select(Lorg/simpleframework/http/core/Collector;)V

    goto :goto_23
.end method

.method public getBody()Lorg/simpleframework/http/core/Body;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->builder:Lorg/simpleframework/http/core/Builder;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Builder;->getBody()Lorg/simpleframework/http/core/Body;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lorg/simpleframework/http/core/Channel;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->builder:Lorg/simpleframework/http/core/Builder;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Builder;->getChannel()Lorg/simpleframework/http/core/Channel;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/simpleframework/http/core/Header;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->builder:Lorg/simpleframework/http/core/Builder;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Builder;->getHeader()Lorg/simpleframework/http/core/Header;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Lorg/simpleframework/http/session/Session;
    .registers 3
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->builder:Lorg/simpleframework/http/core/Builder;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Builder;->getSession(Z)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/simpleframework/http/core/EntityCollector;->channel:Lorg/simpleframework/http/core/Channel;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Channel;->getSocket()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method
