.class Lorg/simpleframework/http/core/CloseProducer;
.super Ljava/lang/Object;
.source "CloseProducer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Producer;


# instance fields
.field private final monitor:Lorg/simpleframework/http/core/Monitor;

.field private final sender:Lorg/simpleframework/http/core/Sender;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V
    .registers 3
    .param p1, "sender"    # Lorg/simpleframework/http/core/Sender;
    .param p2, "monitor"    # Lorg/simpleframework/http/core/Monitor;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lorg/simpleframework/http/core/CloseProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    .line 56
    iput-object p1, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Monitor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_14

    .line 167
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v2, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Monitor;->close(Lorg/simpleframework/http/core/Sender;)V

    .line 168
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Sender;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 176
    :cond_14
    return-void

    .line 170
    :catch_15
    move-exception v0

    .line 171
    .local v0, "cause":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    if-eqz v1, :cond_21

    .line 172
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v2, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Monitor;->error(Lorg/simpleframework/http/core/Sender;)V

    .line 174
    :cond_21
    new-instance v1, Lorg/simpleframework/http/core/ProducerException;

    const-string v2, "Error sending response"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Monitor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d

    .line 148
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Sender;->flush()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 156
    :cond_d
    return-void

    .line 150
    :catch_e
    move-exception v0

    .line 151
    .local v0, "cause":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    if-eqz v1, :cond_1a

    .line 152
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v2, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Monitor;->error(Lorg/simpleframework/http/core/Sender;)V

    .line 154
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
    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 105
    .local v0, "mark":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 107
    .local v1, "size":I
    if-le v0, v1, :cond_12

    .line 108
    new-instance v2, Lorg/simpleframework/http/core/ProducerException;

    const-string v3, "Buffer position greater than limit"

    invoke-direct {v2, v3}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_12
    const/4 v2, 0x0

    sub-int v3, v1, v0

    invoke-virtual {p0, p1, v2, v3}, Lorg/simpleframework/http/core/CloseProducer;->produce(Ljava/nio/ByteBuffer;II)V

    .line 111
    return-void
.end method

.method public produce(Ljava/nio/ByteBuffer;II)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Monitor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 127
    new-instance v1, Lorg/simpleframework/http/core/ProducerException;

    const-string v2, "Stream has been closed"

    invoke-direct {v1, v2}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_10
    :try_start_10
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1, p1, p2, p3}, Lorg/simpleframework/http/core/Sender;->send(Ljava/nio/ByteBuffer;II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 137
    return-void

    .line 131
    :catch_16
    move-exception v0

    .line 132
    .local v0, "cause":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    if-eqz v1, :cond_22

    .line 133
    iget-object v1, p0, Lorg/simpleframework/http/core/CloseProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v2, p0, Lorg/simpleframework/http/core/CloseProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Monitor;->error(Lorg/simpleframework/http/core/Sender;)V

    .line 135
    :cond_22
    new-instance v1, Lorg/simpleframework/http/core/ProducerException;

    const-string v2, "Error sending response"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/http/core/ProducerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .line 70
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/http/core/CloseProducer;->produce([BII)V

    .line 71
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
    .line 86
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-lez p3, :cond_9

    .line 89
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/CloseProducer;->produce(Ljava/nio/ByteBuffer;)V

    .line 91
    :cond_9
    return-void
.end method
