.class Lorg/simpleframework/http/core/Accumulator;
.super Ljava/io/OutputStream;
.source "Accumulator.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# instance fields
.field private buffer:[B

.field private closed:Z

.field private count:I

.field private flushed:Z

.field private transfer:Lorg/simpleframework/http/core/Transfer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Conversation;Lorg/simpleframework/http/core/Channel;Lorg/simpleframework/http/core/Monitor;)V
    .registers 5
    .param p1, "support"    # Lorg/simpleframework/http/core/Conversation;
    .param p2, "channel"    # Lorg/simpleframework/http/core/Channel;
    .param p3, "monitor"    # Lorg/simpleframework/http/core/Monitor;

    .prologue
    .line 93
    invoke-interface {p2}, Lorg/simpleframework/http/core/Channel;->getSender()Lorg/simpleframework/http/core/Sender;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/simpleframework/http/core/Accumulator;-><init>(Lorg/simpleframework/http/core/Conversation;Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/http/core/Conversation;Lorg/simpleframework/http/core/Entity;Lorg/simpleframework/http/core/Monitor;)V
    .registers 5
    .param p1, "support"    # Lorg/simpleframework/http/core/Conversation;
    .param p2, "entity"    # Lorg/simpleframework/http/core/Entity;
    .param p3, "monitor"    # Lorg/simpleframework/http/core/Monitor;

    .prologue
    .line 78
    invoke-interface {p2}, Lorg/simpleframework/http/core/Entity;->getChannel()Lorg/simpleframework/http/core/Channel;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/simpleframework/http/core/Accumulator;-><init>(Lorg/simpleframework/http/core/Conversation;Lorg/simpleframework/http/core/Channel;Lorg/simpleframework/http/core/Monitor;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/http/core/Conversation;Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V
    .registers 5
    .param p1, "support"    # Lorg/simpleframework/http/core/Conversation;
    .param p2, "sender"    # Lorg/simpleframework/http/core/Sender;
    .param p3, "monitor"    # Lorg/simpleframework/http/core/Monitor;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 108
    new-instance v0, Lorg/simpleframework/http/core/Transfer;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/http/core/Transfer;-><init>(Lorg/simpleframework/http/core/Conversation;Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/Accumulator;->transfer:Lorg/simpleframework/http/core/Transfer;

    .line 109
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/simpleframework/http/core/Accumulator;->buffer:[B

    .line 110
    return-void
.end method

.method private commit()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/simpleframework/http/core/Accumulator;->flushed:Z

    if-nez v0, :cond_b

    .line 303
    iget-object v0, p0, Lorg/simpleframework/http/core/Accumulator;->transfer:Lorg/simpleframework/http/core/Transfer;

    iget v1, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/http/core/Transfer;->start(I)V

    .line 305
    :cond_b
    iget v0, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    if-lez v0, :cond_19

    .line 306
    iget-object v0, p0, Lorg/simpleframework/http/core/Accumulator;->transfer:Lorg/simpleframework/http/core/Transfer;

    iget-object v1, p0, Lorg/simpleframework/http/core/Accumulator;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/simpleframework/http/core/Transfer;->write([BII)V

    .line 308
    :cond_19
    iget-object v0, p0, Lorg/simpleframework/http/core/Accumulator;->transfer:Lorg/simpleframework/http/core/Transfer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/Transfer;->close()V

    .line 309
    return-void
.end method

.method private flush(Z)V
    .registers 6
    .param p1, "flush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-boolean v0, p0, Lorg/simpleframework/http/core/Accumulator;->flushed:Z

    if-nez v0, :cond_a

    .line 267
    iget-object v0, p0, Lorg/simpleframework/http/core/Accumulator;->transfer:Lorg/simpleframework/http/core/Transfer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/Transfer;->start()V

    .line 269
    :cond_a
    iget v0, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    if-lez v0, :cond_17

    .line 270
    iget-object v0, p0, Lorg/simpleframework/http/core/Accumulator;->transfer:Lorg/simpleframework/http/core/Transfer;

    iget-object v1, p0, Lorg/simpleframework/http/core/Accumulator;->buffer:[B

    iget v2, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    invoke-virtual {v0, v1, v3, v2}, Lorg/simpleframework/http/core/Transfer;->write([BII)V

    .line 272
    :cond_17
    if-eqz p1, :cond_1e

    .line 273
    iget-object v0, p0, Lorg/simpleframework/http/core/Accumulator;->transfer:Lorg/simpleframework/http/core/Transfer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/Transfer;->flush()V

    .line 275
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/http/core/Accumulator;->flushed:Z

    .line 276
    iput v3, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    .line 277
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
    const/4 v1, 0x1

    .line 287
    iget-boolean v0, p0, Lorg/simpleframework/http/core/Accumulator;->closed:Z

    if-nez v0, :cond_8

    .line 288
    invoke-direct {p0}, Lorg/simpleframework/http/core/Accumulator;->commit()V

    .line 290
    :cond_8
    iput-boolean v1, p0, Lorg/simpleframework/http/core/Accumulator;->flushed:Z

    .line 291
    iput-boolean v1, p0, Lorg/simpleframework/http/core/Accumulator;->closed:Z

    .line 292
    return-void
.end method

.method public expand(I)V
    .registers 8
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 237
    iget-object v3, p0, Lorg/simpleframework/http/core/Accumulator;->buffer:[B

    array-length v3, v3

    if-ge v3, p1, :cond_1a

    .line 238
    iget-object v3, p0, Lorg/simpleframework/http/core/Accumulator;->buffer:[B

    array-length v3, v3

    mul-int/lit8 v1, v3, 0x2

    .line 239
    .local v1, "size":I
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 240
    .local v0, "resize":I
    new-array v2, v0, [B

    .line 242
    .local v2, "temp":[B
    iget-object v3, p0, Lorg/simpleframework/http/core/Accumulator;->buffer:[B

    iget v4, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iput-object v2, p0, Lorg/simpleframework/http/core/Accumulator;->buffer:[B

    .line 245
    .end local v0    # "resize":I
    .end local v1    # "size":I
    .end local v2    # "temp":[B
    :cond_1a
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/Accumulator;->flush(Z)V

    .line 255
    return-void
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/simpleframework/http/core/Accumulator;->closed:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/simpleframework/http/core/Accumulator;->flushed:Z

    if-eqz v0, :cond_c

    .line 133
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Response has been flushed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    .line 136
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 185
    .local v0, "mark":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 187
    .local v1, "size":I
    if-le v0, v1, :cond_12

    .line 188
    new-instance v2, Lorg/simpleframework/http/core/TransferException;

    const-string v3, "Buffer position greater than limit"

    invoke-direct {v2, v3}, Lorg/simpleframework/http/core/TransferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_12
    const/4 v2, 0x0

    sub-int v3, v1, v0

    invoke-virtual {p0, p1, v2, v3}, Lorg/simpleframework/http/core/Accumulator;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    return v2
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .registers 8
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-boolean v2, p0, Lorg/simpleframework/http/core/Accumulator;->closed:Z

    if-eqz v2, :cond_c

    .line 207
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Response has been transferred"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 210
    .local v1, "mark":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 212
    .local v0, "limit":I
    sub-int v2, v0, v1

    if-ge v2, p3, :cond_1a

    .line 213
    sub-int p3, v0, v1

    .line 215
    :cond_1a
    iget v2, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    add-int/2addr v2, p3

    iget-object v3, p0, Lorg/simpleframework/http/core/Accumulator;->buffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_26

    .line 216
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/simpleframework/http/core/Accumulator;->flush(Z)V

    .line 218
    :cond_26
    iget-object v2, p0, Lorg/simpleframework/http/core/Accumulator;->buffer:[B

    array-length v2, v2

    if-le p3, v2, :cond_31

    .line 219
    iget-object v2, p0, Lorg/simpleframework/http/core/Accumulator;->transfer:Lorg/simpleframework/http/core/Transfer;

    invoke-virtual {v2, p1}, Lorg/simpleframework/http/core/Transfer;->write(Ljava/nio/ByteBuffer;)V

    .line 224
    :goto_30
    return p3

    .line 221
    :cond_31
    iget-object v2, p0, Lorg/simpleframework/http/core/Accumulator;->buffer:[B

    iget v3, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    invoke-virtual {p1, v2, v3, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 222
    iget v2, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/simpleframework/http/core/Accumulator;->count:I

    goto :goto_30
.end method

.method public write(I)V
    .registers 5
    .param p1, "octet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    int-to-byte v0, p1

    .line 149
    .local v0, "value":B
    iget-boolean v1, p0, Lorg/simpleframework/http/core/Accumulator;->closed:Z

    if-eqz v1, :cond_d

    .line 150
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Response has been transferred"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_d
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/Accumulator;->write([B)V

    .line 153
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-lez p3, :cond_9

    .line 169
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/Accumulator;->write(Ljava/nio/ByteBuffer;)I

    .line 171
    :cond_9
    return-void
.end method
