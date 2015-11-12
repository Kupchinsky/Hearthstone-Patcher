.class Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;
.super Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;
.source "PeerExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/peer/PeerExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;


# direct methods
.method private constructor <init>(Lcom/turn/ttorrent/client/peer/PeerExchange;)V
    .registers 3

    .prologue
    .line 381
    iput-object p1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;-><init>(Lcom/turn/ttorrent/client/peer/PeerExchange;Lcom/turn/ttorrent/client/peer/PeerExchange$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/turn/ttorrent/client/peer/PeerExchange;Lcom/turn/ttorrent/client/peer/PeerExchange$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/turn/ttorrent/client/peer/PeerExchange;
    .param p2, "x1"    # Lcom/turn/ttorrent/client/peer/PeerExchange$1;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;-><init>(Lcom/turn/ttorrent/client/peer/PeerExchange;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 388
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->stop:Z
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$600(Lcom/turn/ttorrent/client/peer/PeerExchange;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->stop:Z
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$600(Lcom/turn/ttorrent/client/peer/PeerExchange;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->sendQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$900(Lcom/turn/ttorrent/client/peer/PeerExchange;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_86

    move-result v1

    if-lez v1, :cond_36

    .line 391
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->sendQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$900(Lcom/turn/ttorrent/client/peer/PeerExchange;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const-wide/16 v2, 0x2

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v9}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/turn/ttorrent/common/protocol/PeerMessage;

    .line 395
    .local v6, "message":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    if-nez v6, :cond_3b

    .line 396
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->stop:Z
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$600(Lcom/turn/ttorrent/client/peer/PeerExchange;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 431
    .end local v6    # "message":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    :cond_36
    :goto_36
    return-void

    .line 400
    .restart local v6    # "message":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    :cond_37
    invoke-static {}, Lcom/turn/ttorrent/common/protocol/PeerMessage$KeepAliveMessage;->craft()Lcom/turn/ttorrent/common/protocol/PeerMessage$KeepAliveMessage;

    move-result-object v6

    .line 403
    :cond_3b
    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Sending {} to {}"

    iget-object v3, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-static {v3}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$300(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/peer/SharingPeer;

    move-result-object v3

    invoke-interface {v1, v2, v6, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 405
    invoke-virtual {v6}, Lcom/turn/ttorrent/common/protocol/PeerMessage;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 406
    .local v0, "data":Ljava/nio/ByteBuffer;
    const-wide/16 v4, 0x0

    .line 407
    .local v4, "size":J
    :cond_50
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->stop:Z
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$600(Lcom/turn/ttorrent/client/peer/PeerExchange;)Z

    move-result v1

    if-nez v1, :cond_76

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 408
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->channel:Ljava/nio/channels/SocketChannel;
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$500(Lcom/turn/ttorrent/client/peer/PeerExchange;)Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 409
    .local v8, "written":I
    int-to-long v2, v8

    add-long/2addr v4, v2

    .line 410
    if-gez v8, :cond_50

    .line 411
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Reached end of stream while writing"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    .end local v4    # "size":J
    .end local v6    # "message":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    .end local v8    # "written":I
    :catch_74
    move-exception v1

    goto :goto_0

    .line 417
    .restart local v0    # "data":Ljava/nio/ByteBuffer;
    .restart local v4    # "size":J
    .restart local v6    # "message":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    :cond_76
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$700(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/SharedTorrent;->getMaxUploadRate()D

    move-result-wide v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->rateLimit(DJLcom/turn/ttorrent/common/protocol/PeerMessage;)V
    :try_end_84
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_84} :catch_74
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_84} :catch_86

    goto/16 :goto_0

    .line 423
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    .end local v4    # "size":J
    .end local v6    # "message":Lcom/turn/ttorrent/common/protocol/PeerMessage;
    :catch_86
    move-exception v7

    .line 424
    .local v7, "ioe":Ljava/io/IOException;
    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Could not send message to {}: {}"

    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$300(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/peer/SharingPeer;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ab

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_9d
    invoke-interface {v2, v3, v9, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    iget-object v1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$OutgoingThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    # getter for: Lcom/turn/ttorrent/client/peer/PeerExchange;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;
    invoke-static {v1}, Lcom/turn/ttorrent/client/peer/PeerExchange;->access$300(Lcom/turn/ttorrent/client/peer/PeerExchange;)Lcom/turn/ttorrent/client/peer/SharingPeer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/turn/ttorrent/client/peer/SharingPeer;->unbind(Z)V

    goto :goto_36

    .line 424
    :cond_ab
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_9d
.end method
