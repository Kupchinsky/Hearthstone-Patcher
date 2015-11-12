.class public abstract Lcom/turn/ttorrent/client/announce/TrackerClient;
.super Ljava/lang/Object;
.source "TrackerClient.java"


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final peer:Lcom/turn/ttorrent/common/Peer;

.field protected final torrent:Lcom/turn/ttorrent/client/SharedTorrent;

.field protected final tracker:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;Ljava/net/URI;)V
    .registers 5
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .param p2, "peer"    # Lcom/turn/ttorrent/common/Peer;
    .param p3, "tracker"    # Ljava/net/URI;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/client/announce/TrackerClient;->listeners:Ljava/util/Set;

    .line 40
    iput-object p1, p0, Lcom/turn/ttorrent/client/announce/TrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    .line 41
    iput-object p2, p0, Lcom/turn/ttorrent/client/announce/TrackerClient;->peer:Lcom/turn/ttorrent/common/Peer;

    .line 42
    iput-object p3, p0, Lcom/turn/ttorrent/client/announce/TrackerClient;->tracker:Ljava/net/URI;

    .line 43
    return-void
.end method


# virtual methods
.method public abstract announce(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/client/announce/AnnounceException;
        }
    .end annotation
.end method

.method protected close()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method

.method protected fireAnnounceResponseEvent(III)V
    .registers 7
    .param p1, "complete"    # I
    .param p2, "incomplete"    # I
    .param p3, "interval"    # I

    .prologue
    .line 152
    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/TrackerClient;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;

    .line 153
    .local v1, "listener":Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;
    invoke-interface {v1, p3, p1, p2}, Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;->handleAnnounceResponse(III)V

    goto :goto_6

    .line 155
    .end local v1    # "listener":Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;
    :cond_16
    return-void
.end method

.method protected fireDiscoveredPeersEvent(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/common/Peer;>;"
    iget-object v2, p0, Lcom/turn/ttorrent/client/announce/TrackerClient;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;

    .line 164
    .local v1, "listener":Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;
    invoke-interface {v1, p1}, Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;->handleDiscoveredPeers(Ljava/util/List;)V

    goto :goto_6

    .line 166
    .end local v1    # "listener":Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;
    :cond_16
    return-void
.end method

.method protected formatAnnounceEvent(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;)Ljava/lang/String;
    .registers 6
    .param p1, "event"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .prologue
    .line 99
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->NONE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-virtual {v0, p1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    const-string v0, " %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getTrackerURI()Ljava/net/URI;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/TrackerClient;->tracker:Ljava/net/URI;

    return-object v0
.end method

.method protected handleTrackerAnnounceResponse(Lcom/turn/ttorrent/common/protocol/TrackerMessage;Z)V
    .registers 8
    .param p1, "message"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage;
    .param p2, "inhibitEvents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/client/announce/AnnounceException;
        }
    .end annotation

    .prologue
    .line 119
    instance-of v2, p1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;

    if-eqz v2, :cond_11

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;

    .line 121
    .local v0, "error":Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;
    new-instance v2, Lcom/turn/ttorrent/client/announce/AnnounceException;

    invoke-interface {v0}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    .end local v0    # "error":Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;
    :cond_11
    instance-of v2, p1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;

    if-nez v2, :cond_3c

    .line 125
    new-instance v2, Lcom/turn/ttorrent/client/announce/AnnounceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tracker message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage;->getType()Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_3c
    if-eqz p2, :cond_3f

    .line 141
    :goto_3e
    return-void

    :cond_3f
    move-object v1, p1

    .line 133
    check-cast v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;

    .line 135
    .local v1, "response":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;
    invoke-interface {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;->getComplete()I

    move-result v2

    invoke-interface {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;->getIncomplete()I

    move-result v3

    invoke-interface {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;->getInterval()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/turn/ttorrent/client/announce/TrackerClient;->fireAnnounceResponseEvent(III)V

    .line 139
    invoke-interface {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;->getPeers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/turn/ttorrent/client/announce/TrackerClient;->fireDiscoveredPeersEvent(Ljava/util/List;)V

    goto :goto_3e
.end method

.method public register(Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/TrackerClient;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method
