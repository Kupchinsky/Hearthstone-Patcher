.class Lorg/simpleframework/transport/Appender;
.super Ljava/lang/Object;
.source "Appender.java"

# interfaces
.implements Lorg/simpleframework/transport/Packet;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private closed:Z

.field private manager:Lorg/simpleframework/transport/Recycler;

.field private sequence:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;J)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sequence"    # J

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/simpleframework/transport/Appender;-><init>(Ljava/nio/ByteBuffer;Lorg/simpleframework/transport/Recycler;J)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/simpleframework/transport/Recycler;J)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "manager"    # Lorg/simpleframework/transport/Recycler;
    .param p3, "sequence"    # J

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide p3, p0, Lorg/simpleframework/transport/Appender;->sequence:J

    .line 82
    iput-object p2, p0, Lorg/simpleframework/transport/Appender;->manager:Lorg/simpleframework/transport/Recycler;

    .line 83
    iput-object p1, p0, Lorg/simpleframework/transport/Appender;->buffer:Ljava/nio/ByteBuffer;

    .line 84
    return-void
.end method

.method private encode(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 6
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "segment"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 226
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 228
    .local v1, "text":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
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
    .line 339
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 340
    .local v1, "require":I
    const/4 v0, 0x0

    .line 342
    .local v0, "count":I
    :goto_5
    if-ge v0, v1, :cond_d

    .line 343
    invoke-interface {p1, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 345
    .local v2, "size":I
    if-gtz v2, :cond_13

    .line 350
    .end local v2    # "size":I
    :cond_d
    if-ltz v0, :cond_12

    .line 351
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 353
    :cond_12
    return v0

    .line 348
    .restart local v2    # "size":I
    :cond_13
    add-int/2addr v0, v2

    .line 349
    goto :goto_5
.end method


# virtual methods
.method public append(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 243
    .local v0, "require":I
    invoke-virtual {p0}, Lorg/simpleframework/transport/Appender;->space()I

    move-result v1

    .line 245
    .local v1, "space":I
    if-le v0, v1, :cond_b

    .line 246
    move v0, v1

    .line 248
    :cond_b
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/transport/Appender;->append(Ljava/nio/ByteBuffer;I)I

    move-result v2

    return v2
.end method

.method public append(Ljava/nio/ByteBuffer;I)I
    .registers 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 265
    .local v1, "segment":Ljava/nio/ByteBuffer;
    iget-boolean v3, p0, Lorg/simpleframework/transport/Appender;->closed:Z

    if-eqz v3, :cond_10

    .line 266
    new-instance v3, Lorg/simpleframework/transport/PacketException;

    const-string v4, "Packet has been closed"

    invoke-direct {v3, v4}, Lorg/simpleframework/transport/PacketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :cond_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 269
    .local v0, "mark":I
    add-int v2, v0, p2

    .line 271
    .local v2, "size":I
    if-lez p2, :cond_23

    .line 272
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 274
    iget-object v3, p0, Lorg/simpleframework/transport/Appender;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 276
    :cond_23
    return p2
.end method

.method public capacity()I
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/simpleframework/transport/Appender;->closed:Z

    if-eqz v0, :cond_6

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/simpleframework/transport/Appender;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    goto :goto_5
.end method

.method public close()V
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Lorg/simpleframework/transport/Appender;->manager:Lorg/simpleframework/transport/Recycler;

    if-eqz v0, :cond_b

    .line 366
    iget-object v0, p0, Lorg/simpleframework/transport/Appender;->manager:Lorg/simpleframework/transport/Recycler;

    iget-object v1, p0, Lorg/simpleframework/transport/Appender;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lorg/simpleframework/transport/Recycler;->recycle(Ljava/nio/ByteBuffer;)V

    .line 368
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/transport/Appender;->manager:Lorg/simpleframework/transport/Recycler;

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/transport/Appender;->closed:Z

    .line 370
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lorg/simpleframework/transport/Packet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/simpleframework/transport/Appender;->compareTo(Lorg/simpleframework/transport/Packet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/simpleframework/transport/Packet;)I
    .registers 6
    .param p1, "packet"    # Lorg/simpleframework/transport/Packet;

    .prologue
    .line 158
    invoke-interface {p1}, Lorg/simpleframework/transport/Packet;->sequence()J

    move-result-wide v0

    .line 160
    .local v0, "other":J
    iget-wide v2, p0, Lorg/simpleframework/transport/Appender;->sequence:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_c

    .line 161
    const/4 v2, -0x1

    .line 166
    :goto_b
    return v2

    .line 163
    :cond_c
    iget-wide v2, p0, Lorg/simpleframework/transport/Appender;->sequence:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_14

    .line 164
    const/4 v2, 0x1

    goto :goto_b

    .line 166
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
    .line 191
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Lorg/simpleframework/transport/Appender;->encode(Ljava/lang/String;)Ljava/lang/String;

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
    .line 205
    iget-object v1, p0, Lorg/simpleframework/transport/Appender;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    .local v0, "segment":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_b

    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 210
    :cond_b
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/Appender;->encode(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public extract()Lorg/simpleframework/transport/Packet;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    return-object p0
.end method

.method public isReference()Z
    .registers 2

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .registers 3

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/simpleframework/transport/Appender;->closed:Z

    if-eqz v0, :cond_6

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lorg/simpleframework/transport/Appender;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lorg/simpleframework/transport/Appender;->space()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_5
.end method

.method public sequence()J
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/simpleframework/transport/Appender;->sequence:J

    return-wide v0
.end method

.method public space()I
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/simpleframework/transport/Appender;->closed:Z

    if-eqz v0, :cond_6

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/simpleframework/transport/Appender;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 394
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lorg/simpleframework/transport/Appender;->sequence:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/transport/Appender;->buffer:Ljava/nio/ByteBuffer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/channels/ByteChannel;)I
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/simpleframework/transport/Appender;->length()I

    move-result v0

    .line 294
    .local v0, "size":I
    if-gtz v0, :cond_8

    .line 295
    const/4 v1, 0x0

    .line 297
    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/transport/Appender;->write(Ljava/nio/channels/ByteChannel;I)I

    move-result v1

    goto :goto_7
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
    .line 314
    iget-boolean v0, p0, Lorg/simpleframework/transport/Appender;->closed:Z

    if-eqz v0, :cond_c

    .line 315
    new-instance v0, Lorg/simpleframework/transport/PacketException;

    const-string v1, "Packet has been closed"

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/PacketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_c
    if-lez p2, :cond_1a

    .line 318
    iget-object v0, p0, Lorg/simpleframework/transport/Appender;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 322
    iget-object v0, p0, Lorg/simpleframework/transport/Appender;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/Appender;->write(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_19
    return v0

    .line 320
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
