.class Lorg/simpleframework/transport/TransportSource;
.super Ljava/lang/Object;
.source "TransportSource.java"

# interfaces
.implements Lorg/simpleframework/transport/Source;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private closed:Z

.field private count:I

.field private transport:Lorg/simpleframework/transport/Transport;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Transport;)V
    .registers 3
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;

    .prologue
    .line 68
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/TransportSource;-><init>(Lorg/simpleframework/transport/Transport;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/transport/Transport;I)V
    .registers 4
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;
    .param p2, "size"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/TransportSource;->buffer:Ljava/nio/ByteBuffer;

    .line 82
    iput-object p1, p0, Lorg/simpleframework/transport/TransportSource;->transport:Lorg/simpleframework/transport/Transport;

    .line 83
    return-void
.end method

.method private peek()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    if-gtz v0, :cond_9

    .line 175
    iget-object v0, p0, Lorg/simpleframework/transport/TransportSource;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 177
    :cond_9
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    if-lez v0, :cond_12

    .line 178
    iget-object v0, p0, Lorg/simpleframework/transport/TransportSource;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 180
    :cond_12
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    iget-object v1, p0, Lorg/simpleframework/transport/TransportSource;->transport:Lorg/simpleframework/transport/Transport;

    iget-object v2, p0, Lorg/simpleframework/transport/TransportSource;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Lorg/simpleframework/transport/Transport;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    .line 182
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    if-lez v0, :cond_28

    .line 183
    iget-object v0, p0, Lorg/simpleframework/transport/TransportSource;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 185
    :cond_28
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    if-gez v0, :cond_2f

    .line 186
    invoke-virtual {p0}, Lorg/simpleframework/transport/TransportSource;->close()V

    .line 188
    :cond_2f
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    return v0
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
    .line 222
    iget-boolean v0, p0, Lorg/simpleframework/transport/TransportSource;->closed:Z

    if-nez v0, :cond_f

    .line 223
    iget-object v0, p0, Lorg/simpleframework/transport/TransportSource;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v0}, Lorg/simpleframework/transport/Transport;->close()V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/transport/TransportSource;->closed:Z

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    .line 227
    :cond_f
    return-void
.end method

.method public isOpen()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isReady()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/simpleframework/transport/TransportSource;->ready()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public read([B)I
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/transport/TransportSource;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget v1, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    if-gtz v1, :cond_7

    .line 136
    iget v1, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    .line 144
    :goto_6
    return v1

    .line 138
    :cond_7
    iget v1, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 140
    .local v0, "size":I
    if-lez v0, :cond_19

    .line 141
    iget-object v1, p0, Lorg/simpleframework/transport/TransportSource;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 142
    iget v1, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    .line 144
    :cond_19
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_6
.end method

.method public ready()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    if-gez v0, :cond_7

    .line 157
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    .line 162
    :goto_6
    return v0

    .line 159
    :cond_7
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    if-lez v0, :cond_e

    .line 160
    iget v0, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    goto :goto_6

    .line 162
    :cond_e
    invoke-direct {p0}, Lorg/simpleframework/transport/TransportSource;->peek()I

    move-result v0

    goto :goto_6
.end method

.method public reset(I)I
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v1, p0, Lorg/simpleframework/transport/TransportSource;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 204
    .local v0, "mark":I
    if-le p1, v0, :cond_9

    .line 205
    move p1, v0

    .line 207
    :cond_9
    if-lez v0, :cond_17

    .line 208
    iget-object v1, p0, Lorg/simpleframework/transport/TransportSource;->buffer:Ljava/nio/ByteBuffer;

    sub-int v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 209
    iget v1, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/simpleframework/transport/TransportSource;->count:I

    .line 211
    :cond_17
    return p1
.end method
