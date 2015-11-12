.class Lorg/simpleframework/transport/Segment;
.super Ljava/lang/Object;
.source "Segment.java"

# interfaces
.implements Lorg/simpleframework/transport/Packet;


# instance fields
.field private final packet:Lorg/simpleframework/transport/Packet;

.field private final queue:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Packet;Ljava/util/Queue;)V
    .registers 3
    .param p1, "packet"    # Lorg/simpleframework/transport/Packet;
    .param p2, "queue"    # Ljava/util/Queue;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    .line 56
    iput-object p2, p0, Lorg/simpleframework/transport/Segment;->queue:Ljava/util/Queue;

    .line 57
    return-void
.end method


# virtual methods
.method public append(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0, p1}, Lorg/simpleframework/transport/Packet;->append(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public append(Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/transport/Packet;->append(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public capacity()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0}, Lorg/simpleframework/transport/Packet;->capacity()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Lorg/simpleframework/transport/Segment;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 249
    .local v0, "top":Ljava/lang/Object;
    iget-object v1, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    if-eq v0, v1, :cond_12

    .line 250
    new-instance v1, Lorg/simpleframework/transport/PacketException;

    const-string v2, "Close out of sequence"

    invoke-direct {v1, v2}, Lorg/simpleframework/transport/PacketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_12
    iget-object v1, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v1}, Lorg/simpleframework/transport/Packet;->close()V

    .line 253
    iget-object v1, p0, Lorg/simpleframework/transport/Segment;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lorg/simpleframework/transport/Packet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/simpleframework/transport/Segment;->compareTo(Lorg/simpleframework/transport/Packet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/simpleframework/transport/Packet;)I
    .registers 3
    .param p1, "other"    # Lorg/simpleframework/transport/Packet;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0, p1}, Lorg/simpleframework/transport/Packet;->compareTo(Lorg/simpleframework/transport/Packet;)I

    move-result v0

    return v0
.end method

.method public encode()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0}, Lorg/simpleframework/transport/Packet;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0, p1}, Lorg/simpleframework/transport/Packet;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extract()Lorg/simpleframework/transport/Packet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0}, Lorg/simpleframework/transport/Packet;->extract()Lorg/simpleframework/transport/Packet;

    move-result-object v0

    return-object v0
.end method

.method public isReference()Z
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0}, Lorg/simpleframework/transport/Packet;->isReference()Z

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0}, Lorg/simpleframework/transport/Packet;->length()I

    move-result v0

    return v0
.end method

.method public sequence()J
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0}, Lorg/simpleframework/transport/Packet;->sequence()J

    move-result-wide v0

    return-wide v0
.end method

.method public space()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0}, Lorg/simpleframework/transport/Packet;->space()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/channels/ByteChannel;)I
    .registers 3
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0, p1}, Lorg/simpleframework/transport/Packet;->write(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/channels/ByteChannel;I)I
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lorg/simpleframework/transport/Segment;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/transport/Packet;->write(Ljava/nio/channels/ByteChannel;I)I

    move-result v0

    return v0
.end method
