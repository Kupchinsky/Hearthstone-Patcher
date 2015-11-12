.class Lorg/simpleframework/http/core/ContainerSelector;
.super Ljava/lang/Object;
.source "ContainerSelector.java"

# interfaces
.implements Lorg/simpleframework/http/core/Selector;


# instance fields
.field private final allocator:Lorg/simpleframework/util/buffer/Allocator;

.field private final collect:Lorg/simpleframework/util/thread/PoolExecutor;

.field private final executor:Lorg/simpleframework/util/thread/PoolExecutor;

.field private final handler:Lorg/simpleframework/http/core/Container;

.field private final reactor:Lorg/simpleframework/transport/reactor/Reactor;

.field private final tracker:Lorg/simpleframework/http/core/Tracker;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;II)V
    .registers 7
    .param p1, "handler"    # Lorg/simpleframework/http/core/Container;
    .param p2, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p3, "count"    # I
    .param p4, "select"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lorg/simpleframework/util/thread/PoolExecutor;

    const-class v1, Lorg/simpleframework/http/core/Reader;

    invoke-direct {v0, v1, p3}, Lorg/simpleframework/util/thread/PoolExecutor;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lorg/simpleframework/http/core/ContainerSelector;->collect:Lorg/simpleframework/util/thread/PoolExecutor;

    .line 86
    new-instance v0, Lorg/simpleframework/transport/reactor/ExecutorReactor;

    iget-object v1, p0, Lorg/simpleframework/http/core/ContainerSelector;->collect:Lorg/simpleframework/util/thread/PoolExecutor;

    invoke-direct {v0, v1, p4}, Lorg/simpleframework/transport/reactor/ExecutorReactor;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v0, p0, Lorg/simpleframework/http/core/ContainerSelector;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    .line 87
    new-instance v0, Lorg/simpleframework/util/thread/PoolExecutor;

    const-class v1, Lorg/simpleframework/http/core/Dispatcher;

    invoke-direct {v0, v1, p3}, Lorg/simpleframework/util/thread/PoolExecutor;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lorg/simpleframework/http/core/ContainerSelector;->executor:Lorg/simpleframework/util/thread/PoolExecutor;

    .line 88
    new-instance v0, Lorg/simpleframework/http/core/CookieTracker;

    invoke-direct {v0}, Lorg/simpleframework/http/core/CookieTracker;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/ContainerSelector;->tracker:Lorg/simpleframework/http/core/Tracker;

    .line 89
    iput-object p2, p0, Lorg/simpleframework/http/core/ContainerSelector;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    .line 90
    iput-object p1, p0, Lorg/simpleframework/http/core/ContainerSelector;->handler:Lorg/simpleframework/http/core/Container;

    .line 91
    return-void
.end method


# virtual methods
.method public ready(Lorg/simpleframework/http/core/Collector;)V
    .registers 5
    .param p1, "collector"    # Lorg/simpleframework/http/core/Collector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/simpleframework/http/core/ContainerSelector;->executor:Lorg/simpleframework/util/thread/PoolExecutor;

    new-instance v1, Lorg/simpleframework/http/core/Dispatcher;

    iget-object v2, p0, Lorg/simpleframework/http/core/ContainerSelector;->handler:Lorg/simpleframework/http/core/Container;

    invoke-direct {v1, v2, p0, p1}, Lorg/simpleframework/http/core/Dispatcher;-><init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/http/core/Initiator;Lorg/simpleframework/http/core/Entity;)V

    invoke-virtual {v0, v1}, Lorg/simpleframework/util/thread/PoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public select(Lorg/simpleframework/http/core/Collector;)V
    .registers 5
    .param p1, "collector"    # Lorg/simpleframework/http/core/Collector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/simpleframework/http/core/ContainerSelector;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    new-instance v1, Lorg/simpleframework/http/core/Reader;

    invoke-direct {v1, p0, p1}, Lorg/simpleframework/http/core/Reader;-><init>(Lorg/simpleframework/http/core/Selector;Lorg/simpleframework/http/core/Collector;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/simpleframework/transport/reactor/Reactor;->process(Lorg/simpleframework/transport/reactor/Operation;I)V

    .line 130
    return-void
.end method

.method public start(Lorg/simpleframework/http/core/Channel;)V
    .registers 5
    .param p1, "channel"    # Lorg/simpleframework/http/core/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lorg/simpleframework/http/core/EntityCollector;

    iget-object v1, p0, Lorg/simpleframework/http/core/ContainerSelector;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    iget-object v2, p0, Lorg/simpleframework/http/core/ContainerSelector;->tracker:Lorg/simpleframework/http/core/Tracker;

    invoke-direct {v0, v1, v2, p1}, Lorg/simpleframework/http/core/EntityCollector;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Tracker;Lorg/simpleframework/http/core/Channel;)V

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/ContainerSelector;->start(Lorg/simpleframework/http/core/Collector;)V

    .line 106
    return-void
.end method

.method public start(Lorg/simpleframework/http/core/Collector;)V
    .registers 4
    .param p1, "collector"    # Lorg/simpleframework/http/core/Collector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/simpleframework/http/core/ContainerSelector;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    new-instance v1, Lorg/simpleframework/http/core/Reader;

    invoke-direct {v1, p0, p1}, Lorg/simpleframework/http/core/Reader;-><init>(Lorg/simpleframework/http/core/Selector;Lorg/simpleframework/http/core/Collector;)V

    invoke-interface {v0, v1}, Lorg/simpleframework/transport/reactor/Reactor;->process(Lorg/simpleframework/transport/reactor/Operation;)V

    .line 119
    return-void
.end method

.method public stop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/http/core/ContainerSelector;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    invoke-interface {v1}, Lorg/simpleframework/transport/reactor/Reactor;->stop()V

    .line 159
    iget-object v1, p0, Lorg/simpleframework/http/core/ContainerSelector;->executor:Lorg/simpleframework/util/thread/PoolExecutor;

    invoke-virtual {v1}, Lorg/simpleframework/util/thread/PoolExecutor;->stop()V

    .line 160
    iget-object v1, p0, Lorg/simpleframework/http/core/ContainerSelector;->collect:Lorg/simpleframework/util/thread/PoolExecutor;

    invoke-virtual {v1}, Lorg/simpleframework/util/thread/PoolExecutor;->stop()V

    .line 161
    iget-object v1, p0, Lorg/simpleframework/http/core/ContainerSelector;->tracker:Lorg/simpleframework/http/core/Tracker;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Tracker;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 165
    return-void

    .line 162
    :catch_15
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error stopping"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
