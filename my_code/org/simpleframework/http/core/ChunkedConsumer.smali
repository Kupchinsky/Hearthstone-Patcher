.class Lorg/simpleframework/http/core/ChunkedConsumer;
.super Lorg/simpleframework/http/core/UpdateConsumer;
.source "ChunkedConsumer.java"


# instance fields
.field private allocator:Lorg/simpleframework/util/buffer/Allocator;

.field private buffer:Lorg/simpleframework/util/buffer/Buffer;

.field private chunk:I

.field private count:I

.field private last:Z

.field private line:[B

.field private terminal:Z


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;)V
    .registers 3
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;

    .prologue
    .line 103
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/http/core/ChunkedConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;I)V

    .line 104
    return-void
.end method

.method private constructor <init>(Lorg/simpleframework/util/buffer/Allocator;I)V
    .registers 4
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "chunk"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/simpleframework/http/core/UpdateConsumer;-><init>()V

    .line 116
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->line:[B

    .line 117
    iput-object p1, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    .line 118
    return-void
.end method

.method private parse()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 256
    .local v1, "off":I
    :goto_1
    iget v2, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->count:I

    if-ge v1, v2, :cond_28

    .line 257
    iget-object v2, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->line:[B

    aget-byte v2, v2, v1

    invoke-direct {p0, v2}, Lorg/simpleframework/http/core/ChunkedConsumer;->toDecimal(B)I

    move-result v0

    .line 259
    .local v0, "octet":I
    if-gez v0, :cond_1a

    .line 260
    const/4 v2, 0x1

    if-ge v1, v2, :cond_28

    .line 261
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid chunk size line"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_1a
    iget v2, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    shl-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    .line 266
    iget v2, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    xor-int/2addr v2, v0

    iput v2, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    .line 267
    add-int/lit8 v1, v1, 0x1

    .line 268
    goto :goto_1

    .line 269
    .end local v0    # "octet":I
    :cond_28
    const/4 v2, 0x0

    iput v2, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->count:I

    .line 270
    return-void
.end method

.method private toDecimal(B)I
    .registers 3
    .param p1, "octet"    # B

    .prologue
    .line 283
    const/16 v0, 0x41

    if-lt p1, v0, :cond_d

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_d

    .line 284
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    .line 292
    :goto_c
    return v0

    .line 286
    :cond_d
    const/16 v0, 0x30

    if-lt p1, v0, :cond_18

    const/16 v0, 0x39

    if-gt p1, v0, :cond_18

    .line 287
    add-int/lit8 v0, p1, -0x30

    goto :goto_c

    .line 289
    :cond_18
    const/16 v0, 0x61

    if-lt p1, v0, :cond_25

    const/16 v0, 0x66

    if-gt p1, v0, :cond_25

    .line 290
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_c

    .line 292
    :cond_25
    const/4 v0, -0x1

    goto :goto_c
.end method


# virtual methods
.method protected allocate()Lorg/simpleframework/util/buffer/Buffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_c

    .line 241
    iget-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Allocator;->allocate()Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    .line 243
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

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
    .line 130
    iget-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_a

    .line 131
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 133
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

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
    .line 148
    iget-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_a

    .line 149
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 151
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

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
    .line 165
    iget-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_a

    .line 166
    new-instance v0, Lorg/simpleframework/http/core/EmptyInputStream;

    invoke-direct {v0}, Lorg/simpleframework/http/core/EmptyInputStream;-><init>()V

    .line 168
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Buffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_9
.end method

.method protected update([BII)I
    .registers 13
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 186
    add-int v0, p2, p3

    .line 188
    .local v0, "mark":I
    :cond_6
    :goto_6
    if-ge p2, v0, :cond_21

    .line 189
    iget-boolean v4, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->terminal:Z

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->last:Z

    if-eqz v4, :cond_25

    :cond_10
    move v1, p2

    .line 190
    .end local p2    # "off":I
    .local v1, "off":I
    if-ge v1, v0, :cond_6a

    .line 191
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v1

    if-ne v4, v8, :cond_10

    .line 192
    iget-boolean v4, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->last:Z

    if-eqz v4, :cond_22

    .line 193
    iput-boolean v7, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->finished:Z

    .line 194
    sub-int v3, v0, p2

    .line 227
    :cond_21
    return v3

    .line 196
    :cond_22
    iput-boolean v3, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->terminal:Z

    goto :goto_6

    .line 200
    :cond_25
    iget v4, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    if-nez v4, :cond_50

    .line 201
    :goto_29
    iget v4, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    if-nez v4, :cond_6

    .line 202
    if-ge p2, v0, :cond_6

    .line 204
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v4, p1, p2

    if-ne v4, v8, :cond_40

    .line 205
    invoke-direct {p0}, Lorg/simpleframework/http/core/ChunkedConsumer;->parse()V

    .line 207
    iget v4, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    if-nez v4, :cond_68

    .line 208
    iput-boolean v7, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->last:Z

    move p2, v1

    .line 209
    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_6

    .line 212
    .end local p2    # "off":I
    .restart local v1    # "off":I
    :cond_40
    iget-object v4, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->line:[B

    iget v5, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->count:I

    add-int/lit8 v6, v1, -0x1

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_29

    .line 216
    :cond_50
    sub-int v4, v0, p2

    iget v5, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 218
    .local v2, "write":I
    invoke-virtual {p0, p1, p2, v2}, Lorg/simpleframework/http/core/ChunkedConsumer;->append([BII)V

    .line 219
    iget v4, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    .line 220
    add-int/2addr p2, v2

    .line 222
    iget v4, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->chunk:I

    if-nez v4, :cond_6

    .line 223
    iput-boolean v7, p0, Lorg/simpleframework/http/core/ChunkedConsumer;->terminal:Z

    goto :goto_6

    .end local v2    # "write":I
    .end local p2    # "off":I
    .restart local v1    # "off":I
    :cond_68
    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_29

    .end local p2    # "off":I
    .restart local v1    # "off":I
    :cond_6a
    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_6
.end method
