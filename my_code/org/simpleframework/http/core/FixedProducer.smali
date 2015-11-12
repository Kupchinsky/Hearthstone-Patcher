.class Lorg/simpleframework/http/core/FixedProducer;
.super Ljava/lang/Object;
.source "FixedProducer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Producer;


# instance fields
.field private count:I

.field private limit:I

.field private monitor:Lorg/simpleframework/http/core/Monitor;

.field private sender:Lorg/simpleframework/http/core/Sender;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;I)V
    .registers 4
    .param p1, "sender"    # Lorg/simpleframework/http/core/Sender;
    .param p2, "monitor"    # Lorg/simpleframework/http/core/Monitor;
    .param p3, "limit"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lorg/simpleframework/http/core/FixedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    .line 70
    iput-object p1, p0, Lorg/simpleframework/http/core/FixedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    .line 71
    iput p3, p0, Lorg/simpleframework/http/core/FixedProducer;->limit:I

    .line 72
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Monitor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_15

    .line 189
    iget v0, p0, Lorg/simpleframework/http/core/FixedProducer;->count:I

    iget v1, p0, Lorg/simpleframework/http/core/FixedProducer;->limit:I

    if-ge v0, v1, :cond_16

    .line 190
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v1, p0, Lorg/simpleframework/http/core/FixedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v0, v1}, Lorg/simpleframework/http/core/Monitor;->error(Lorg/simpleframework/http/core/Sender;)V

    .line 195
    :cond_15
    :goto_15
    return-void

    .line 192
    :cond_16
    iget-object v0, p0, Lorg/simpleframework/http/core/FixedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v1, p0, Lorg/simpleframework/http/core/FixedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v0, v1}, Lorg/simpleframework/http/core/Monitor;->ready(Lorg/simpleframework/http/core/Sender;)V

    goto :goto_15
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/http/core/FixedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Monitor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d

    .line 170
    iget-object v1, p0, Lorg/simpleframework/http/core/FixedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Sender;->flush()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 178
    :cond_d
    return-void

    .line 172
    :catch_e
    move-exception v0

    .line 173
    .local v0, "cause":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/simpleframework/http/core/FixedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    if-eqz v1, :cond_1a

    .line 174
    iget-object v1, p0, Lorg/simpleframework/http/core/FixedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v2, p0, Lorg/simpleframework/http/core/FixedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Monitor;->error(Lorg/simpleframework/http/core/Sender;)V

    .line 176
    :cond_1a
    new-instance v1, Lorg/simpleframework/http/core/ProducerException;

    const-string v2, "Error flushing"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public produce(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 120
    .local v0, "mark":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 122
    .local v1, "size":I
    if-le v0, v1, :cond_12

    .line 123
    new-instance v2, Lorg/simpleframework/http/core/ProducerException;

    const-string v3, "Buffer position greater than limit"

    invoke-direct {v2, v3}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_12
    const/4 v2, 0x0

    sub-int v3, v1, v0

    invoke-virtual {p0, p1, v2, v3}, Lorg/simpleframework/http/core/FixedProducer;->produce(Ljava/nio/ByteBuffer;II)V

    .line 126
    return-void
.end method

.method public produce(Ljava/nio/ByteBuffer;II)V
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget v2, p0, Lorg/simpleframework/http/core/FixedProducer;->limit:I

    iget v3, p0, Lorg/simpleframework/http/core/FixedProducer;->count:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 144
    .local v1, "size":I
    :try_start_9
    iget-object v2, p0, Lorg/simpleframework/http/core/FixedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-interface {v2}, Lorg/simpleframework/http/core/Monitor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 145
    new-instance v2, Lorg/simpleframework/http/core/ProducerException;

    const-string v3, "Response content complete"

    invoke-direct {v2, v3}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_19

    .line 152
    :catch_19
    move-exception v0

    .line 153
    .local v0, "cause":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/simpleframework/http/core/FixedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    if-eqz v2, :cond_25

    .line 154
    iget-object v2, p0, Lorg/simpleframework/http/core/FixedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v3, p0, Lorg/simpleframework/http/core/FixedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v2, v3}, Lorg/simpleframework/http/core/Monitor;->error(Lorg/simpleframework/http/core/Sender;)V

    .line 156
    :cond_25
    new-instance v2, Lorg/simpleframework/http/core/ProducerException;

    const-string v3, "Error sending response"

    invoke-direct {v2, v3, v0}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 147
    .end local v0    # "cause":Ljava/lang/Exception;
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lorg/simpleframework/http/core/FixedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v2, p1, p2, v1}, Lorg/simpleframework/http/core/Sender;->send(Ljava/nio/ByteBuffer;II)V

    .line 149
    iget v2, p0, Lorg/simpleframework/http/core/FixedProducer;->count:I

    add-int/2addr v2, v1

    iget v3, p0, Lorg/simpleframework/http/core/FixedProducer;->limit:I

    if-ne v2, v3, :cond_40

    .line 150
    iget-object v2, p0, Lorg/simpleframework/http/core/FixedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v3, p0, Lorg/simpleframework/http/core/FixedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v2, v3}, Lorg/simpleframework/http/core/Monitor;->ready(Lorg/simpleframework/http/core/Sender;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_40} :catch_19

    .line 158
    :cond_40
    iget v2, p0, Lorg/simpleframework/http/core/FixedProducer;->count:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/simpleframework/http/core/FixedProducer;->count:I

    .line 159
    return-void
.end method

.method public produce([B)V
    .registers 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/http/core/FixedProducer;->produce([BII)V

    .line 86
    return-void
.end method

.method public produce([BII)V
    .registers 5
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-lez p3, :cond_9

    .line 104
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/FixedProducer;->produce(Ljava/nio/ByteBuffer;)V

    .line 106
    :cond_9
    return-void
.end method
