.class public Lcom/turn/ttorrent/client/announce/Announce;
.super Ljava/lang/Object;
.source "Announce.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final allClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/turn/ttorrent/client/announce/TrackerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final clients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/client/announce/TrackerClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentClient:I

.field private currentTier:I

.field private forceStop:Z

.field private interval:I

.field private final peer:Lcom/turn/ttorrent/common/Peer;

.field private stop:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/turn/ttorrent/client/announce/Announce;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;)V
    .registers 15
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .param p2, "peer"    # Lcom/turn/ttorrent/common/Peer;

    .prologue
    const/4 v11, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/turn/ttorrent/client/announce/Announce;->peer:Lcom/turn/ttorrent/common/Peer;

    .line 81
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/turn/ttorrent/client/announce/Announce;->clients:Ljava/util/List;

    .line 82
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/turn/ttorrent/client/announce/Announce;->allClients:Ljava/util/Set;

    .line 88
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/SharedTorrent;->getAnnounceList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 89
    .local v4, "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v5, "tierClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/turn/ttorrent/client/announce/TrackerClient;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URI;

    .line 92
    .local v6, "tracker":Ljava/net/URI;
    :try_start_3d
    invoke-direct {p0, p1, p2, v6}, Lcom/turn/ttorrent/client/announce/Announce;->createTrackerClient(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;Ljava/net/URI;)Lcom/turn/ttorrent/client/announce/TrackerClient;

    move-result-object v0

    .line 95
    .local v0, "client":Lcom/turn/ttorrent/client/announce/TrackerClient;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v7, p0, Lcom/turn/ttorrent/client/announce/Announce;->allClients:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_49} :catch_4a

    goto :goto_31

    .line 97
    .end local v0    # "client":Lcom/turn/ttorrent/client/announce/TrackerClient;
    :catch_4a
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    const-string v9, "Will not announce on {}: {}!"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5d

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    :goto_59
    invoke-interface {v8, v9, v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_31

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    goto :goto_59

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "tracker":Ljava/net/URI;
    :cond_66
    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 111
    iget-object v7, p0, Lcom/turn/ttorrent/client/announce/Announce;->clients:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 114
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .end local v5    # "tierClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/turn/ttorrent/client/announce/TrackerClient;>;"
    :cond_6f
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    .line 115
    iput v11, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentTier:I

    .line 116
    iput v11, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentClient:I

    .line 118
    sget-object v7, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    const-string v8, "Initialized announce sub-system with {} trackers on {}."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/SharedTorrent;->getTrackerCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method private createTrackerClient(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;Ljava/net/URI;)Lcom/turn/ttorrent/client/announce/TrackerClient;
    .registers 8
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .param p2, "peer"    # Lcom/turn/ttorrent/common/Peer;
    .param p3, "tracker"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/UnknownServiceException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 276
    :cond_14
    new-instance v1, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;

    invoke-direct {v1, p1, p2, p3}, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;-><init>(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;Ljava/net/URI;)V

    .line 278
    :goto_19
    return-object v1

    .line 277
    :cond_1a
    const-string v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 278
    new-instance v1, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;

    invoke-direct {v1, p1, p2, p3}, Lcom/turn/ttorrent/client/announce/UDPTrackerClient;-><init>(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;Ljava/net/URI;)V

    goto :goto_19

    .line 281
    :cond_28
    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported announce scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private moveToNextTrackerClient()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/client/announce/AnnounceException;
        }
    .end annotation

    .prologue
    .line 346
    iget v1, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentTier:I

    .line 347
    .local v1, "tier":I
    iget v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentClient:I

    add-int/lit8 v0, v2, 0x1

    .line 349
    .local v0, "client":I
    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->clients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_20

    .line 350
    const/4 v0, 0x0

    .line 352
    add-int/lit8 v1, v1, 0x1

    .line 354
    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->clients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_20

    .line 355
    const/4 v1, 0x0

    .line 359
    :cond_20
    iget v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentTier:I

    if-ne v1, v2, :cond_28

    iget v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentClient:I

    if-eq v0, v2, :cond_53

    .line 361
    :cond_28
    iput v1, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentTier:I

    .line 362
    iput v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentClient:I

    .line 364
    sget-object v2, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    const-string v3, "Switched to tracker client for {} (tier {}, position {})."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/turn/ttorrent/client/announce/Announce;->getCurrentTrackerClient()Lcom/turn/ttorrent/client/announce/TrackerClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/turn/ttorrent/client/announce/TrackerClient;->getTrackerURI()Ljava/net/URI;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentTier:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentClient:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_53
    return-void
.end method

.method private promoteCurrentTrackerClient()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/client/announce/AnnounceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 317
    sget-object v0, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    const-string v1, "Promoting current tracker client for {} (tier {}, position {} -> 0)."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/turn/ttorrent/client/announce/Announce;->getCurrentTrackerClient()Lcom/turn/ttorrent/client/announce/TrackerClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/announce/TrackerClient;->getTrackerURI()Ljava/net/URI;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentTier:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentClient:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->clients:Ljava/util/List;

    iget v1, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentTier:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentClient:I

    invoke-static {v0, v1, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 327
    iput v5, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentClient:I

    .line 328
    return-void
.end method

.method private stop(Z)V
    .registers 2
    .param p1, "hard"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/turn/ttorrent/client/announce/Announce;->forceStop:Z

    .line 382
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/announce/Announce;->stop()V

    .line 383
    return-void
.end method


# virtual methods
.method public getCurrentTrackerClient()Lcom/turn/ttorrent/client/announce/TrackerClient;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/client/announce/AnnounceException;
        }
    .end annotation

    .prologue
    .line 291
    iget v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentTier:I

    iget-object v1, p0, Lcom/turn/ttorrent/client/announce/Announce;->clients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget v1, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentClient:I

    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->clients:Ljava/util/List;

    iget v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentTier:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_24

    .line 293
    :cond_1c
    new-instance v0, Lcom/turn/ttorrent/client/announce/AnnounceException;

    const-string v1, "Current tier or client isn\'t available"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_24
    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->clients:Ljava/util/List;

    iget v1, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentTier:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lcom/turn/ttorrent/client/announce/Announce;->currentClient:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/client/announce/TrackerClient;

    return-object v0
.end method

.method public register(Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->allClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/client/announce/TrackerClient;

    .line 129
    .local v0, "client":Lcom/turn/ttorrent/client/announce/TrackerClient;
    invoke-virtual {v0, p1}, Lcom/turn/ttorrent/client/announce/TrackerClient;->register(Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;)V

    goto :goto_6

    .line 131
    .end local v0    # "client":Lcom/turn/ttorrent/client/announce/TrackerClient;
    :cond_16
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 211
    sget-object v3, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    const-string v4, "Starting announce loop..."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 215
    const/4 v3, 0x5

    iput v3, p0, Lcom/turn/ttorrent/client/announce/Announce;->interval:I

    .line 217
    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STARTED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .line 220
    .local v2, "event":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    :goto_c
    iget-boolean v3, p0, Lcom/turn/ttorrent/client/announce/Announce;->stop:Z

    if-nez v3, :cond_43

    .line 222
    :try_start_10
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/announce/Announce;->getCurrentTrackerClient()Lcom/turn/ttorrent/client/announce/TrackerClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/turn/ttorrent/client/announce/TrackerClient;->announce(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Z)V

    .line 223
    invoke-direct {p0}, Lcom/turn/ttorrent/client/announce/Announce;->promoteCurrentTrackerClient()V

    .line 224
    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->NONE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    :try_end_1d
    .catch Lcom/turn/ttorrent/client/announce/AnnounceException; {:try_start_10 .. :try_end_1d} :catch_28

    .line 236
    :goto_1d
    :try_start_1d
    iget v3, p0, Lcom/turn/ttorrent/client/announce/Announce;->interval:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_c

    .line 237
    :catch_26
    move-exception v3

    goto :goto_c

    .line 225
    :catch_28
    move-exception v0

    .line 226
    .local v0, "ae":Lcom/turn/ttorrent/client/announce/AnnounceException;
    sget-object v3, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/announce/AnnounceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 229
    :try_start_32
    invoke-direct {p0}, Lcom/turn/ttorrent/client/announce/Announce;->moveToNextTrackerClient()V
    :try_end_35
    .catch Lcom/turn/ttorrent/client/announce/AnnounceException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_1d

    .line 230
    :catch_36
    move-exception v1

    .line 231
    .local v1, "e":Lcom/turn/ttorrent/client/announce/AnnounceException;
    sget-object v3, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    const-string v4, "Unable to move to the next tracker client: {}"

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/announce/AnnounceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1d

    .line 242
    .end local v0    # "ae":Lcom/turn/ttorrent/client/announce/AnnounceException;
    .end local v1    # "e":Lcom/turn/ttorrent/client/announce/AnnounceException;
    :cond_43
    sget-object v3, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    const-string v4, "Exited announce loop."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 244
    iget-boolean v3, p0, Lcom/turn/ttorrent/client/announce/Announce;->forceStop:Z

    if-nez v3, :cond_5d

    .line 247
    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STOPPED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .line 249
    const-wide/16 v4, 0x1f4

    :try_start_52
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_69

    .line 255
    :goto_55
    :try_start_55
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/announce/Announce;->getCurrentTrackerClient()Lcom/turn/ttorrent/client/announce/TrackerClient;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/turn/ttorrent/client/announce/TrackerClient;->announce(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Z)V
    :try_end_5d
    .catch Lcom/turn/ttorrent/client/announce/AnnounceException; {:try_start_55 .. :try_end_5d} :catch_5e

    .line 260
    :cond_5d
    :goto_5d
    return-void

    .line 256
    :catch_5e
    move-exception v0

    .line 257
    .restart local v0    # "ae":Lcom/turn/ttorrent/client/announce/AnnounceException;
    sget-object v3, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/announce/AnnounceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_5d

    .line 250
    .end local v0    # "ae":Lcom/turn/ttorrent/client/announce/AnnounceException;
    :catch_69
    move-exception v3

    goto :goto_55
.end method

.method public setInterval(I)V
    .registers 5
    .param p1, "interval"    # I

    .prologue
    .line 152
    if-gtz p1, :cond_7

    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/turn/ttorrent/client/announce/Announce;->stop(Z)V

    .line 164
    :cond_6
    :goto_6
    return-void

    .line 157
    :cond_7
    iget v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->interval:I

    if-eq v0, p1, :cond_6

    .line 161
    sget-object v0, Lcom/turn/ttorrent/client/announce/Announce;->logger:Lorg/slf4j/Logger;

    const-string v1, "Setting announce interval to {}s per tracker request."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iput p1, p0, Lcom/turn/ttorrent/client/announce/Announce;->interval:I

    goto :goto_6
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->stop:Z

    .line 138
    iput-boolean v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->forceStop:Z

    .line 140
    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->clients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_49

    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_49

    .line 141
    :cond_19
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    .line 142
    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt-announce("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v2}, Lcom/turn/ttorrent/common/Peer;->getShortHexPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 146
    :cond_49
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 175
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->stop:Z

    .line 177
    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 178
    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 180
    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->allClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/client/announce/TrackerClient;

    .line 181
    .local v0, "client":Lcom/turn/ttorrent/client/announce/TrackerClient;
    invoke-virtual {v0}, Lcom/turn/ttorrent/client/announce/TrackerClient;->close()V

    goto :goto_1a

    .line 185
    .end local v0    # "client":Lcom/turn/ttorrent/client/announce/TrackerClient;
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2f} :catch_33

    .line 191
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/turn/ttorrent/client/announce/Announce;->thread:Ljava/lang/Thread;

    .line 192
    return-void

    .line 186
    .restart local v1    # "i$":Ljava/util/Iterator;
    :catch_33
    move-exception v2

    goto :goto_2f
.end method
