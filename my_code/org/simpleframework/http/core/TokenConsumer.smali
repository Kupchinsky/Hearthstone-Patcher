.class Lorg/simpleframework/http/core/TokenConsumer;
.super Lorg/simpleframework/http/core/ArrayConsumer;
.source "TokenConsumer.java"


# instance fields
.field private allocator:Lorg/simpleframework/util/buffer/Allocator;

.field private buffer:Lorg/simpleframework/util/buffer/Buffer;

.field private length:I

.field private seek:I

.field private token:[B


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;[B)V
    .registers 4
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "token"    # [B

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/simpleframework/http/core/ArrayConsumer;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/simpleframework/http/core/TokenConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    .line 72
    array-length v0, p2

    iput v0, p0, Lorg/simpleframework/http/core/TokenConsumer;->length:I

    .line 73
    iput-object p2, p0, Lorg/simpleframework/http/core/TokenConsumer;->token:[B

    .line 74
    iget v0, p0, Lorg/simpleframework/http/core/TokenConsumer;->length:I

    iput v0, p0, Lorg/simpleframework/http/core/TokenConsumer;->chunk:I

    .line 75
    return-void
.end method


# virtual methods
.method protected process()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/simpleframework/http/core/TokenConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_e

    .line 85
    iget-object v0, p0, Lorg/simpleframework/http/core/TokenConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    iget v1, p0, Lorg/simpleframework/http/core/TokenConsumer;->length:I

    invoke-interface {v0, v1}, Lorg/simpleframework/util/buffer/Allocator;->allocate(I)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/TokenConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    .line 87
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/http/core/TokenConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    iget-object v1, p0, Lorg/simpleframework/http/core/TokenConsumer;->token:[B

    invoke-interface {v0, v1}, Lorg/simpleframework/util/buffer/Buffer;->append([B)Lorg/simpleframework/util/buffer/Buffer;

    .line 88
    return-void
.end method

.method protected scan()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v3, p0, Lorg/simpleframework/http/core/TokenConsumer;->token:[B

    array-length v2, v3

    .line 100
    .local v2, "size":I
    const/4 v0, 0x0

    .line 102
    .local v0, "pos":I
    iget v3, p0, Lorg/simpleframework/http/core/TokenConsumer;->count:I

    if-lt v3, v2, :cond_31

    .line 103
    :goto_8
    iget v3, p0, Lorg/simpleframework/http/core/TokenConsumer;->seek:I

    iget v4, p0, Lorg/simpleframework/http/core/TokenConsumer;->count:I

    if-ge v3, v4, :cond_28

    .line 104
    iget-object v3, p0, Lorg/simpleframework/http/core/TokenConsumer;->array:[B

    iget v4, p0, Lorg/simpleframework/http/core/TokenConsumer;->seek:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/simpleframework/http/core/TokenConsumer;->seek:I

    aget-byte v3, v3, v4

    iget-object v4, p0, Lorg/simpleframework/http/core/TokenConsumer;->token:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .local v1, "pos":I
    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_33

    .line 105
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid token"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    :cond_28
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/simpleframework/http/core/TokenConsumer;->done:Z

    .line 109
    iget v3, p0, Lorg/simpleframework/http/core/TokenConsumer;->count:I

    iget v4, p0, Lorg/simpleframework/http/core/TokenConsumer;->seek:I

    sub-int/2addr v3, v4

    .line 111
    :goto_30
    return v3

    :cond_31
    const/4 v3, 0x0

    goto :goto_30

    .end local v0    # "pos":I
    .restart local v1    # "pos":I
    :cond_33
    move v0, v1

    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    goto :goto_8
.end method
