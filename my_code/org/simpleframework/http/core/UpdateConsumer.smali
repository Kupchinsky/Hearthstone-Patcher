.class abstract Lorg/simpleframework/http/core/UpdateConsumer;
.super Lorg/simpleframework/http/core/BodyConsumer;
.source "UpdateConsumer.java"


# instance fields
.field protected array:[B

.field protected finished:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 55
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/UpdateConsumer;-><init>(I)V

    .line 56
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 3
    .param p1, "chunk"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/simpleframework/http/core/BodyConsumer;-><init>()V

    .line 66
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/simpleframework/http/core/UpdateConsumer;->array:[B

    .line 67
    return-void
.end method


# virtual methods
.method protected commit(Lorg/simpleframework/transport/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Lorg/simpleframework/transport/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/simpleframework/http/core/UpdateConsumer;->finished:Z

    if-nez v0, :cond_c

    .line 123
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Consumer not finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_c
    return-void
.end method

.method public consume(Lorg/simpleframework/transport/Cursor;)V
    .registers 8
    .param p1, "cursor"    # Lorg/simpleframework/transport/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-interface {p1}, Lorg/simpleframework/transport/Cursor;->ready()I

    move-result v1

    .line 93
    .local v1, "ready":I
    :goto_5
    if-lez v1, :cond_28

    .line 94
    iget-object v4, p0, Lorg/simpleframework/http/core/UpdateConsumer;->array:[B

    array-length v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 95
    .local v3, "size":I
    iget-object v4, p0, Lorg/simpleframework/http/core/UpdateConsumer;->array:[B

    invoke-interface {p1, v4, v5, v3}, Lorg/simpleframework/transport/Cursor;->read([BII)I

    move-result v0

    .line 97
    .local v0, "count":I
    if-lez v0, :cond_21

    .line 98
    iget-object v4, p0, Lorg/simpleframework/http/core/UpdateConsumer;->array:[B

    invoke-virtual {p0, v4, v5, v0}, Lorg/simpleframework/http/core/UpdateConsumer;->update([BII)I

    move-result v2

    .line 100
    .local v2, "reset":I
    if-lez v2, :cond_21

    .line 101
    invoke-interface {p1, v2}, Lorg/simpleframework/transport/Cursor;->reset(I)I

    .line 104
    .end local v2    # "reset":I
    :cond_21
    iget-boolean v4, p0, Lorg/simpleframework/http/core/UpdateConsumer;->finished:Z

    if-eqz v4, :cond_29

    .line 105
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/UpdateConsumer;->commit(Lorg/simpleframework/transport/Cursor;)V

    .line 110
    .end local v0    # "count":I
    .end local v3    # "size":I
    :cond_28
    return-void

    .line 108
    .restart local v0    # "count":I
    .restart local v3    # "size":I
    :cond_29
    invoke-interface {p1}, Lorg/simpleframework/transport/Cursor;->ready()I

    move-result v1

    .line 109
    goto :goto_5
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/simpleframework/http/core/UpdateConsumer;->finished:Z

    return v0
.end method

.method protected abstract update([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
