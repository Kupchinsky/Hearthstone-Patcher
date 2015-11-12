.class Lorg/simpleframework/transport/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"

# interfaces
.implements Lorg/simpleframework/transport/Negotiation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/transport/Handshake$1;,
        Lorg/simpleframework/transport/Handshake$Server;,
        Lorg/simpleframework/transport/Handshake$Client;,
        Lorg/simpleframework/transport/Handshake$Done;
    }
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;

.field private final empty:Ljava/nio/ByteBuffer;

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private final input:Ljava/nio/ByteBuffer;

.field private final negotiator:Lorg/simpleframework/transport/Negotiator;

.field private final output:Ljava/nio/ByteBuffer;

.field private final transport:Lorg/simpleframework/transport/Transport;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Transport;Lorg/simpleframework/transport/Negotiator;)V
    .registers 4
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;
    .param p2, "negotiator"    # Lorg/simpleframework/transport/Negotiator;

    .prologue
    .line 98
    const/16 v0, 0x5000

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/transport/Handshake;-><init>(Lorg/simpleframework/transport/Transport;Lorg/simpleframework/transport/Negotiator;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/transport/Transport;Lorg/simpleframework/transport/Negotiator;I)V
    .registers 5
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;
    .param p2, "negotiator"    # Lorg/simpleframework/transport/Negotiator;
    .param p3, "size"    # I

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/Handshake;->output:Ljava/nio/ByteBuffer;

    .line 113
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/Handshake;->input:Ljava/nio/ByteBuffer;

    .line 114
    invoke-interface {p1}, Lorg/simpleframework/transport/Transport;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/Handshake;->channel:Ljava/nio/channels/SocketChannel;

    .line 115
    invoke-interface {p1}, Lorg/simpleframework/transport/Transport;->getEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/Handshake;->engine:Ljavax/net/ssl/SSLEngine;

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/Handshake;->empty:Ljava/nio/ByteBuffer;

    .line 117
    iput-object p2, p0, Lorg/simpleframework/transport/Handshake;->negotiator:Lorg/simpleframework/transport/Negotiator;

    .line 118
    iput-object p1, p0, Lorg/simpleframework/transport/Handshake;->transport:Lorg/simpleframework/transport/Transport;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lorg/simpleframework/transport/Handshake;)Lorg/simpleframework/transport/Negotiator;
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/transport/Handshake;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/simpleframework/transport/Handshake;->negotiator:Lorg/simpleframework/transport/Negotiator;

    return-object v0
.end method

.method private begin()V
    .registers 2

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Lorg/simpleframework/transport/Handshake;->resume()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 175
    :goto_3
    return-void

    .line 172
    :catch_4
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_3
.end method

.method private exchange()Lorg/simpleframework/transport/Status;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v1, p0, Lorg/simpleframework/transport/Handshake;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 231
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v1, Lorg/simpleframework/transport/Handshake$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    .line 238
    sget-object v1, Lorg/simpleframework/transport/Status;->DONE:Lorg/simpleframework/transport/Status;

    :goto_13
    return-object v1

    .line 233
    :pswitch_14
    invoke-direct {p0}, Lorg/simpleframework/transport/Handshake;->write()Lorg/simpleframework/transport/Status;

    move-result-object v1

    goto :goto_13

    .line 236
    :pswitch_19
    invoke-direct {p0}, Lorg/simpleframework/transport/Handshake;->read()Lorg/simpleframework/transport/Status;

    move-result-object v1

    goto :goto_13

    .line 231
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method private execute()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    :goto_0
    iget-object v1, p0, Lorg/simpleframework/transport/Handshake;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 338
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_9

    .line 343
    return-void

    .line 341
    :cond_9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private process()Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Lorg/simpleframework/transport/Handshake;->exchange()Lorg/simpleframework/transport/Status;

    move-result-object v0

    .line 208
    .local v0, "require":Lorg/simpleframework/transport/Status;
    sget-object v1, Lorg/simpleframework/transport/Status;->CLIENT:Lorg/simpleframework/transport/Status;

    if-ne v0, v1, :cond_e

    .line 209
    new-instance v1, Lorg/simpleframework/transport/Handshake$Client;

    invoke-direct {v1, p0, p0}, Lorg/simpleframework/transport/Handshake$Client;-><init>(Lorg/simpleframework/transport/Handshake;Lorg/simpleframework/transport/Negotiation;)V

    .line 214
    :goto_d
    return-object v1

    .line 211
    :cond_e
    sget-object v1, Lorg/simpleframework/transport/Status;->SERVER:Lorg/simpleframework/transport/Status;

    if-ne v0, v1, :cond_18

    .line 212
    new-instance v1, Lorg/simpleframework/transport/Handshake$Server;

    invoke-direct {v1, p0, p0}, Lorg/simpleframework/transport/Handshake$Server;-><init>(Lorg/simpleframework/transport/Handshake;Lorg/simpleframework/transport/Negotiation;)V

    goto :goto_d

    .line 214
    :cond_18
    new-instance v1, Lorg/simpleframework/transport/Handshake$Done;

    invoke-direct {v1, p0, p0}, Lorg/simpleframework/transport/Handshake$Done;-><init>(Lorg/simpleframework/transport/Handshake;Lorg/simpleframework/transport/Negotiation;)V

    goto :goto_d
.end method

.method private read()Lorg/simpleframework/transport/Status;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/simpleframework/transport/Handshake;->read(I)Lorg/simpleframework/transport/Status;

    move-result-object v0

    return-object v0
.end method

.method private read(I)Lorg/simpleframework/transport/Status;
    .registers 7
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    :goto_0
    if-lez p1, :cond_2d

    .line 267
    iget-object v2, p0, Lorg/simpleframework/transport/Handshake;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/simpleframework/transport/Handshake;->input:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/simpleframework/transport/Handshake;->output:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 268
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 270
    .local v1, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v2, Lorg/simpleframework/transport/Handshake$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_30

    goto :goto_0

    .line 274
    :pswitch_1c
    sget-object v2, Lorg/simpleframework/transport/Status;->SERVER:Lorg/simpleframework/transport/Status;

    .line 282
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v1    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_1e
    return-object v2

    .line 272
    .restart local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v1    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :pswitch_1f
    sget-object v2, Lorg/simpleframework/transport/Status;->DONE:Lorg/simpleframework/transport/Status;

    goto :goto_1e

    .line 277
    :pswitch_22
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lorg/simpleframework/transport/Handshake;->read(I)Lorg/simpleframework/transport/Status;

    move-result-object v2

    goto :goto_1e

    .line 279
    :pswitch_29
    invoke-direct {p0}, Lorg/simpleframework/transport/Handshake;->execute()V

    goto :goto_0

    .line 282
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v1    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_2d
    sget-object v2, Lorg/simpleframework/transport/Status;->CLIENT:Lorg/simpleframework/transport/Status;

    goto :goto_1e

    .line 270
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method private write()Lorg/simpleframework/transport/Status;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/simpleframework/transport/Handshake;->write(I)Lorg/simpleframework/transport/Status;

    move-result-object v0

    return-object v0
.end method

.method private write(I)Lorg/simpleframework/transport/Status;
    .registers 7
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    :goto_0
    if-lez p1, :cond_2a

    .line 311
    iget-object v2, p0, Lorg/simpleframework/transport/Handshake;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/simpleframework/transport/Handshake;->empty:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/simpleframework/transport/Handshake;->output:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 312
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 314
    .local v1, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v2, Lorg/simpleframework/transport/Handshake$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2e

    goto :goto_0

    .line 320
    :pswitch_1c
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lorg/simpleframework/transport/Handshake;->write(I)Lorg/simpleframework/transport/Status;

    move-result-object v2

    .line 325
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v1    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_22
    return-object v2

    .line 318
    .restart local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v1    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :pswitch_23
    sget-object v2, Lorg/simpleframework/transport/Status;->SERVER:Lorg/simpleframework/transport/Status;

    goto :goto_22

    .line 322
    :pswitch_26
    invoke-direct {p0}, Lorg/simpleframework/transport/Handshake;->execute()V

    goto :goto_0

    .line 325
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v1    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_2a
    sget-object v2, Lorg/simpleframework/transport/Status;->SERVER:Lorg/simpleframework/transport/Status;

    goto :goto_22

    .line 314
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/transport/Handshake;->transport:Lorg/simpleframework/transport/Transport;

    invoke-interface {v1}, Lorg/simpleframework/transport/Transport;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 160
    :goto_5
    return-void

    .line 157
    :catch_6
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_5
.end method

.method public commit()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Lorg/simpleframework/transport/SecureTransport;

    iget-object v1, p0, Lorg/simpleframework/transport/Handshake;->transport:Lorg/simpleframework/transport/Transport;

    iget-object v2, p0, Lorg/simpleframework/transport/Handshake;->output:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/simpleframework/transport/Handshake;->input:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/transport/SecureTransport;-><init>(Lorg/simpleframework/transport/Transport;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 410
    .local v0, "secure":Lorg/simpleframework/transport/Transport;
    iget-object v1, p0, Lorg/simpleframework/transport/Handshake;->negotiator:Lorg/simpleframework/transport/Negotiator;

    if-eqz v1, :cond_14

    .line 411
    iget-object v1, p0, Lorg/simpleframework/transport/Handshake;->negotiator:Lorg/simpleframework/transport/Negotiator;

    invoke-interface {v1, v0}, Lorg/simpleframework/transport/Negotiator;->process(Lorg/simpleframework/transport/Transport;)V

    .line 413
    :cond_14
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/simpleframework/transport/Handshake;->channel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public receive()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v2, p0, Lorg/simpleframework/transport/Handshake;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 356
    .local v0, "count":I
    if-lez v0, :cond_d

    .line 357
    iget-object v2, p0, Lorg/simpleframework/transport/Handshake;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 359
    :cond_d
    iget-object v2, p0, Lorg/simpleframework/transport/Handshake;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/simpleframework/transport/Handshake;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 361
    .local v1, "size":I
    if-gez v1, :cond_1f

    .line 362
    new-instance v2, Lorg/simpleframework/transport/TransportException;

    const-string v3, "Client closed connection"

    invoke-direct {v2, v3}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_1f
    if-lez v0, :cond_26

    .line 365
    iget-object v2, p0, Lorg/simpleframework/transport/Handshake;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 367
    :cond_26
    if-lez v1, :cond_2a

    const/4 v2, 0x1

    :goto_29
    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_29
.end method

.method public resume()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/simpleframework/transport/Handshake;->process()Ljava/lang/Runnable;

    move-result-object v0

    .line 189
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_9

    .line 190
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 192
    :cond_9
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lorg/simpleframework/transport/Handshake;->engine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_f

    .line 141
    iget-object v0, p0, Lorg/simpleframework/transport/Handshake;->engine:Ljavax/net/ssl/SSLEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 142
    iget-object v0, p0, Lorg/simpleframework/transport/Handshake;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 144
    :cond_f
    invoke-direct {p0}, Lorg/simpleframework/transport/Handshake;->begin()V

    .line 146
    return-void
.end method

.method public send()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v3, p0, Lorg/simpleframework/transport/Handshake;->output:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 382
    .local v1, "require":I
    const/4 v0, 0x0

    .line 384
    .local v0, "count":I
    if-lez v1, :cond_e

    .line 385
    iget-object v3, p0, Lorg/simpleframework/transport/Handshake;->output:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 387
    :cond_e
    :goto_e
    if-ge v0, v1, :cond_1a

    .line 388
    iget-object v3, p0, Lorg/simpleframework/transport/Handshake;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lorg/simpleframework/transport/Handshake;->output:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 390
    .local v2, "size":I
    if-gtz v2, :cond_25

    .line 395
    .end local v2    # "size":I
    :cond_1a
    if-lez v1, :cond_21

    .line 396
    iget-object v3, p0, Lorg/simpleframework/transport/Handshake;->output:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 398
    :cond_21
    if-ne v0, v1, :cond_27

    const/4 v3, 0x1

    :goto_24
    return v3

    .line 393
    .restart local v2    # "size":I
    :cond_25
    add-int/2addr v0, v2

    .line 394
    goto :goto_e

    .line 398
    .end local v2    # "size":I
    :cond_27
    const/4 v3, 0x0

    goto :goto_24
.end method
