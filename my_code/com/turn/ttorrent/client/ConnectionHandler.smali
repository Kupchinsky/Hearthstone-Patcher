.class public Lcom/turn/ttorrent/client/ConnectionHandler;
.super Ljava/lang/Object;
.source "ConnectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/client/ConnectionHandler$1;,
        Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;,
        Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorThreadFactory;
    }
.end annotation


# static fields
.field private static final CLIENT_KEEP_ALIVE_MINUTES:I = 0x3

.field private static final OUTBOUND_CONNECTIONS_POOL_SIZE:I = 0x14

.field private static final OUTBOUND_CONNECTIONS_THREAD_KEEP_ALIVE_SECS:I = 0xa

.field public static final PORT_RANGE_END:I = 0x1ae9

.field public static final PORT_RANGE_START:I = 0x1ae1

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private channel:Ljava/nio/channels/ServerSocketChannel;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private id:Ljava/lang/String;

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/turn/ttorrent/client/IncomingConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private stop:Z

.field private thread:Ljava/lang/Thread;

.field private torrent:Lcom/turn/ttorrent/client/SharedTorrent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    const-class v0, Lcom/turn/ttorrent/client/ConnectionHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Lcom/turn/ttorrent/client/SharedTorrent;Ljava/lang/String;Ljava/net/InetAddress;)V
    .registers 11
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    .line 118
    iput-object p2, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->id:Ljava/lang/String;

    .line 122
    const/16 v1, 0x1ae1

    .line 123
    .local v1, "port":I
    :goto_a
    const/16 v3, 0x1ae9

    if-gt v1, v3, :cond_2a

    .line 125
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 129
    .local v2, "tryAddress":Ljava/net/InetSocketAddress;
    :try_start_13
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->channel:Ljava/nio/channels/ServerSocketChannel;

    .line 130
    iget-object v3, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 131
    iget-object v3, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->channel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 132
    iput-object v2, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->address:Ljava/net/InetSocketAddress;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2a} :catch_42

    .line 140
    .end local v2    # "tryAddress":Ljava/net/InetSocketAddress;
    :cond_2a
    iget-object v3, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->channel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isBound()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 141
    :cond_3a
    new-instance v3, Ljava/io/IOException;

    const-string v4, "No available port for the BitTorrent client!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    .restart local v2    # "tryAddress":Ljava/net/InetSocketAddress;
    :catch_42
    move-exception v0

    .line 136
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v3, Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;

    const-string v4, "Could not bind to {}, trying next port..."

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 144
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v2    # "tryAddress":Ljava/net/InetSocketAddress;
    :cond_4d
    sget-object v3, Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;

    const-string v4, "Listening for incoming connections on {}."

    iget-object v5, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->address:Ljava/net/InetSocketAddress;

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->listeners:Ljava/util/Set;

    .line 147
    iput-object v6, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    .line 148
    iput-object v6, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->thread:Ljava/lang/Thread;

    .line 149
    return-void
.end method

.method private accept(Ljava/nio/channels/SocketChannel;)V
    .registers 10
    .param p1, "client"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 300
    :try_start_0
    sget-object v4, Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;

    const-string v5, "New incoming connection, waiting for handshake..."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 301
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/turn/ttorrent/client/ConnectionHandler;->validateHandshake(Ljava/nio/channels/SocketChannel;[B)Lcom/turn/ttorrent/client/Handshake;

    move-result-object v0

    .line 302
    .local v0, "hs":Lcom/turn/ttorrent/client/Handshake;
    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/ConnectionHandler;->sendHandshake(Ljava/nio/channels/SocketChannel;)I

    move-result v3

    .line 303
    .local v3, "sent":I
    sget-object v4, Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;

    const-string v5, "Replied to {} with handshake ({} bytes)."

    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/ConnectionHandler;->socketRepr(Ljava/nio/channels/SocketChannel;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 308
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    const v5, 0x2bf20

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 309
    invoke-virtual {v0}, Lcom/turn/ttorrent/client/Handshake;->getPeerId()[B

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/turn/ttorrent/client/ConnectionHandler;->fireNewPeerConnection(Ljava/nio/channels/SocketChannel;[B)V
    :try_end_34
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_34} :catch_49

    .line 321
    .end local v0    # "hs":Lcom/turn/ttorrent/client/Handshake;
    .end local v3    # "sent":I
    :cond_34
    :goto_34
    return-void

    .line 310
    :catch_35
    move-exception v2

    .line 311
    .local v2, "pe":Ljava/text/ParseException;
    sget-object v4, Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;

    const-string v5, "Invalid handshake from {}: {}"

    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/ConnectionHandler;->socketRepr(Ljava/nio/channels/SocketChannel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_34

    .line 314
    .end local v2    # "pe":Ljava/text/ParseException;
    :catch_49
    move-exception v1

    .line 315
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v4, Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;

    const-string v5, "An error occured while reading an incoming handshake: {}"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 318
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_34
.end method

.method static synthetic access$200()Lorg/slf4j/Logger;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/turn/ttorrent/client/ConnectionHandler;Ljava/nio/channels/SocketChannel;)I
    .registers 3
    .param p0, "x0"    # Lcom/turn/ttorrent/client/ConnectionHandler;
    .param p1, "x1"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/ConnectionHandler;->sendHandshake(Ljava/nio/channels/SocketChannel;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/turn/ttorrent/client/ConnectionHandler;Ljava/nio/channels/SocketChannel;[B)Lcom/turn/ttorrent/client/Handshake;
    .registers 4
    .param p0, "x0"    # Lcom/turn/ttorrent/client/ConnectionHandler;
    .param p1, "x1"    # Ljava/nio/channels/SocketChannel;
    .param p2, "x2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/turn/ttorrent/client/ConnectionHandler;->validateHandshake(Ljava/nio/channels/SocketChannel;[B)Lcom/turn/ttorrent/client/Handshake;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/turn/ttorrent/client/ConnectionHandler;Ljava/nio/channels/SocketChannel;[B)V
    .registers 3
    .param p0, "x0"    # Lcom/turn/ttorrent/client/ConnectionHandler;
    .param p1, "x1"    # Ljava/nio/channels/SocketChannel;
    .param p2, "x2"    # [B

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/turn/ttorrent/client/ConnectionHandler;->fireNewPeerConnection(Ljava/nio/channels/SocketChannel;[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/turn/ttorrent/client/ConnectionHandler;Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/turn/ttorrent/client/ConnectionHandler;
    .param p1, "x1"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/turn/ttorrent/client/ConnectionHandler;->fireFailedConnection(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/lang/Throwable;)V

    return-void
.end method

.method private fireFailedConnection(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 434
    iget-object v2, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/IncomingConnectionListener;

    .line 435
    .local v1, "listener":Lcom/turn/ttorrent/client/IncomingConnectionListener;
    invoke-interface {v1, p1, p2}, Lcom/turn/ttorrent/client/IncomingConnectionListener;->handleFailedConnection(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 437
    .end local v1    # "listener":Lcom/turn/ttorrent/client/IncomingConnectionListener;
    :cond_16
    return-void
.end method

.method private fireNewPeerConnection(Ljava/nio/channels/SocketChannel;[B)V
    .registers 6
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "peerId"    # [B

    .prologue
    .line 428
    iget-object v2, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/IncomingConnectionListener;

    .line 429
    .local v1, "listener":Lcom/turn/ttorrent/client/IncomingConnectionListener;
    invoke-interface {v1, p1, p2}, Lcom/turn/ttorrent/client/IncomingConnectionListener;->handleNewPeerConnection(Ljava/nio/channels/SocketChannel;[B)V

    goto :goto_6

    .line 431
    .end local v1    # "listener":Lcom/turn/ttorrent/client/IncomingConnectionListener;
    :cond_16
    return-void
.end method

.method private sendHandshake(Ljava/nio/channels/SocketChannel;)I
    .registers 5
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->getInfoHash()[B

    move-result-object v0

    iget-object v1, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->id:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/turn/ttorrent/client/Handshake;->craft([B[B)Lcom/turn/ttorrent/client/Handshake;

    move-result-object v0

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/Handshake;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private socketRepr(Ljava/nio/channels/SocketChannel;)Ljava/lang/String;
    .registers 7
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 273
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 274
    .local v0, "s":Ljava/net/Socket;
    const-string v2, "%s:%d%s"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "+"

    :goto_28
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2f
    const-string v1, "-"

    goto :goto_28
.end method

.method private validateHandshake(Ljava/nio/channels/SocketChannel;[B)Lcom/turn/ttorrent/client/Handshake;
    .registers 12
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "peerId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 373
    .local v3, "len":Ljava/nio/ByteBuffer;
    sget-object v6, Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;

    const-string v7, "Reading handshake size (1 byte) from {}..."

    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/ConnectionHandler;->socketRepr(Ljava/nio/channels/SocketChannel;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p1, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v6, v7, :cond_22

    .line 375
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Handshake size read underrrun"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 378
    :cond_22
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 379
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 381
    .local v4, "pstrlen":I
    add-int/lit8 v6, v4, 0x31

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 382
    .local v0, "data":Ljava/nio/ByteBuffer;
    int-to-byte v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 383
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 384
    .local v1, "expected":I
    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 385
    .local v5, "read":I
    if-ge v5, v1, :cond_66

    .line 386
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Handshake data read underrun ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 391
    :cond_66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 392
    invoke-static {v0}, Lcom/turn/ttorrent/client/Handshake;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/client/Handshake;

    move-result-object v2

    .line 393
    .local v2, "hs":Lcom/turn/ttorrent/client/Handshake;
    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Handshake;->getInfoHash()[B

    move-result-object v6

    iget-object v7, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v7}, Lcom/turn/ttorrent/client/SharedTorrent;->getInfoHash()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_b4

    .line 394
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Handshake for unknow torrent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Handshake;->getInfoHash()[B

    move-result-object v8

    invoke-static {v8}, Lcom/turn/ttorrent/common/Torrent;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/ConnectionHandler;->socketRepr(Ljava/nio/channels/SocketChannel;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x9

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 399
    :cond_b4
    if-eqz p2, :cond_f7

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Handshake;->getPeerId()[B

    move-result-object v6

    invoke-static {v6, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_f7

    .line 400
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Announced peer ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/Handshake;->getPeerId()[B

    move-result-object v8

    invoke-static {v8}, Lcom/turn/ttorrent/common/Torrent;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not match expected peer ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/turn/ttorrent/common/Torrent;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1d

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 406
    :cond_f7
    return-object v2
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
    .line 228
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->channel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_c

    .line 229
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->channel:Ljava/nio/channels/ServerSocketChannel;

    .line 232
    :cond_c
    return-void
.end method

.method public connect(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
    .registers 5
    .param p1, "peer"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/ConnectionHandler;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection handler is not accepting new peers at this time!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_e
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorTask;-><init>(Lcom/turn/ttorrent/client/ConnectionHandler;Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/ConnectionHandler$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 350
    return-void
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public isAlive()Z
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public register(Lcom/turn/ttorrent/client/IncomingConnectionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/turn/ttorrent/client/IncomingConnectionListener;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 244
    :goto_0
    iget-boolean v3, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->stop:Z

    if-nez v3, :cond_2a

    .line 246
    :try_start_4
    iget-object v3, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 247
    .local v0, "client":Ljava/nio/channels/SocketChannel;
    if-eqz v0, :cond_f

    .line 248
    invoke-direct {p0, v0}, Lcom/turn/ttorrent/client/ConnectionHandler;->accept(Ljava/nio/channels/SocketChannel;)V
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_f} :catch_2b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_1e

    .line 258
    .end local v0    # "client":Ljava/nio/channels/SocketChannel;
    :cond_f
    :goto_f
    const-wide/16 v4, 0x64

    :try_start_11
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_0

    .line 259
    :catch_15
    move-exception v1

    .line 260
    .local v1, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 252
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catch_1e
    move-exception v2

    .line 253
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lcom/turn/ttorrent/client/ConnectionHandler;->logger:Lorg/slf4j/Logger;

    const-string v4, "Unrecoverable error in connection handler"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/ConnectionHandler;->stop()V

    goto :goto_f

    .line 263
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_2a
    return-void

    .line 250
    :catch_2b
    move-exception v3

    goto :goto_f
.end method

.method public start()V
    .registers 10

    .prologue
    const/16 v2, 0x14

    .line 172
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->channel:Ljava/nio/channels/ServerSocketChannel;

    if-nez v0, :cond_e

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection handler cannot be recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->stop:Z

    .line 179
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 180
    :cond_1d
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorThreadFactory;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorThreadFactory;-><init>(Lcom/turn/ttorrent/client/ConnectionHandler$1;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    .line 189
    :cond_34
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_53

    .line 190
    :cond_40
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->thread:Ljava/lang/Thread;

    .line 191
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->thread:Ljava/lang/Thread;

    const-string v1, "bt-serve"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    :cond_53
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->stop:Z

    .line 206
    iget-object v1, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 208
    :try_start_10
    iget-object v1, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_2b

    .line 214
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_26

    .line 215
    iget-object v1, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 218
    :cond_26
    iput-object v2, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->executor:Ljava/util/concurrent/ExecutorService;

    .line 219
    iput-object v2, p0, Lcom/turn/ttorrent/client/ConnectionHandler;->thread:Ljava/lang/Thread;

    .line 220
    return-void

    .line 209
    :catch_2b
    move-exception v0

    .line 210
    .local v0, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_15
.end method
