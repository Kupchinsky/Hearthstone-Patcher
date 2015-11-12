.class public Lorg/simpleframework/http/core/ContainerProcessor;
.super Ljava/lang/Object;
.source "ContainerProcessor.java"

# interfaces
.implements Lorg/simpleframework/transport/Processor;


# instance fields
.field private final allocator:Lorg/simpleframework/util/buffer/Allocator;

.field private final selector:Lorg/simpleframework/http/core/Selector;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;I)V
    .registers 5
    .param p1, "container"    # Lorg/simpleframework/http/core/Container;
    .param p2, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/http/core/ContainerProcessor;-><init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;II)V
    .registers 6
    .param p1, "container"    # Lorg/simpleframework/http/core/Container;
    .param p2, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p3, "count"    # I
    .param p4, "select"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lorg/simpleframework/http/core/ContainerSelector;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/simpleframework/http/core/ContainerSelector;-><init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;II)V

    iput-object v0, p0, Lorg/simpleframework/http/core/ContainerProcessor;->selector:Lorg/simpleframework/http/core/Selector;

    .line 76
    iput-object p2, p0, Lorg/simpleframework/http/core/ContainerProcessor;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    .line 77
    return-void
.end method


# virtual methods
.method public process(Lorg/simpleframework/transport/Transport;)V
    .registers 4
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lorg/simpleframework/http/core/ContainerProcessor;->selector:Lorg/simpleframework/http/core/Selector;

    new-instance v1, Lorg/simpleframework/http/core/TransportChannel;

    invoke-direct {v1, p1}, Lorg/simpleframework/http/core/TransportChannel;-><init>(Lorg/simpleframework/transport/Transport;)V

    invoke-interface {v0, v1}, Lorg/simpleframework/http/core/Selector;->start(Lorg/simpleframework/http/core/Channel;)V

    .line 92
    return-void
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/simpleframework/http/core/ContainerProcessor;->selector:Lorg/simpleframework/http/core/Selector;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Selector;->stop()V

    .line 107
    iget-object v0, p0, Lorg/simpleframework/http/core/ContainerProcessor;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Allocator;->close()V

    .line 108
    return-void
.end method
