.class Lorg/simpleframework/http/core/PartConsumer;
.super Ljava/lang/Object;
.source "PartConsumer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Consumer;


# instance fields
.field private body:Lorg/simpleframework/http/core/BodyConsumer;

.field private current:Lorg/simpleframework/http/core/Consumer;

.field private factory:Lorg/simpleframework/http/core/PartFactory;

.field private header:Lorg/simpleframework/http/core/SegmentConsumer;

.field private list:Lorg/simpleframework/http/core/PartList;

.field private terminal:[B


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[B)V
    .registers 6
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "list"    # Lorg/simpleframework/http/core/PartList;
    .param p3, "terminal"    # [B

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/simpleframework/http/core/PartHeaderConsumer;

    invoke-direct {v0, p1}, Lorg/simpleframework/http/core/PartHeaderConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->header:Lorg/simpleframework/http/core/SegmentConsumer;

    .line 78
    new-instance v0, Lorg/simpleframework/http/core/PartFactory;

    iget-object v1, p0, Lorg/simpleframework/http/core/PartConsumer;->header:Lorg/simpleframework/http/core/SegmentConsumer;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/http/core/PartFactory;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->factory:Lorg/simpleframework/http/core/PartFactory;

    .line 79
    iput-object p3, p0, Lorg/simpleframework/http/core/PartConsumer;->terminal:[B

    .line 80
    iget-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->header:Lorg/simpleframework/http/core/SegmentConsumer;

    iput-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->current:Lorg/simpleframework/http/core/Consumer;

    .line 81
    iput-object p2, p0, Lorg/simpleframework/http/core/PartConsumer;->list:Lorg/simpleframework/http/core/PartList;

    .line 82
    return-void
.end method

.method private getConsumer()Lorg/simpleframework/http/core/BodyConsumer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->factory:Lorg/simpleframework/http/core/PartFactory;

    iget-object v1, p0, Lorg/simpleframework/http/core/PartConsumer;->list:Lorg/simpleframework/http/core/PartList;

    iget-object v2, p0, Lorg/simpleframework/http/core/PartConsumer;->terminal:[B

    invoke-virtual {v0, v1, v2}, Lorg/simpleframework/http/core/PartFactory;->getInstance(Lorg/simpleframework/http/core/PartList;[B)Lorg/simpleframework/http/core/BodyConsumer;

    move-result-object v0

    return-object v0
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
    .line 105
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/transport/Cursor;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 106
    iget-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->header:Lorg/simpleframework/http/core/SegmentConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/SegmentConsumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 107
    iget-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    if-nez v0, :cond_22

    .line 108
    invoke-direct {p0}, Lorg/simpleframework/http/core/PartConsumer;->getConsumer()Lorg/simpleframework/http/core/BodyConsumer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    .line 109
    iget-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    iput-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->current:Lorg/simpleframework/http/core/Consumer;

    .line 115
    :cond_1c
    iget-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->current:Lorg/simpleframework/http/core/Consumer;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Consumer;->consume(Lorg/simpleframework/transport/Cursor;)V

    goto :goto_0

    .line 111
    :cond_22
    iget-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/BodyConsumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 117
    :cond_2a
    return-void
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Lorg/simpleframework/http/core/PartConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/BodyConsumer;->isFinished()Z

    move-result v0

    .line 131
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
