.class Lorg/simpleframework/transport/SecureTransport;
.super Ljava/lang/Object;
.source "SecureTransport.java"

# interfaces
.implements Lorg/simpleframework/transport/Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/transport/SecureTransport$1;
    }
.end annotation


# instance fields
.field private closed:Z

.field private engine:Ljavax/net/ssl/SSLEngine;

.field private finished:Z

.field private input:Ljava/nio/ByteBuffer;

.field private output:Ljava/nio/ByteBuffer;

.field private swap:Ljava/nio/ByteBuffer;

.field private transport:Lorg/simpleframework/transport/Transport;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Transport;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;
    .param p2, "input"    # Ljava/nio/ByteBuffer;
    .param p3, "swap"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 87
    const/16 v0, 0x5000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/transport/SecureTransport;-><init>(Lorg/simpleframework/transport/Transport;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/transport/Transport;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .registers 6
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;
    .param p2, "input"    # Ljava/nio/ByteBuffer;
    .param p3, "swap"    # Ljava/nio/ByteBuffer;
    .param p4, "size"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/SecureTransport;->output:Ljava/nio/ByteBuffer;

    .line 103
    invoke-interface {p1}, Lorg/simpleframework/transport/Transport;->getEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/SecureTransport;->engine:Ljavax/net/ssl/SSLEngine;

    .line 104
    iput-object p1, p0, Lorg/simpleframework/transport/SecureTransport;->transport:Lorg/simpleframework/transport/Transport;

    .line 105
    iput-object p2, p0, Lorg/simpleframework/transport/SecureTransport;->input:Ljava/nio/ByteBuffer;

    .line 106
    iput-object p3, p0, Lorg/simpleframework/transport/SecureTransport;->swap:Ljava/nio/ByteBuffer;

    .line 107
    return-void
.end method

.method private append(Ljava/nio/ByteBuffer;I)I
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v3, p0, Lorg/simpleframework/transport/SecureTransport;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 265
    .local v1, "segment":Ljava/nio/ByteBuffer;
    iget-boolean v3, p0, Lorg/simpleframework/transport/SecureTransport;->closed:Z

    if-eqz v3, :cond_12

    .line 266
    new-instance v3, Lorg/simpleframework/transport/TransportException;

    const-string v4, "Transport is closed"

    invoke-direct {v3, v4}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :cond_12
    iget-object v3, p0, Lorg/simpleframework/transport/SecureTransport;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 269
    .local v0, "mark":I
    add-int v2, v0, p2

    .line 271
    .local v2, "size":I
    if-lez p2, :cond_27

    .line 272
    iget-object v3, p0, Lorg/simpleframework/transport/SecureTransport;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 274
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 276
    :cond_27
    return p2
.end method

.method private fill(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 219
    .local v1, "space":I
    iget-object v2, p0, Lorg/simpleframework/transport/SecureTransport;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 221
    .local v0, "count":I
    if-lez v0, :cond_f

    .line 222
    if-le v0, v1, :cond_f

    .line 223
    move v0, v1

    .line 226
    :cond_f
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/SecureTransport;->fill(Ljava/nio/ByteBuffer;I)I

    move-result v2

    return v2
.end method

.method private fill(Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lorg/simpleframework/transport/SecureTransport;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 244
    if-lez p2, :cond_b

    .line 245
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/transport/SecureTransport;->append(Ljava/nio/ByteBuffer;I)I

    move-result p2

    .line 247
    :cond_b
    iget-object v0, p0, Lorg/simpleframework/transport/SecureTransport;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 248
    return p2
.end method

.method private process(Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v2, p0, Lorg/simpleframework/transport/SecureTransport;->swap:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 188
    .local v0, "size":I
    if-ltz v0, :cond_d

    .line 189
    iget-object v2, p0, Lorg/simpleframework/transport/SecureTransport;->swap:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 191
    :cond_d
    iget-object v2, p0, Lorg/simpleframework/transport/SecureTransport;->swap:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 193
    .local v1, "space":I
    if-lez v1, :cond_22

    .line 194
    iget-object v2, p0, Lorg/simpleframework/transport/SecureTransport;->transport:Lorg/simpleframework/transport/Transport;

    iget-object v3, p0, Lorg/simpleframework/transport/SecureTransport;->swap:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3}, Lorg/simpleframework/transport/Transport;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 196
    if-gez v0, :cond_22

    .line 197
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/simpleframework/transport/SecureTransport;->finished:Z

    .line 200
    :cond_22
    if-gtz v0, :cond_26

    if-lez v1, :cond_2e

    .line 201
    :cond_26
    iget-object v2, p0, Lorg/simpleframework/transport/SecureTransport;->swap:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 202
    invoke-direct {p0}, Lorg/simpleframework/transport/SecureTransport;->receive()V

    .line 204
    :cond_2e
    invoke-direct {p0, p1}, Lorg/simpleframework/transport/SecureTransport;->fill(Ljava/nio/ByteBuffer;)I

    move-result v2

    return v2
.end method

.method private receive()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v3, p0, Lorg/simpleframework/transport/SecureTransport;->swap:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 290
    .local v0, "count":I
    :cond_6
    if-lez v0, :cond_29

    .line 291
    iget-object v3, p0, Lorg/simpleframework/transport/SecureTransport;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lorg/simpleframework/transport/SecureTransport;->swap:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/simpleframework/transport/SecureTransport;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 292
    .local v1, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    .line 294
    .local v2, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    sget-object v3, Lorg/simpleframework/transport/SecureTransport$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_44

    .line 301
    iget-object v3, p0, Lorg/simpleframework/transport/SecureTransport;->swap:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 303
    if-gtz v0, :cond_6

    .line 307
    .end local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v2    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :cond_29
    :pswitch_29
    return-void

    .line 299
    .restart local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v2    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :pswitch_2a
    new-instance v3, Lorg/simpleframework/transport/TransportException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 294
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method private send(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v2, p0, Lorg/simpleframework/transport/SecureTransport;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/simpleframework/transport/SecureTransport;->output:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 348
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 350
    .local v1, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    sget-object v2, Lorg/simpleframework/transport/SecureTransport$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3e

    .line 356
    iget-object v2, p0, Lorg/simpleframework/transport/SecureTransport;->output:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 358
    iget-object v2, p0, Lorg/simpleframework/transport/SecureTransport;->transport:Lorg/simpleframework/transport/Transport;

    iget-object v3, p0, Lorg/simpleframework/transport/SecureTransport;->output:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3}, Lorg/simpleframework/transport/Transport;->write(Ljava/nio/ByteBuffer;)V

    .line 359
    return-void

    .line 354
    :pswitch_24
    new-instance v2, Lorg/simpleframework/transport/TransportException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
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
    .line 381
    iget-boolean v0, p0, Lorg/simpleframework/transport/SecureTransport;->closed:Z

    if-nez v0, :cond_c

    .line 382
    iget-object v0, p0, Lorg/simpleframework/transport/SecureTransport;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v0}, Lorg/simpleframework/transport/Transport;->close()V

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/transport/SecureTransport;->closed:Z

    .line 385
    :cond_c
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
    .line 368
    iget-boolean v0, p0, Lorg/simpleframework/transport/SecureTransport;->closed:Z

    if-eqz v0, :cond_c

    .line 369
    new-instance v0, Lorg/simpleframework/transport/TransportException;

    const-string v1, "Transport is closed"

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/transport/SecureTransport;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v0}, Lorg/simpleframework/transport/Transport;->flush()V

    .line 372
    return-void
.end method

.method public getAttributes()Ljava/util/Map;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/simpleframework/transport/SecureTransport;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v0}, Lorg/simpleframework/transport/Transport;->getAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/simpleframework/transport/SecureTransport;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v0}, Lorg/simpleframework/transport/Transport;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/simpleframework/transport/SecureTransport;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-boolean v1, p0, Lorg/simpleframework/transport/SecureTransport;->closed:Z

    if-eqz v1, :cond_c

    .line 161
    new-instance v1, Lorg/simpleframework/transport/TransportException;

    const-string v2, "Transport is closed"

    invoke-direct {v1, v2}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_c
    iget-boolean v1, p0, Lorg/simpleframework/transport/SecureTransport;->finished:Z

    if-eqz v1, :cond_12

    .line 164
    const/4 v0, -0x1

    .line 171
    :cond_11
    :goto_11
    return v0

    .line 166
    :cond_12
    invoke-direct {p0, p1}, Lorg/simpleframework/transport/SecureTransport;->fill(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 168
    .local v0, "count":I
    if-gtz v0, :cond_11

    .line 169
    invoke-direct {p0, p1}, Lorg/simpleframework/transport/SecureTransport;->process(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_11
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-boolean v5, p0, Lorg/simpleframework/transport/SecureTransport;->closed:Z

    if-eqz v5, :cond_c

    .line 319
    new-instance v5, Lorg/simpleframework/transport/TransportException;

    const-string v6, "Transport is closed"

    invoke-direct {v5, v6}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 321
    :cond_c
    iget-object v5, p0, Lorg/simpleframework/transport/SecureTransport;->output:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 322
    .local v0, "capacity":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 323
    .local v3, "ready":I
    move v1, v3

    .line 325
    .local v1, "length":I
    :goto_17
    if-lez v3, :cond_36

    .line 326
    div-int/lit8 v5, v0, 0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 327
    .local v4, "size":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 329
    .local v2, "mark":I
    mul-int/lit8 v5, v1, 0x2

    if-le v5, v0, :cond_2c

    .line 330
    add-int v5, v2, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 332
    :cond_2c
    invoke-direct {p0, p1}, Lorg/simpleframework/transport/SecureTransport;->send(Ljava/nio/ByteBuffer;)V

    .line 333
    iget-object v5, p0, Lorg/simpleframework/transport/SecureTransport;->output:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 334
    sub-int/2addr v3, v4

    .line 335
    goto :goto_17

    .line 336
    .end local v2    # "mark":I
    .end local v4    # "size":I
    :cond_36
    return-void
.end method
