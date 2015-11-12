.class Lorg/simpleframework/http/core/Transfer;
.super Ljava/lang/Object;
.source "Transfer.java"


# instance fields
.field private factory:Lorg/simpleframework/http/core/ProducerFactory;

.field private producer:Lorg/simpleframework/http/core/Producer;

.field private response:Lorg/simpleframework/http/Response;

.field private support:Lorg/simpleframework/http/core/Conversation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Conversation;Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V
    .registers 5
    .param p1, "support"    # Lorg/simpleframework/http/core/Conversation;
    .param p2, "sender"    # Lorg/simpleframework/http/core/Sender;
    .param p3, "monitor"    # Lorg/simpleframework/http/core/Monitor;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/simpleframework/http/core/ProducerFactory;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/http/core/ProducerFactory;-><init>(Lorg/simpleframework/http/core/Conversation;Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/Transfer;->factory:Lorg/simpleframework/http/core/ProducerFactory;

    .line 75
    invoke-virtual {p1}, Lorg/simpleframework/http/core/Conversation;->getResponse()Lorg/simpleframework/http/Response;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/Transfer;->response:Lorg/simpleframework/http/Response;

    .line 76
    iput-object p1, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    .line 77
    return-void
.end method

.method private clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/Conversation;->setIdentityEncoded()V

    .line 287
    return-void
.end method

.method private commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/http/core/Transfer;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v1}, Lorg/simpleframework/http/Response;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 301
    return-void

    .line 298
    :catch_6
    move-exception v0

    .line 299
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v1, Lorg/simpleframework/http/core/TransferException;

    const-string v2, "Unable to commit"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/http/core/TransferException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private configure()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v2, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v2}, Lorg/simpleframework/http/core/Conversation;->getContentLength()I

    move-result v1

    .line 222
    .local v1, "length":I
    iget-object v2, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v2}, Lorg/simpleframework/http/core/Conversation;->isEmpty()Z

    move-result v0

    .line 224
    .local v0, "empty":Z
    if-eqz v0, :cond_1d

    .line 225
    iget-object v2, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/simpleframework/http/core/Conversation;->setContentLength(I)V

    .line 231
    :goto_14
    iget-object v2, p0, Lorg/simpleframework/http/core/Transfer;->factory:Lorg/simpleframework/http/core/ProducerFactory;

    invoke-virtual {v2}, Lorg/simpleframework/http/core/ProducerFactory;->getInstance()Lorg/simpleframework/http/core/Producer;

    move-result-object v2

    iput-object v2, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    .line 232
    return-void

    .line 226
    :cond_1d
    if-ltz v1, :cond_25

    .line 227
    iget-object v2, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v2, v1}, Lorg/simpleframework/http/core/Conversation;->setContentLength(I)V

    goto :goto_14

    .line 229
    :cond_25
    iget-object v2, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v2}, Lorg/simpleframework/http/core/Conversation;->setChunkedEncoded()V

    goto :goto_14
.end method

.method private configure(I)V
    .registers 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v1}, Lorg/simpleframework/http/core/Conversation;->getContentLength()I

    move-result v0

    .line 245
    .local v0, "length":I
    iget-object v1, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v1}, Lorg/simpleframework/http/core/Conversation;->isHead()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 246
    if-lez p1, :cond_14

    .line 247
    invoke-direct {p0, p1, p1}, Lorg/simpleframework/http/core/Transfer;->configure(II)V

    .line 254
    :goto_13
    return-void

    .line 249
    :cond_14
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/http/core/Transfer;->configure(II)V

    goto :goto_13

    .line 252
    :cond_18
    invoke-direct {p0, p1, p1}, Lorg/simpleframework/http/core/Transfer;->configure(II)V

    goto :goto_13
.end method

.method private configure(II)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v1}, Lorg/simpleframework/http/core/Conversation;->isEmpty()Z

    move-result v0

    .line 268
    .local v0, "empty":Z
    if-eqz v0, :cond_17

    .line 269
    iget-object v1, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/simpleframework/http/core/Conversation;->setContentLength(I)V

    .line 275
    :goto_e
    iget-object v1, p0, Lorg/simpleframework/http/core/Transfer;->factory:Lorg/simpleframework/http/core/ProducerFactory;

    invoke-virtual {v1}, Lorg/simpleframework/http/core/ProducerFactory;->getInstance()Lorg/simpleframework/http/core/Producer;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    .line 276
    return-void

    .line 270
    :cond_17
    if-ltz p2, :cond_1f

    .line 271
    iget-object v1, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v1, p2}, Lorg/simpleframework/http/core/Conversation;->setContentLength(I)V

    goto :goto_e

    .line 273
    :cond_1f
    iget-object v1, p0, Lorg/simpleframework/http/core/Transfer;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v1}, Lorg/simpleframework/http/core/Conversation;->setChunkedEncoded()V

    goto :goto_e
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
    .line 208
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    if-nez v0, :cond_c

    .line 209
    new-instance v0, Lorg/simpleframework/http/core/TransferException;

    const-string v1, "Conversation details not ready"

    invoke-direct {v0, v1}, Lorg/simpleframework/http/core/TransferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Producer;->close()V

    .line 212
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    if-nez v0, :cond_c

    .line 195
    new-instance v0, Lorg/simpleframework/http/core/TransferException;

    const-string v1, "Conversation details not ready"

    invoke-direct {v0, v1}, Lorg/simpleframework/http/core/TransferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Producer;->flush()V

    .line 198
    return-void
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    if-eqz v0, :cond_c

    .line 99
    new-instance v0, Lorg/simpleframework/http/core/TransferException;

    const-string v1, "Transfer has already started"

    invoke-direct {v0, v1}, Lorg/simpleframework/http/core/TransferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_c
    invoke-direct {p0}, Lorg/simpleframework/http/core/Transfer;->clear()V

    .line 102
    invoke-direct {p0}, Lorg/simpleframework/http/core/Transfer;->configure()V

    .line 103
    invoke-direct {p0}, Lorg/simpleframework/http/core/Transfer;->commit()V

    .line 104
    return-void
.end method

.method public start(I)V
    .registers 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    if-eqz v0, :cond_c

    .line 116
    new-instance v0, Lorg/simpleframework/http/core/TransferException;

    const-string v1, "Transfer has already started"

    invoke-direct {v0, v1}, Lorg/simpleframework/http/core/TransferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_c
    invoke-direct {p0}, Lorg/simpleframework/http/core/Transfer;->clear()V

    .line 119
    invoke-direct {p0, p1}, Lorg/simpleframework/http/core/Transfer;->configure(I)V

    .line 120
    invoke-direct {p0}, Lorg/simpleframework/http/core/Transfer;->commit()V

    .line 121
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 162
    .local v0, "mark":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 164
    .local v1, "size":I
    if-le v0, v1, :cond_12

    .line 165
    new-instance v2, Lorg/simpleframework/http/core/TransferException;

    const-string v3, "Buffer position greater than limit"

    invoke-direct {v2, v3}, Lorg/simpleframework/http/core/TransferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_12
    const/4 v2, 0x0

    sub-int v3, v1, v0

    invoke-virtual {p0, p1, v2, v3}, Lorg/simpleframework/http/core/Transfer;->write(Ljava/nio/ByteBuffer;II)V

    .line 168
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;II)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    if-nez v0, :cond_c

    .line 182
    new-instance v0, Lorg/simpleframework/http/core/TransferException;

    const-string v1, "Conversation details not ready"

    invoke-direct {v0, v1}, Lorg/simpleframework/http/core/TransferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/http/core/Producer;->produce(Ljava/nio/ByteBuffer;II)V

    .line 185
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/http/core/Transfer;->write([BII)V

    .line 133
    return-void
.end method

.method public write([BII)V
    .registers 6
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    if-nez v0, :cond_c

    .line 147
    new-instance v0, Lorg/simpleframework/http/core/TransferException;

    const-string v1, "Conversation details not ready"

    invoke-direct {v0, v1}, Lorg/simpleframework/http/core/TransferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/core/Transfer;->producer:Lorg/simpleframework/http/core/Producer;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/http/core/Producer;->produce([BII)V

    .line 150
    return-void
.end method
