.class Lorg/simpleframework/http/core/PartFactory;
.super Lorg/simpleframework/http/core/ConsumerFactory;
.source "PartFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;)V
    .registers 3
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "header"    # Lorg/simpleframework/http/core/Segment;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/http/core/ConsumerFactory;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getInstance(Lorg/simpleframework/http/core/PartList;[B)Lorg/simpleframework/http/core/BodyConsumer;
    .registers 7
    .param p1, "list"    # Lorg/simpleframework/http/core/PartList;
    .param p2, "boundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v1, p0, Lorg/simpleframework/http/core/PartFactory;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/PartFactory;->getBoundary(Lorg/simpleframework/http/core/Segment;)[B

    move-result-object v0

    .line 67
    .local v0, "terminal":[B
    iget-object v1, p0, Lorg/simpleframework/http/core/PartFactory;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/PartFactory;->isPart(Lorg/simpleframework/http/core/Segment;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 68
    new-instance v1, Lorg/simpleframework/http/core/PartListConsumer;

    iget-object v2, p0, Lorg/simpleframework/http/core/PartFactory;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    invoke-direct {v1, v2, p1, v0}, Lorg/simpleframework/http/core/PartListConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[B)V

    .line 70
    :goto_15
    return-object v1

    :cond_16
    new-instance v1, Lorg/simpleframework/http/core/PartBodyConsumer;

    iget-object v2, p0, Lorg/simpleframework/http/core/PartFactory;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    iget-object v3, p0, Lorg/simpleframework/http/core/PartFactory;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-direct {v1, v2, v3, p1, p2}, Lorg/simpleframework/http/core/PartBodyConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;Lorg/simpleframework/http/core/PartList;[B)V

    goto :goto_15
.end method
