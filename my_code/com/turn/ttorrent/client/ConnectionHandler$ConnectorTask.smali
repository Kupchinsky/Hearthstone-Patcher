.class Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;
.super Ljava/lang/Object;
.source "ConnectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/ConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectorTask"
.end annotation


# instance fields
.field private final handler:Lcom/turn/ttorrent/client/ConnectionHandler;

.field private final peer:Lcom/turn/ttorrent/client/peer/SharingPeer;


# direct methods
.method private constructor <init>(Lcom/turn/ttorrent/client/ConnectionHandler;Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    .registers 3
    .param p1, "handler"    # Lcom/turn/ttorrent/client/ConnectionHandler;
    .param p2, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->handler:Lcom/turn/ttorrent/client/ConnectionHandler;

    .line 479
    iput-object p2, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    .line 480
    return-void
.end method

.method synthetic constructor <init>(Lcom/turn/ttorrent/client/ConnectionHandler;Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/ConnectionHandler$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/turn/ttorrent/client/ConnectionHandler;
    .param p2, "x1"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p3, "x2"    # Lcom/turn/ttorrent/client/ConnectionHandler$1;

    .prologue
    .line 472
    invoke-direct {p0, p1, p2}, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;-><init>(Lcom/turn/ttorrent/client/ConnectionHandler;Lcom/turn/ttorrent/client/peer/SharingPeer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 484
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-virtual {v5}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getIp()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-virtual {v6}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getPort()I

    move-result v6

    invoke-direct {v0, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 486
    .local v0, "address":Ljava/net/InetSocketAddress;
    const/4 v1, 0x0

    .line 489
    .local v1, "channel":Ljava/nio/channels/SocketChannel;
    :try_start_12
    # getter for: Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/client/ConnectionHandler;->access$200()Lorg/slf4j/Logger;

    move-result-object v5

    const-string v6, "Connecting to {}..."

    iget-object v7, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 491
    :goto_21
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v5

    if-nez v5, :cond_41

    .line 492
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2c} :catch_2d

    goto :goto_21

    .line 509
    :catch_2d
    move-exception v2

    .line 510
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 511
    invoke-static {v1}, Lru/killer666/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 513
    :cond_39
    iget-object v5, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->handler:Lcom/turn/ttorrent/client/ConnectionHandler;

    iget-object v6, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    # invokes: Lcom/turn/ttorrent/client/ConnectionHandler;->fireFailedConnection(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/lang/Throwable;)V
    invoke-static {v5, v6, v2}, Lcom/turn/ttorrent/client/ConnectionHandler;->access$600(Lcom/turn/ttorrent/client/ConnectionHandler;Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/lang/Throwable;)V

    .line 515
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_40
    return-void

    .line 495
    :cond_41
    :try_start_41
    # getter for: Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/client/ConnectionHandler;->access$200()Lorg/slf4j/Logger;

    move-result-object v5

    const-string v6, "Connected. Sending handshake to {}..."

    iget-object v7, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 497
    iget-object v5, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->handler:Lcom/turn/ttorrent/client/ConnectionHandler;

    # invokes: Lcom/turn/ttorrent/client/ConnectionHandler;->sendHandshake(Ljava/nio/channels/SocketChannel;)I
    invoke-static {v5, v1}, Lcom/turn/ttorrent/client/ConnectionHandler;->access$300(Lcom/turn/ttorrent/client/ConnectionHandler;Ljava/nio/channels/SocketChannel;)I

    move-result v4

    .line 498
    .local v4, "sent":I
    # getter for: Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/client/ConnectionHandler;->access$200()Lorg/slf4j/Logger;

    move-result-object v5

    const-string v6, "Sent handshake ({} bytes), waiting for response..."

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    iget-object v6, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->handler:Lcom/turn/ttorrent/client/ConnectionHandler;

    iget-object v5, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-virtual {v5}, Lcom/turn/ttorrent/client/peer/SharingPeer;->hasPeerId()Z

    move-result v5

    if-eqz v5, :cond_9c

    iget-object v5, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-virtual {v5}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getPeerId()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    :goto_77
    # invokes: Lcom/turn/ttorrent/client/ConnectionHandler;->validateHandshake(Ljava/nio/channels/SocketChannel;[B)Lcom/turn/ttorrent/client/Handshake;
    invoke-static {v6, v1, v5}, Lcom/turn/ttorrent/client/ConnectionHandler;->access$400(Lcom/turn/ttorrent/client/ConnectionHandler;Ljava/nio/channels/SocketChannel;[B)Lcom/turn/ttorrent/client/Handshake;

    move-result-object v3

    .line 503
    .local v3, "hs":Lcom/turn/ttorrent/client/Handshake;
    # getter for: Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/client/ConnectionHandler;->access$200()Lorg/slf4j/Logger;

    move-result-object v5

    const-string v6, "Handshaked with {}, peer ID is {}."

    iget-object v7, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->peer:Lcom/turn/ttorrent/client/peer/SharingPeer;

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/Handshake;->getPeerId()[B

    move-result-object v8

    invoke-static {v8}, Lcom/turn/ttorrent/common/Torrent;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 507
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 508
    iget-object v5, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;->handler:Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/Handshake;->getPeerId()[B

    move-result-object v6

    # invokes: Lcom/turn/ttorrent/client/ConnectionHandler;->fireNewPeerConnection(Ljava/nio/channels/SocketChannel;[B)V
    invoke-static {v5, v1, v6}, Lcom/turn/ttorrent/client/ConnectionHandler;->access$500(Lcom/turn/ttorrent/client/ConnectionHandler;Ljava/nio/channels/SocketChannel;[B)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_9b} :catch_2d

    goto :goto_40

    .line 499
    .end local v3    # "hs":Lcom/turn/ttorrent/client/Handshake;
    :cond_9c
    const/4 v5, 0x0

    goto :goto_77
.end method
