.class Lorg/simpleframework/http/core/PartEntryConsumer;
.super Ljava/lang/Object;
.source "PartEntryConsumer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Consumer;


# instance fields
.field private boundary:Lorg/simpleframework/http/core/BoundaryConsumer;

.field private consumer:Lorg/simpleframework/http/core/Consumer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[B)V
    .registers 5
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "list"    # Lorg/simpleframework/http/core/PartList;
    .param p3, "terminal"    # [B

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/simpleframework/http/core/PartConsumer;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/http/core/PartConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[B)V

    iput-object v0, p0, Lorg/simpleframework/http/core/PartEntryConsumer;->consumer:Lorg/simpleframework/http/core/Consumer;

    .line 58
    new-instance v0, Lorg/simpleframework/http/core/BoundaryConsumer;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/http/core/BoundaryConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;[B)V

    iput-object v0, p0, Lorg/simpleframework/http/core/PartEntryConsumer;->boundary:Lorg/simpleframework/http/core/BoundaryConsumer;

    .line 59
    return-void
.end method


# virtual methods
.method public consume(Lorg/simpleframework/transport/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Lorg/simpleframework/transport/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/transport/Cursor;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 71
    iget-object v0, p0, Lorg/simpleframework/http/core/PartEntryConsumer;->boundary:Lorg/simpleframework/http/core/BoundaryConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/BoundaryConsumer;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    .line 72
    iget-object v0, p0, Lorg/simpleframework/http/core/PartEntryConsumer;->boundary:Lorg/simpleframework/http/core/BoundaryConsumer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/BoundaryConsumer;->consume(Lorg/simpleframework/transport/Cursor;)V

    goto :goto_0

    .line 74
    :cond_14
    iget-object v0, p0, Lorg/simpleframework/http/core/PartEntryConsumer;->consumer:Lorg/simpleframework/http/core/Consumer;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Consumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 83
    :cond_1c
    return-void

    .line 77
    :cond_1d
    iget-object v0, p0, Lorg/simpleframework/http/core/PartEntryConsumer;->boundary:Lorg/simpleframework/http/core/BoundaryConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/BoundaryConsumer;->isEnd()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 80
    iget-object v0, p0, Lorg/simpleframework/http/core/PartEntryConsumer;->consumer:Lorg/simpleframework/http/core/Consumer;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Consumer;->consume(Lorg/simpleframework/transport/Cursor;)V

    goto :goto_0
.end method

.method public isEnd()Z
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/simpleframework/http/core/PartEntryConsumer;->boundary:Lorg/simpleframework/http/core/BoundaryConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/BoundaryConsumer;->isEnd()Z

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/simpleframework/http/core/PartEntryConsumer;->boundary:Lorg/simpleframework/http/core/BoundaryConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/BoundaryConsumer;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/core/PartEntryConsumer;->consumer:Lorg/simpleframework/http/core/Consumer;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Consumer;->isFinished()Z

    move-result v0

    goto :goto_9
.end method
