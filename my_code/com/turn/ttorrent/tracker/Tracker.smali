.class public Lcom/turn/ttorrent/tracker/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/tracker/Tracker$1;,
        Lcom/turn/ttorrent/tracker/Tracker$PeerCollectorThread;,
        Lcom/turn/ttorrent/tracker/Tracker$TrackerThread;,
        Lcom/turn/ttorrent/tracker/Tracker$TorrentRemoveTimer;
    }
.end annotation


# static fields
.field public static final ANNOUNCE_URL:Ljava/lang/String; = "/announce"

.field public static final DEFAULT_TRACKER_PORT:I = 0x1b39

.field public static final DEFAULT_VERSION_STRING:Ljava/lang/String; = "BitTorrent Tracker (ttorrent)"

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private collector:Ljava/lang/Thread;

.field private final connection:Lorg/simpleframework/transport/connect/Connection;

.field private stop:Z

.field private final torrents:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/tracker/TrackedTorrent;",
            ">;"
        }
    .end annotation
.end field

.field private tracker:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/turn/ttorrent/tracker/Tracker;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x1b39

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const-string v1, "BitTorrent Tracker (ttorrent)"

    invoke-direct {p0, v0, v1}, Lcom/turn/ttorrent/tracker/Tracker;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .registers 3
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, "BitTorrent Tracker (ttorrent)"

    invoke-direct {p0, p1, v0}, Lcom/turn/ttorrent/tracker/Tracker;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;)V
    .registers 6
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/turn/ttorrent/tracker/Tracker;->address:Ljava/net/InetSocketAddress;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->torrents:Ljava/util/concurrent/ConcurrentMap;

    .line 109
    new-instance v0, Lorg/simpleframework/transport/connect/SocketConnection;

    new-instance v1, Lcom/turn/ttorrent/tracker/TrackerService;

    iget-object v2, p0, Lcom/turn/ttorrent/tracker/Tracker;->torrents:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v1, p2, v2}, Lcom/turn/ttorrent/tracker/TrackerService;-><init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)V

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/connect/SocketConnection;-><init>(Lorg/simpleframework/http/core/Container;)V

    iput-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->connection:Lorg/simpleframework/transport/connect/Connection;

    .line 111
    return-void
.end method

.method static synthetic access$200()Lorg/slf4j/Logger;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/turn/ttorrent/tracker/Tracker;)Ljava/net/InetSocketAddress;
    .registers 2
    .param p0, "x0"    # Lcom/turn/ttorrent/tracker/Tracker;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$400(Lcom/turn/ttorrent/tracker/Tracker;)Lorg/simpleframework/transport/connect/Connection;
    .registers 2
    .param p0, "x0"    # Lcom/turn/ttorrent/tracker/Tracker;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->connection:Lorg/simpleframework/transport/connect/Connection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/turn/ttorrent/tracker/Tracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/turn/ttorrent/tracker/Tracker;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->stop:Z

    return v0
.end method

.method static synthetic access$600(Lcom/turn/ttorrent/tracker/Tracker;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .param p0, "x0"    # Lcom/turn/ttorrent/tracker/Tracker;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->torrents:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized announce(Lcom/turn/ttorrent/tracker/TrackedTorrent;)Lcom/turn/ttorrent/tracker/TrackedTorrent;
    .registers 7
    .param p1, "torrent"    # Lcom/turn/ttorrent/tracker/TrackedTorrent;

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/turn/ttorrent/tracker/Tracker;->torrents:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getHexInfoHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/tracker/TrackedTorrent;

    .line 199
    .local v0, "existing":Lcom/turn/ttorrent/tracker/TrackedTorrent;
    if-eqz v0, :cond_20

    .line 200
    sget-object v1, Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;

    const-string v2, "Tracker already announced torrent for \'{}\' with hash {}."

    invoke-virtual {v0}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getHexInfoHash()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3a

    .line 208
    .end local v0    # "existing":Lcom/turn/ttorrent/tracker/TrackedTorrent;
    :goto_1e
    monitor-exit p0

    return-object v0

    .line 205
    .restart local v0    # "existing":Lcom/turn/ttorrent/tracker/TrackedTorrent;
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/turn/ttorrent/tracker/Tracker;->torrents:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getHexInfoHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;

    const-string v2, "Registered new torrent for \'{}\' with hash {}."

    invoke-virtual {p1}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->getHexInfoHash()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_3a

    move-object v0, p1

    .line 208
    goto :goto_1e

    .line 197
    .end local v0    # "existing":Lcom/turn/ttorrent/tracker/TrackedTorrent;
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAnnounceUrl()Ljava/net/URL;
    .registers 7

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http"

    iget-object v3, p0, Lcom/turn/ttorrent/tracker/Tracker;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/turn/ttorrent/tracker/Tracker;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    const-string v5, "/announce"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_19
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 130
    :goto_19
    return-object v1

    .line 126
    :catch_1a
    move-exception v0

    .line 127
    .local v0, "mue":Ljava/net/MalformedURLException;
    sget-object v1, Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;

    const-string v2, "Could not build tracker URL: {}!"

    invoke-interface {v1, v2, v0, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public getTrackedTorrents()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/turn/ttorrent/tracker/TrackedTorrent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->torrents:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(Lcom/turn/ttorrent/common/Torrent;)V
    .registers 4
    .param p1, "torrent"    # Lcom/turn/ttorrent/common/Torrent;

    .prologue
    .line 217
    monitor-enter p0

    if-nez p1, :cond_5

    .line 222
    :goto_3
    monitor-exit p0

    return-void

    .line 221
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->torrents:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/Torrent;->getHexInfoHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    goto :goto_3

    .line 217
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/turn/ttorrent/common/Torrent;J)V
    .registers 6
    .param p1, "torrent"    # Lcom/turn/ttorrent/common/Torrent;
    .param p2, "delay"    # J

    .prologue
    .line 231
    monitor-enter p0

    if-nez p1, :cond_5

    .line 236
    :goto_3
    monitor-exit p0

    return-void

    .line 235
    :cond_5
    :try_start_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/turn/ttorrent/tracker/Tracker$TorrentRemoveTimer;

    invoke-direct {v1, p0, p1}, Lcom/turn/ttorrent/tracker/Tracker$TorrentRemoveTimer;-><init>(Lcom/turn/ttorrent/tracker/Tracker;Lcom/turn/ttorrent/common/Torrent;)V

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    goto :goto_3

    .line 231
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->tracker:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->tracker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_37

    .line 138
    :cond_d
    new-instance v0, Lcom/turn/ttorrent/tracker/Tracker$TrackerThread;

    invoke-direct {v0, p0, v3}, Lcom/turn/ttorrent/tracker/Tracker$TrackerThread;-><init>(Lcom/turn/ttorrent/tracker/Tracker;Lcom/turn/ttorrent/tracker/Tracker$1;)V

    iput-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->tracker:Ljava/lang/Thread;

    .line 139
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->tracker:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tracker:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/turn/ttorrent/tracker/Tracker;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->tracker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    :cond_37
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->collector:Ljava/lang/Thread;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->collector:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 144
    :cond_43
    new-instance v0, Lcom/turn/ttorrent/tracker/Tracker$PeerCollectorThread;

    invoke-direct {v0, p0, v3}, Lcom/turn/ttorrent/tracker/Tracker$PeerCollectorThread;-><init>(Lcom/turn/ttorrent/tracker/Tracker;Lcom/turn/ttorrent/tracker/Tracker$1;)V

    iput-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->collector:Ljava/lang/Thread;

    .line 145
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->collector:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peer-collector:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/turn/ttorrent/tracker/Tracker;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker;->collector:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    :cond_6d
    return-void
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/turn/ttorrent/tracker/Tracker;->stop:Z

    .line 162
    :try_start_3
    iget-object v1, p0, Lcom/turn/ttorrent/tracker/Tracker;->connection:Lorg/simpleframework/transport/connect/Connection;

    invoke-interface {v1}, Lorg/simpleframework/transport/connect/Connection;->close()V

    .line 163
    sget-object v1, Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;

    const-string v2, "BitTorrent tracker closed."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_28

    .line 168
    :goto_f
    iget-object v1, p0, Lcom/turn/ttorrent/tracker/Tracker;->collector:Ljava/lang/Thread;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/turn/ttorrent/tracker/Tracker;->collector:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 169
    iget-object v1, p0, Lcom/turn/ttorrent/tracker/Tracker;->collector:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 170
    sget-object v1, Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;

    const-string v2, "Peer collection terminated."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 172
    :cond_27
    return-void

    .line 164
    :catch_28
    move-exception v0

    .line 165
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;

    const-string v2, "Could not stop the tracker: {}!"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f
.end method
