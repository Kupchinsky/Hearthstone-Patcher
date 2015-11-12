.class public Lorg/simpleframework/http/core/ContainerServer;
.super Ljava/lang/Object;
.source "ContainerServer.java"

# interfaces
.implements Lorg/simpleframework/transport/Server;


# instance fields
.field private final processor:Lorg/simpleframework/transport/Processor;

.field private final server:Lorg/simpleframework/transport/Server;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Container;)V
    .registers 4
    .param p1, "container"    # Lorg/simpleframework/http/core/Container;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/simpleframework/util/buffer/FileAllocator;

    invoke-direct {v0}, Lorg/simpleframework/util/buffer/FileAllocator;-><init>()V

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/http/core/ContainerServer;-><init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/http/core/Container;I)V
    .registers 4
    .param p1, "container"    # Lorg/simpleframework/http/core/Container;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lorg/simpleframework/util/buffer/FileAllocator;

    invoke-direct {v0}, Lorg/simpleframework/util/buffer/FileAllocator;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/http/core/ContainerServer;-><init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;)V
    .registers 4
    .param p1, "container"    # Lorg/simpleframework/http/core/Container;
    .param p2, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/http/core/ContainerServer;-><init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;I)V
    .registers 6
    .param p1, "container"    # Lorg/simpleframework/http/core/Container;
    .param p2, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lorg/simpleframework/http/core/ContainerProcessor;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/http/core/ContainerProcessor;-><init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/util/buffer/Allocator;I)V

    iput-object v0, p0, Lorg/simpleframework/http/core/ContainerServer;->processor:Lorg/simpleframework/transport/Processor;

    .line 103
    new-instance v0, Lorg/simpleframework/transport/ProcessorServer;

    iget-object v1, p0, Lorg/simpleframework/http/core/ContainerServer;->processor:Lorg/simpleframework/transport/Processor;

    invoke-direct {v0, v1, p3}, Lorg/simpleframework/transport/ProcessorServer;-><init>(Lorg/simpleframework/transport/Processor;I)V

    iput-object v0, p0, Lorg/simpleframework/http/core/ContainerServer;->server:Lorg/simpleframework/transport/Server;

    .line 104
    return-void
.end method


# virtual methods
.method public process(Lorg/simpleframework/transport/Socket;)V
    .registers 3
    .param p1, "socket"    # Lorg/simpleframework/transport/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/simpleframework/http/core/ContainerServer;->server:Lorg/simpleframework/transport/Server;

    invoke-interface {v0, p1}, Lorg/simpleframework/transport/Server;->process(Lorg/simpleframework/transport/Socket;)V

    .line 121
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
    .line 135
    iget-object v0, p0, Lorg/simpleframework/http/core/ContainerServer;->server:Lorg/simpleframework/transport/Server;

    invoke-interface {v0}, Lorg/simpleframework/transport/Server;->stop()V

    .line 136
    return-void
.end method
