.class abstract Lorg/simpleframework/http/core/ArrayConsumer;
.super Lorg/simpleframework/http/core/BufferConsumer;
.source "ArrayConsumer.java"


# instance fields
.field protected array:[B

.field protected chunk:I

.field protected count:I

.field protected done:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/ArrayConsumer;-><init>(I)V

    .line 67
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 78
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/http/core/ArrayConsumer;-><init>(II)V

    .line 79
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "chunk"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/simpleframework/http/core/BufferConsumer;-><init>()V

    .line 91
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/simpleframework/http/core/ArrayConsumer;->array:[B

    .line 92
    iput p2, p0, Lorg/simpleframework/http/core/ArrayConsumer;->chunk:I

    .line 93
    return-void
.end method

.method private resize(I)V
    .registers 8
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x0

    .line 143
    iget-object v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->array:[B

    array-length v3, v3

    if-ge v3, p1, :cond_1c

    .line 144
    iget-object v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->array:[B

    array-length v3, v3

    iget v4, p0, Lorg/simpleframework/http/core/ArrayConsumer;->chunk:I

    add-int v0, v3, v4

    .line 145
    .local v0, "expand":I
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 146
    .local v1, "max":I
    new-array v2, v1, [B

    .line 148
    .local v2, "temp":[B
    iget-object v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->array:[B

    iget v4, p0, Lorg/simpleframework/http/core/ArrayConsumer;->count:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iput-object v2, p0, Lorg/simpleframework/http/core/ArrayConsumer;->array:[B

    .line 151
    .end local v0    # "expand":I
    .end local v1    # "max":I
    .end local v2    # "temp":[B
    :cond_1c
    return-void
.end method


# virtual methods
.method public consume(Lorg/simpleframework/transport/Cursor;)V
    .registers 7
    .param p1, "cursor"    # Lorg/simpleframework/transport/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-boolean v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->done:Z

    if-nez v3, :cond_3d

    .line 107
    invoke-interface {p1}, Lorg/simpleframework/transport/Cursor;->ready()I

    move-result v0

    .line 109
    .local v0, "ready":I
    :goto_8
    if-lez v0, :cond_3d

    .line 110
    iget v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->chunk:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 112
    .local v2, "size":I
    iget v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->count:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/simpleframework/http/core/ArrayConsumer;->array:[B

    array-length v4, v4

    if-le v3, v4, :cond_1e

    .line 113
    iget v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->count:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Lorg/simpleframework/http/core/ArrayConsumer;->resize(I)V

    .line 115
    :cond_1e
    iget-object v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->array:[B

    iget v4, p0, Lorg/simpleframework/http/core/ArrayConsumer;->count:I

    invoke-interface {p1, v3, v4, v2}, Lorg/simpleframework/transport/Cursor;->read([BII)I

    move-result v2

    .line 116
    iget v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->count:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->count:I

    .line 118
    if-lez v2, :cond_3e

    .line 119
    invoke-virtual {p0}, Lorg/simpleframework/http/core/ArrayConsumer;->scan()I

    move-result v1

    .line 121
    .local v1, "reset":I
    if-lez v1, :cond_36

    .line 122
    invoke-interface {p1, v1}, Lorg/simpleframework/transport/Cursor;->reset(I)I

    .line 124
    :cond_36
    iget-boolean v3, p0, Lorg/simpleframework/http/core/ArrayConsumer;->done:Z

    if-eqz v3, :cond_3e

    .line 125
    invoke-virtual {p0}, Lorg/simpleframework/http/core/ArrayConsumer;->process()V

    .line 132
    .end local v0    # "ready":I
    .end local v1    # "reset":I
    .end local v2    # "size":I
    :cond_3d
    return-void

    .line 129
    .restart local v0    # "ready":I
    .restart local v2    # "size":I
    :cond_3e
    invoke-interface {p1}, Lorg/simpleframework/transport/Cursor;->ready()I

    move-result v0

    .line 130
    goto :goto_8
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/simpleframework/http/core/ArrayConsumer;->done:Z

    return v0
.end method

.method protected abstract process()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract scan()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
