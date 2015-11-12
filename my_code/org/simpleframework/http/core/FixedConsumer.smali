.class Lorg/simpleframework/http/core/FixedConsumer;
.super Lorg/simpleframework/http/core/UpdateConsumer;
.source "FixedConsumer.java"


# instance fields
.field private allocator:Lorg/simpleframework/util/buffer/Allocator;

.field private buffer:Lorg/simpleframework/util/buffer/Buffer;

.field private limit:I


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;I)V
    .registers 3
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "limit"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/simpleframework/http/core/UpdateConsumer;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/simpleframework/http/core/FixedConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    .line 65
    iput p2, p0, Lorg/simpleframework/http/core/FixedConsumer;->limit:I

    .line 66
    return-void
.end method


# virtual methods
.method protected allocate()Lorg/simpleframework/util/buffer/Buffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_e

    .line 159
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    iget v1, p0, Lorg/simpleframework/http/core/FixedConsumer;->limit:I

    invoke-interface {v0, v1}, Lorg/simpleframework/util/buffer/Allocator;->allocate(I)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    .line 161
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_a

    .line 79
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 81
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Buffer;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_a

    .line 97
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 99
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0, p1}, Lorg/simpleframework/util/buffer/Buffer;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_a

    .line 114
    new-instance v0, Lorg/simpleframework/http/core/EmptyInputStream;

    invoke-direct {v0}, Lorg/simpleframework/http/core/EmptyInputStream;-><init>()V

    .line 116
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Buffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_9
.end method

.method protected update([BII)I
    .registers 7
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    iget v0, p0, Lorg/simpleframework/http/core/FixedConsumer;->limit:I

    .line 135
    .local v0, "mark":I
    iget v2, p0, Lorg/simpleframework/http/core/FixedConsumer;->limit:I

    if-lt p3, v2, :cond_12

    .line 136
    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/http/core/FixedConsumer;->append([BII)V

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/simpleframework/http/core/FixedConsumer;->finished:Z

    .line 138
    iput v1, p0, Lorg/simpleframework/http/core/FixedConsumer;->limit:I

    .line 139
    sub-int v1, p3, v0

    .line 145
    :cond_11
    :goto_11
    return v1

    .line 141
    :cond_12
    if-lez p3, :cond_11

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lorg/simpleframework/http/core/FixedConsumer;->append([BII)V

    .line 143
    iget v2, p0, Lorg/simpleframework/http/core/FixedConsumer;->limit:I

    sub-int/2addr v2, p3

    iput v2, p0, Lorg/simpleframework/http/core/FixedConsumer;->limit:I

    goto :goto_11
.end method
