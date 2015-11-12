.class Lorg/simpleframework/http/core/ChunkedProducer;
.super Ljava/lang/Object;
.source "ChunkedProducer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Producer;


# instance fields
.field private index:[B

.field private monitor:Lorg/simpleframework/http/core/Monitor;

.field private sender:Lorg/simpleframework/http/core/Sender;

.field private size:[B

.field private zero:[B


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V
    .registers 4
    .param p1, "sender"    # Lorg/simpleframework/http/core/Sender;
    .param p2, "monitor"    # Lorg/simpleframework/http/core/Monitor;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    iput-object v0, p0, Lorg/simpleframework/http/core/ChunkedProducer;->size:[B

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    iput-object v0, p0, Lorg/simpleframework/http/core/ChunkedProducer;->index:[B

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_38

    iput-object v0, p0, Lorg/simpleframework/http/core/ChunkedProducer;->zero:[B

    .line 74
    iput-object p2, p0, Lorg/simpleframework/http/core/ChunkedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    .line 75
    iput-object p1, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    .line 76
    return-void

    .line 41
    :array_22
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0xdt
        0xat
    .end array-data

    .line 46
    nop

    :array_2c
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    .line 51
    :array_38
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method private finish()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    iget-object v2, p0, Lorg/simpleframework/http/core/ChunkedProducer;->zero:[B

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Sender;->send([B)V

    .line 196
    iget-object v1, p0, Lorg/simpleframework/http/core/ChunkedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v2, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Monitor;->ready(Lorg/simpleframework/http/core/Sender;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 203
    return-void

    .line 197
    :catch_f
    move-exception v0

    .line 198
    .local v0, "cause":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    if-eqz v1, :cond_1b

    .line 199
    iget-object v1, p0, Lorg/simpleframework/http/core/ChunkedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v2, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Monitor;->close(Lorg/simpleframework/http/core/Sender;)V

    .line 201
    :cond_1b
    new-instance v1, Lorg/simpleframework/http/core/ProducerException;

    const-string v2, "Error flushing response"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/simpleframework/http/core/ChunkedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Monitor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 214
    invoke-direct {p0}, Lorg/simpleframework/http/core/ChunkedProducer;->finish()V

    .line 216
    :cond_b
    return-void
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/http/core/ChunkedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Monitor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d

    .line 176
    iget-object v1, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Sender;->flush()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 184
    :cond_d
    return-void

    .line 178
    :catch_e
    move-exception v0

    .line 179
    .local v0, "cause":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    if-eqz v1, :cond_1a

    .line 180
    iget-object v1, p0, Lorg/simpleframework/http/core/ChunkedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v2, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Monitor;->close(Lorg/simpleframework/http/core/Sender;)V

    .line 182
    :cond_1a
    new-instance v1, Lorg/simpleframework/http/core/ProducerException;

    const-string v2, "Error sending response"

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
    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 124
    .local v0, "mark":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 126
    .local v1, "size":I
    if-le v0, v1, :cond_12

    .line 127
    new-instance v2, Lorg/simpleframework/http/core/ProducerException;

    const-string v3, "Buffer position greater than limit"

    invoke-direct {v2, v3}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_12
    const/4 v2, 0x0

    sub-int v3, v1, v0

    invoke-virtual {p0, p1, v2, v3}, Lorg/simpleframework/http/core/ChunkedProducer;->produce(Ljava/nio/ByteBuffer;II)V

    .line 130
    return-void
.end method

.method public produce(Ljava/nio/ByteBuffer;II)V
    .registers 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v2, 0x7

    .line 147
    .local v2, "pos":I
    iget-object v4, p0, Lorg/simpleframework/http/core/ChunkedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-interface {v4}, Lorg/simpleframework/http/core/Monitor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 148
    new-instance v4, Lorg/simpleframework/http/core/ProducerException;

    const-string v5, "Stream has been closed"

    invoke-direct {v4, v5}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    :cond_11
    if-lez p3, :cond_42

    .line 151
    move v1, p3

    .local v1, "num":I
    move v3, v2

    .end local v2    # "pos":I
    .local v3, "pos":I
    :goto_15
    if-lez v1, :cond_27

    .line 152
    iget-object v4, p0, Lorg/simpleframework/http/core/ChunkedProducer;->size:[B

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    iget-object v5, p0, Lorg/simpleframework/http/core/ChunkedProducer;->index:[B

    and-int/lit8 v6, v1, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v4, v3

    .line 151
    ushr-int/lit8 v1, v1, 0x4

    move v3, v2

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_15

    .line 155
    :cond_27
    :try_start_27
    iget-object v4, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    iget-object v5, p0, Lorg/simpleframework/http/core/ChunkedProducer;->size:[B

    add-int/lit8 v6, v3, 0x1

    rsub-int/lit8 v7, v3, 0x9

    invoke-interface {v4, v5, v6, v7}, Lorg/simpleframework/http/core/Sender;->send([BII)V

    .line 156
    iget-object v4, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v4, p1, p2, p3}, Lorg/simpleframework/http/core/Sender;->send(Ljava/nio/ByteBuffer;II)V

    .line 157
    iget-object v4, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    iget-object v5, p0, Lorg/simpleframework/http/core/ChunkedProducer;->size:[B

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-interface {v4, v5, v6, v7}, Lorg/simpleframework/http/core/Sender;->send([BII)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_41} :catch_43

    move v2, v3

    .line 165
    .end local v1    # "num":I
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_42
    return-void

    .line 158
    .end local v2    # "pos":I
    .restart local v1    # "num":I
    .restart local v3    # "pos":I
    :catch_43
    move-exception v0

    .line 159
    .local v0, "cause":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    if-eqz v4, :cond_4f

    .line 160
    iget-object v4, p0, Lorg/simpleframework/http/core/ChunkedProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v5, p0, Lorg/simpleframework/http/core/ChunkedProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v4, v5}, Lorg/simpleframework/http/core/Monitor;->error(Lorg/simpleframework/http/core/Sender;)V

    .line 162
    :cond_4f
    new-instance v4, Lorg/simpleframework/http/core/ProducerException;

    const-string v5, "Error sending response"

    invoke-direct {v4, v5, v0}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
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
    .line 89
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/http/core/ChunkedProducer;->produce([BII)V

    .line 90
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
    .line 105
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-lez p3, :cond_9

    .line 108
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/ChunkedProducer;->produce(Ljava/nio/ByteBuffer;)V

    .line 110
    :cond_9
    return-void
.end method
