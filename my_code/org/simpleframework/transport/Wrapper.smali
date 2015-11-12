.class Lorg/simpleframework/transport/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"

# interfaces
.implements Lorg/simpleframework/transport/Packet;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private closed:Z

.field private sequence:J

.field private shared:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;J)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sequence"    # J

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/transport/Wrapper;-><init>(Ljava/nio/ByteBuffer;JZ)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;JZ)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sequence"    # J
    .param p4, "shared"    # Z

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide p2, p0, Lorg/simpleframework/transport/Wrapper;->sequence:J

    .line 83
    iput-object p1, p0, Lorg/simpleframework/transport/Wrapper;->buffer:Ljava/nio/ByteBuffer;

    .line 84
    iput-boolean p4, p0, Lorg/simpleframework/transport/Wrapper;->shared:Z

    .line 85
    return-void
.end method

.method private encode(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 6
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 253
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 255
    .local v1, "text":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private extract(I)Lorg/simpleframework/transport/Packet;
    .registers 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 202
    .local v0, "data":Ljava/nio/ByteBuffer;
    if-lez p1, :cond_f

    .line 203
    iget-object v1, p0, Lorg/simpleframework/transport/Wrapper;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 204
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    :cond_f
    new-instance v1, Lorg/simpleframework/transport/Wrapper;

    iget-wide v2, p0, Lorg/simpleframework/transport/Wrapper;->sequence:J

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/simpleframework/transport/Wrapper;-><init>(Ljava/nio/ByteBuffer;JZ)V

    return-object v1
.end method

.method private write(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;
    .param p2, "segment"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 349
    .local v1, "require":I
    const/4 v0, 0x0

    .line 351
    .local v0, "count":I
    :goto_5
    if-ge v0, v1, :cond_d

    .line 352
    invoke-interface {p1, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 354
    .local v2, "size":I
    if-gtz v2, :cond_e

    .line 359
    .end local v2    # "size":I
    :cond_d
    return v0

    .line 357
    .restart local v2    # "size":I
    :cond_e
    add-int/2addr v0, v2

    .line 358
    goto :goto_5
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
    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/transport/Wrapper;->append(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public append(Ljava/nio/ByteBuffer;I)I
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    iget-boolean v0, p0, Lorg/simpleframework/transport/Wrapper;->closed:Z

    if-eqz v0, :cond_c

    .line 285
    new-instance v0, Lorg/simpleframework/transport/PacketException;

    const-string v1, "Packet is closed"

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/PacketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public capacity()I
    .registers 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/simpleframework/transport/Wrapper;->length()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/transport/Wrapper;->closed:Z

    .line 384
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lorg/simpleframework/transport/Packet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/simpleframework/transport/Wrapper;->compareTo(Lorg/simpleframework/transport/Packet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/simpleframework/transport/Packet;)I
    .registers 6
    .param p1, "packet"    # Lorg/simpleframework/transport/Packet;

    .prologue
    .line 156
    invoke-interface {p1}, Lorg/simpleframework/transport/Packet;->sequence()J

    move-result-wide v0

    .line 158
    .local v0, "other":J
    iget-wide v2, p0, Lorg/simpleframework/transport/Wrapper;->sequence:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_c

    .line 159
    const/4 v2, -0x1

    .line 164
    :goto_b
    return v2

    .line 161
    :cond_c
    iget-wide v2, p0, Lorg/simpleframework/transport/Wrapper;->sequence:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_14

    .line 162
    const/4 v2, 0x1

    goto :goto_b

    .line 164
    :cond_14
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public encode()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Lorg/simpleframework/transport/Wrapper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v1, p0, Lorg/simpleframework/transport/Wrapper;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 234
    .local v0, "segment":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_e

    .line 235
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 237
    :goto_d
    return-object v1

    :cond_e
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/Wrapper;->encode(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method public extract()Lorg/simpleframework/transport/Packet;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/simpleframework/transport/Wrapper;->length()I

    move-result v0

    .line 179
    .local v0, "length":I
    if-gtz v0, :cond_e

    .line 180
    new-instance v1, Lorg/simpleframework/transport/PacketException;

    const-string v2, "Buffer is empty"

    invoke-direct {v1, v2}, Lorg/simpleframework/transport/PacketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_e
    iget-boolean v1, p0, Lorg/simpleframework/transport/Wrapper;->shared:Z

    if-nez v1, :cond_13

    .line 185
    .end local p0    # "this":Lorg/simpleframework/transport/Wrapper;
    :goto_12
    return-object p0

    .restart local p0    # "this":Lorg/simpleframework/transport/Wrapper;
    :cond_13
    invoke-direct {p0, v0}, Lorg/simpleframework/transport/Wrapper;->extract(I)Lorg/simpleframework/transport/Packet;

    move-result-object p0

    goto :goto_12
.end method

.method public isReference()Z
    .registers 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lorg/simpleframework/transport/Wrapper;->shared:Z

    return v0
.end method

.method public length()I
    .registers 4

    .prologue
    .line 135
    iget-object v2, p0, Lorg/simpleframework/transport/Wrapper;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 136
    .local v1, "offset":I
    iget-object v2, p0, Lorg/simpleframework/transport/Wrapper;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 138
    .local v0, "limit":I
    iget-boolean v2, p0, Lorg/simpleframework/transport/Wrapper;->closed:Z

    if-eqz v2, :cond_12

    .line 139
    const/4 v2, 0x0

    .line 141
    :goto_11
    return v2

    :cond_12
    sub-int v2, v0, v1

    goto :goto_11
.end method

.method public sequence()J
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/simpleframework/transport/Wrapper;->sequence:J

    return-wide v0
.end method

.method public space()I
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 395
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lorg/simpleframework/transport/Wrapper;->sequence:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/transport/Wrapper;->buffer:Ljava/nio/ByteBuffer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/channels/ByteChannel;)I
    .registers 5
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/simpleframework/transport/Wrapper;->length()I

    move-result v0

    .line 305
    .local v0, "size":I
    iget-boolean v1, p0, Lorg/simpleframework/transport/Wrapper;->closed:Z

    if-eqz v1, :cond_10

    .line 306
    new-instance v1, Lorg/simpleframework/transport/PacketException;

    const-string v2, "Packet is closed"

    invoke-direct {v1, v2}, Lorg/simpleframework/transport/PacketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_10
    if-gtz v0, :cond_14

    .line 309
    const/4 v1, 0x0

    .line 311
    :goto_13
    return v1

    :cond_14
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/transport/Wrapper;->write(Ljava/nio/channels/ByteChannel;I)I

    move-result v1

    goto :goto_13
.end method

.method public write(Ljava/nio/channels/ByteChannel;I)I
    .registers 5
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    iget-boolean v0, p0, Lorg/simpleframework/transport/Wrapper;->closed:Z

    if-eqz v0, :cond_c

    .line 329
    new-instance v0, Lorg/simpleframework/transport/PacketException;

    const-string v1, "Packet is closed"

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/PacketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/transport/Wrapper;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/Wrapper;->write(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
