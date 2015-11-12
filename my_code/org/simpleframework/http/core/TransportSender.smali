.class Lorg/simpleframework/http/core/TransportSender;
.super Ljava/lang/Object;
.source "TransportSender.java"

# interfaces
.implements Lorg/simpleframework/http/core/Sender;


# instance fields
.field private volatile closed:Z

.field private transport:Lorg/simpleframework/transport/Transport;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Transport;)V
    .registers 2
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/simpleframework/http/core/TransportSender;->transport:Lorg/simpleframework/transport/Transport;

    .line 58
    return-void
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
    .line 146
    iget-boolean v0, p0, Lorg/simpleframework/http/core/TransportSender;->closed:Z

    if-nez v0, :cond_c

    .line 147
    iget-object v0, p0, Lorg/simpleframework/http/core/TransportSender;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v0}, Lorg/simpleframework/transport/Transport;->close()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/http/core/TransportSender;->closed:Z

    .line 150
    :cond_c
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
    .line 136
    iget-object v0, p0, Lorg/simpleframework/http/core/TransportSender;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v0}, Lorg/simpleframework/transport/Transport;->flush()V

    .line 137
    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 100
    .local v0, "mark":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 102
    .local v1, "size":I
    if-le v0, v1, :cond_12

    .line 103
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Buffer position greater than limit"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_12
    const/4 v2, 0x0

    sub-int v3, v1, v0

    invoke-virtual {p0, p1, v2, v3}, Lorg/simpleframework/http/core/TransportSender;->send(Ljava/nio/ByteBuffer;II)V

    .line 106
    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;II)V
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
    .line 119
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 120
    .local v1, "mark":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 122
    .local v0, "limit":I
    sub-int v2, v0, v1

    if-le v2, p3, :cond_11

    .line 123
    add-int v2, v1, p3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 125
    :cond_11
    iget-object v2, p0, Lorg/simpleframework/http/core/TransportSender;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v2, p1}, Lorg/simpleframework/transport/Transport;->write(Ljava/nio/ByteBuffer;)V

    .line 126
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 127
    return-void
.end method

.method public send([B)V
    .registers 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/http/core/TransportSender;->send([BII)V

    .line 70
    return-void
.end method

.method public send([BII)V
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
    .line 83
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-lez p3, :cond_9

    .line 86
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/TransportSender;->send(Ljava/nio/ByteBuffer;)V

    .line 88
    :cond_9
    return-void
.end method
