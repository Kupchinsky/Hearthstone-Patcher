.class public Lorg/simpleframework/transport/TransportCursor;
.super Ljava/lang/Object;
.source "TransportCursor.java"

# interfaces
.implements Lorg/simpleframework/transport/Cursor;


# instance fields
.field private buffer:[B

.field private count:I

.field private limit:I

.field private mark:I

.field private pos:I

.field private source:Lorg/simpleframework/transport/Source;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Transport;)V
    .registers 3
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;

    .prologue
    .line 76
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/TransportCursor;-><init>(Lorg/simpleframework/transport/Transport;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/transport/Transport;I)V
    .registers 4
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;
    .param p2, "size"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lorg/simpleframework/transport/TransportSource;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/transport/TransportSource;-><init>(Lorg/simpleframework/transport/Transport;I)V

    iput-object v0, p0, Lorg/simpleframework/transport/TransportCursor;->source:Lorg/simpleframework/transport/Source;

    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/simpleframework/transport/TransportCursor;->buffer:[B

    .line 91
    iput p2, p0, Lorg/simpleframework/transport/TransportCursor;->limit:I

    .line 92
    return-void
.end method

.method private expand(I)V
    .registers 8
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget v3, p0, Lorg/simpleframework/transport/TransportCursor;->limit:I

    if-le p1, v3, :cond_c

    .line 223
    new-instance v3, Lorg/simpleframework/transport/TransportException;

    const-string v4, "Capacity limit exceeded"

    invoke-direct {v3, v4}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_c
    new-array v2, p1, [B

    .line 226
    .local v2, "temp":[B
    iget v3, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    sub-int v1, p1, v3

    .line 227
    .local v1, "start":I
    iget v3, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    iget v4, p0, Lorg/simpleframework/transport/TransportCursor;->mark:I

    sub-int v0, v3, v4

    .line 229
    .local v0, "shift":I
    iget v3, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    if-lez v3, :cond_25

    .line 230
    iget-object v3, p0, Lorg/simpleframework/transport/TransportCursor;->buffer:[B

    iget v4, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    iget v5, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    :cond_25
    iget v3, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    sub-int v3, p1, v3

    iput v3, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    .line 233
    iget v3, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/simpleframework/transport/TransportCursor;->mark:I

    .line 234
    iput-object v2, p0, Lorg/simpleframework/transport/TransportCursor;->buffer:[B

    .line 235
    return-void
.end method


# virtual methods
.method public isOpen()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/simpleframework/transport/TransportCursor;->source:Lorg/simpleframework/transport/Source;

    invoke-interface {v0}, Lorg/simpleframework/transport/Source;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/simpleframework/transport/TransportCursor;->ready()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public push([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/transport/TransportCursor;->push([BII)V

    .line 185
    return-void
.end method

.method public push([BII)V
    .registers 7
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v2, p0, Lorg/simpleframework/transport/TransportCursor;->buffer:[B

    array-length v0, v2

    .line 201
    .local v0, "size":I
    iget v2, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    add-int/2addr v2, p3

    if-ge v0, v2, :cond_e

    .line 202
    iget v2, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    add-int/2addr v2, p3

    invoke-direct {p0, v2}, Lorg/simpleframework/transport/TransportCursor;->expand(I)V

    .line 204
    :cond_e
    iget v2, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    sub-int v1, v2, p3

    .line 206
    .local v1, "start":I
    if-lez p3, :cond_22

    .line 207
    iget-object v2, p0, Lorg/simpleframework/transport/TransportCursor;->buffer:[B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iput v1, p0, Lorg/simpleframework/transport/TransportCursor;->mark:I

    .line 209
    iput v1, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    .line 210
    iget v2, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    .line 212
    :cond_22
    return-void
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
    .line 143
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/transport/TransportCursor;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 7
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget v1, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    if-gtz v1, :cond_f

    .line 160
    iget v1, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    iput v1, p0, Lorg/simpleframework/transport/TransportCursor;->mark:I

    .line 161
    iget-object v1, p0, Lorg/simpleframework/transport/TransportCursor;->source:Lorg/simpleframework/transport/Source;

    invoke-interface {v1, p1, p2, p3}, Lorg/simpleframework/transport/Source;->read([BII)I

    move-result v0

    .line 171
    :cond_e
    :goto_e
    return v0

    .line 163
    :cond_f
    iget v1, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 165
    .local v0, "size":I
    if-lez v0, :cond_e

    .line 166
    iget-object v1, p0, Lorg/simpleframework/transport/TransportCursor;->buffer:[B

    iget v2, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget v1, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    iput v1, p0, Lorg/simpleframework/transport/TransportCursor;->mark:I

    .line 168
    iget v1, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    .line 169
    iget v1, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    goto :goto_e
.end method

.method public ready()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget v0, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    if-lez v0, :cond_7

    .line 127
    iget v0, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    .line 129
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lorg/simpleframework/transport/TransportCursor;->source:Lorg/simpleframework/transport/Source;

    invoke-interface {v0}, Lorg/simpleframework/transport/Source;->ready()I

    move-result v0

    goto :goto_6
.end method

.method public reset(I)I
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lorg/simpleframework/transport/TransportCursor;->mark:I

    iget v1, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    if-ne v0, v1, :cond_d

    .line 249
    iget-object v0, p0, Lorg/simpleframework/transport/TransportCursor;->source:Lorg/simpleframework/transport/Source;

    invoke-interface {v0, p1}, Lorg/simpleframework/transport/Source;->reset(I)I

    move-result v0

    .line 258
    :goto_c
    return v0

    .line 251
    :cond_d
    iget v0, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    sub-int/2addr v0, p1

    iget v1, p0, Lorg/simpleframework/transport/TransportCursor;->mark:I

    if-ge v0, v1, :cond_1a

    .line 252
    iget v0, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    iget v1, p0, Lorg/simpleframework/transport/TransportCursor;->mark:I

    sub-int p1, v0, v1

    .line 254
    :cond_1a
    if-lez p1, :cond_26

    .line 255
    iget v0, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/simpleframework/transport/TransportCursor;->count:I

    .line 256
    iget v0, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/simpleframework/transport/TransportCursor;->pos:I

    :cond_26
    move v0, p1

    .line 258
    goto :goto_c
.end method
