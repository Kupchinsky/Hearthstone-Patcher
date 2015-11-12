.class Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;
.super Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;
.source "PeerExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/peer/PeerExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;


# direct methods
.method private constructor <init>(Lcom/turn/ttorrent/client/peer/PeerExchange;)V
    .registers 3

    .prologue
    .line 264
    iput-object p1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;-><init>(Lcom/turn/ttorrent/client/peer/PeerExchange;Lcom/turn/ttorrent/client/peer/PeerExchange$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/turn/ttorrent/client/peer/PeerExchange;Lcom/turn/ttorrent/client/peer/PeerExchange$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/turn/ttorrent/client/peer/PeerExchange;
    .param p2, "x1"    # Lcom/turn/ttorrent/client/peer/PeerExchange$1;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;-><init>(Lcom/turn/ttorrent/client/peer/PeerExchange;)V

    return-void
.end method

.method private handleIOE(Ljava/io/IOException;)V
    .registers 6
    .param p1, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 298
    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Could not read message from {}: {}"

    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-static {v0}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$300(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/peer/SharingPeer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-static {v0}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$300(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/peer/SharingPeer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->unbind(Z)V

    .line 304
    return-void

    .line 298
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method private read(Ljava/nio/channels/Selector;Ljava/nio/ByteBuffer;)J
    .registers 11
    .param p1, "selector"    # Ljava/nio/channels/Selector;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->select()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_f

    .line 277
    :cond_c
    const-wide/16 v4, 0x0

    .line 294
    :cond_e
    return-wide v4

    .line 280
    :cond_f
    const-wide/16 v4, 0x0

    .line 281
    .local v4, "size":J
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 282
    .local v0, "it":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 284
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 285
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, p2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 286
    .local v2, "read":I
    if-gez v2, :cond_3f

    .line 287
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Unexpected end-of-stream while reading"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    :cond_3f
    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 291
    .end local v2    # "read":I
    :cond_41
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_19
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 308
    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 309
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v12, 0x0

    .line 312
    .local v12, "selector":Ljava/nio/channels/Selector;
    :try_start_7
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v12

    .line 313
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->channel:Ljava/nio/channels/SocketChannel;
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$500(Lcom/turn/ttorrent/client/peer/PeerExchange;)Ljava/nio/channels/SocketChannel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v12, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 315
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->stop:Z
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$600(Lcom/turn/ttorrent/client/peer/PeerExchange;)Z

    move-result v1

    if-nez v1, :cond_bb

    .line 316
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 317
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 321
    :goto_24
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->stop:Z
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$600(Lcom/turn/ttorrent/client/peer/PeerExchange;)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 322
    invoke-direct {p0, v12, v0}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->read(Ljava/nio/channels/Selector;Ljava/nio/ByteBuffer;)J
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_35} :catch_36
    .catchall {:try_start_7 .. :try_end_35} :catchall_b4

    goto :goto_24

    .line 351
    :catch_36
    move-exception v8

    .line 352
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_37
    invoke-direct {p0, v8}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->handleIOE(Ljava/io/IOException;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_b4

    .line 355
    if-eqz v12, :cond_3f

    .line 356
    :try_start_3c
    invoke-virtual {v12}, Ljava/nio/channels/Selector;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_c8

    .line 362
    .end local v8    # "ioe":Ljava/io/IOException;
    :cond_3f
    :goto_3f
    return-void

    .line 326
    :cond_40
    const/4 v1, 0x0

    :try_start_41
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    .line 327
    .local v11, "pstrlen":I
    add-int/lit8 v1, v11, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 329
    const-wide/16 v4, 0x0

    .line 330
    .local v4, "size":J
    :goto_4c
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->stop:Z
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$600(Lcom/turn/ttorrent/client/peer/PeerExchange;)Z

    move-result v1

    if-nez v1, :cond_60

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 331
    invoke-direct {p0, v12, v0}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->read(Ljava/nio/channels/Selector;Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v4, v2

    goto :goto_4c

    .line 334
    :cond_60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_63} :catch_36
    .catchall {:try_start_41 .. :try_end_63} :catchall_b4

    .line 337
    :try_start_63
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$700(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage;

    move-result-object v6

    .line 338
    .local v6, "message":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Received {} from {}"

    iget-object v3, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-static {v3}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$300(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/peer/SharingPeer;

    move-result-object v3

    invoke-interface {v1, v2, v6, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$700(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/SharedTorrent;->getMaxDownloadRate()D

    move-result-wide v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->rateLimit(DJLcom/turn/ttorrent/common/protocol/PeerMessage;)V

    .line 345
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->listeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$800(Lcom/turn/ttorrent/client/peer/PeerExchange;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_94
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/turn/ttorrent/client/peer/MessageListener;

    .line 346
    .local v9, "listener":Lcom/turn/ttorrent/client/peer/MessageListener;
    invoke-interface {v9, v6}, Lcom/turn/ttorrent/client/peer/MessageListener;->handleMessage(Lcom/turn/ttorrent/common/protocol/PeerMessage;)V
    :try_end_a3
    .catch Ljava/text/ParseException; {:try_start_63 .. :try_end_a3} :catch_a4
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_a3} :catch_36
    .catchall {:try_start_63 .. :try_end_a3} :catchall_b4

    goto :goto_94

    .line 347
    .end local v6    # "message":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "listener":Lcom/turn/ttorrent/client/peer/MessageListener;
    :catch_a4
    move-exception v10

    .line 348
    .local v10, "pe":Ljava/text/ParseException;
    :try_start_a5
    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "{}"

    invoke-virtual {v10}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b2} :catch_36
    .catchall {:try_start_a5 .. :try_end_b2} :catchall_b4

    goto/16 :goto_15

    .line 354
    .end local v4    # "size":J
    .end local v10    # "pe":Ljava/text/ParseException;
    .end local v11    # "pstrlen":I
    :catchall_b4
    move-exception v1

    .line 355
    if-eqz v12, :cond_ba

    .line 356
    :try_start_b7
    invoke-virtual {v12}, Ljava/nio/channels/Selector;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_ce

    .line 360
    :cond_ba
    :goto_ba
    throw v1

    .line 355
    :cond_bb
    if-eqz v12, :cond_3f

    .line 356
    :try_start_bd
    invoke-virtual {v12}, Ljava/nio/channels/Selector;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c2

    goto/16 :goto_3f

    .line 358
    :catch_c2
    move-exception v8

    .line 359
    .restart local v8    # "ioe":Ljava/io/IOException;
    invoke-direct {p0, v8}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->handleIOE(Ljava/io/IOException;)V

    goto/16 :goto_3f

    .line 358
    :catch_c8
    move-exception v8

    .line 359
    invoke-direct {p0, v8}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->handleIOE(Ljava/io/IOException;)V

    goto/16 :goto_3f

    .line 358
    .end local v8    # "ioe":Ljava/io/IOException;
    :catch_ce
    move-exception v8

    .line 359
    .restart local v8    # "ioe":Ljava/io/IOException;
    invoke-direct {p0, v8}, Lcom/turn/ttorrent/client/peer/PeerExchange$IncomingThread;->handleIOE(Ljava/io/IOException;)V

    goto :goto_ba
.end method
