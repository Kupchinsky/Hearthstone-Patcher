.class Lorg/simpleframework/http/core/BuilderConsumer;
.super Ljava/lang/Object;
.source "BuilderConsumer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Consumer;


# instance fields
.field protected body:Lorg/simpleframework/http/core/BodyConsumer;

.field protected builder:Lorg/simpleframework/http/core/Builder;

.field protected expect:Lorg/simpleframework/http/core/Expectation;

.field protected factory:Lorg/simpleframework/http/core/ConsumerFactory;

.field protected header:Lorg/simpleframework/http/core/RequestConsumer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Builder;Lorg/simpleframework/http/core/Channel;)V
    .registers 6
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "builder"    # Lorg/simpleframework/http/core/Builder;
    .param p3, "channel"    # Lorg/simpleframework/http/core/Channel;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/simpleframework/http/core/RequestConsumer;

    invoke-direct {v0}, Lorg/simpleframework/http/core/RequestConsumer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->header:Lorg/simpleframework/http/core/RequestConsumer;

    .line 74
    new-instance v0, Lorg/simpleframework/http/core/Expectation;

    invoke-direct {v0, p3}, Lorg/simpleframework/http/core/Expectation;-><init>(Lorg/simpleframework/http/core/Channel;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->expect:Lorg/simpleframework/http/core/Expectation;

    .line 75
    new-instance v0, Lorg/simpleframework/http/core/ConsumerFactory;

    iget-object v1, p0, Lorg/simpleframework/http/core/BuilderConsumer;->header:Lorg/simpleframework/http/core/RequestConsumer;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/http/core/ConsumerFactory;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->factory:Lorg/simpleframework/http/core/ConsumerFactory;

    .line 76
    iput-object p2, p0, Lorg/simpleframework/http/core/BuilderConsumer;->builder:Lorg/simpleframework/http/core/Builder;

    .line 77
    return-void
.end method


# virtual methods
.method public consume(Lorg/simpleframework/transport/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Lorg/simpleframework/transport/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/transport/Cursor;->isReady()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 90
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->header:Lorg/simpleframework/http/core/RequestConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/RequestConsumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 91
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    if-nez v0, :cond_1a

    .line 92
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->factory:Lorg/simpleframework/http/core/ConsumerFactory;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/ConsumerFactory;->getInstance()Lorg/simpleframework/http/core/BodyConsumer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    .line 94
    :cond_1a
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/BodyConsumer;->consume(Lorg/simpleframework/transport/Cursor;)V

    .line 96
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/BodyConsumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :cond_27
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->header:Lorg/simpleframework/http/core/RequestConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/RequestConsumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 104
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    if-nez v0, :cond_42

    .line 105
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->expect:Lorg/simpleframework/http/core/Expectation;

    iget-object v1, p0, Lorg/simpleframework/http/core/BuilderConsumer;->header:Lorg/simpleframework/http/core/RequestConsumer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/http/core/Expectation;->execute(Lorg/simpleframework/http/core/Header;)V

    .line 106
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->factory:Lorg/simpleframework/http/core/ConsumerFactory;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/ConsumerFactory;->getInstance()Lorg/simpleframework/http/core/BodyConsumer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    .line 108
    :cond_42
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->builder:Lorg/simpleframework/http/core/Builder;

    iget-object v1, p0, Lorg/simpleframework/http/core/BuilderConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    invoke-interface {v0, v1}, Lorg/simpleframework/http/core/Builder;->setBody(Lorg/simpleframework/http/core/Body;)V

    .line 109
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->builder:Lorg/simpleframework/http/core/Builder;

    iget-object v1, p0, Lorg/simpleframework/http/core/BuilderConsumer;->header:Lorg/simpleframework/http/core/RequestConsumer;

    invoke-interface {v0, v1}, Lorg/simpleframework/http/core/Builder;->setHeader(Lorg/simpleframework/http/core/Header;)V

    .line 111
    :cond_50
    return-void

    .line 100
    :cond_51
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->header:Lorg/simpleframework/http/core/RequestConsumer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/RequestConsumer;->consume(Lorg/simpleframework/transport/Cursor;)V

    goto :goto_0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->header:Lorg/simpleframework/http/core/RequestConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/RequestConsumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 123
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    if-nez v0, :cond_14

    .line 124
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->factory:Lorg/simpleframework/http/core/ConsumerFactory;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/ConsumerFactory;->getInstance()Lorg/simpleframework/http/core/BodyConsumer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    .line 126
    :cond_14
    iget-object v0, p0, Lorg/simpleframework/http/core/BuilderConsumer;->body:Lorg/simpleframework/http/core/BodyConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/BodyConsumer;->isFinished()Z

    move-result v0

    .line 128
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
