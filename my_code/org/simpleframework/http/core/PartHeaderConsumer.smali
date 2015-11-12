.class Lorg/simpleframework/http/core/PartHeaderConsumer;
.super Lorg/simpleframework/http/core/SegmentConsumer;
.source "PartHeaderConsumer.java"


# instance fields
.field private allocator:Lorg/simpleframework/util/buffer/Allocator;

.field private buffer:Lorg/simpleframework/util/buffer/Buffer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;)V
    .registers 2
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/simpleframework/http/core/SegmentConsumer;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/simpleframework/http/core/PartHeaderConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    .line 56
    return-void
.end method

.method private append()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/simpleframework/http/core/PartHeaderConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_e

    .line 79
    iget-object v0, p0, Lorg/simpleframework/http/core/PartHeaderConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    iget v1, p0, Lorg/simpleframework/http/core/PartHeaderConsumer;->count:I

    invoke-interface {v0, v1}, Lorg/simpleframework/util/buffer/Allocator;->allocate(I)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/PartHeaderConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    .line 81
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/http/core/PartHeaderConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    iget-object v1, p0, Lorg/simpleframework/http/core/PartHeaderConsumer;->array:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/simpleframework/http/core/PartHeaderConsumer;->count:I

    invoke-interface {v0, v1, v2, v3}, Lorg/simpleframework/util/buffer/Buffer;->append([BII)Lorg/simpleframework/util/buffer/Buffer;

    .line 82
    return-void
.end method


# virtual methods
.method protected process()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/simpleframework/http/core/PartHeaderConsumer;->headers()V

    .line 68
    invoke-direct {p0}, Lorg/simpleframework/http/core/PartHeaderConsumer;->append()V

    .line 69
    return-void
.end method
