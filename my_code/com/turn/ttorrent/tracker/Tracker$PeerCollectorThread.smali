.class Lcom/turn/ttorrent/tracker/Tracker$PeerCollectorThread;
.super Ljava/lang/Thread;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/tracker/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeerCollectorThread"
.end annotation


# static fields
.field private static final PEER_COLLECTION_FREQUENCY_SECONDS:I = 0xf


# instance fields
.field final synthetic this$0:Lcom/turn/ttorrent/tracker/Tracker;


# direct methods
.method private constructor <init>(Lcom/turn/ttorrent/tracker/Tracker;)V
    .registers 2

    .prologue
    .line 296
    iput-object p1, p0, Lcom/turn/ttorrent/tracker/Tracker$PeerCollectorThread;->this$0:Lcom/turn/ttorrent/tracker/Tracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/turn/ttorrent/tracker/Tracker;Lcom/turn/ttorrent/tracker/Tracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/turn/ttorrent/tracker/Tracker;
    .param p2, "x1"    # Lcom/turn/ttorrent/tracker/Tracker$1;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/turn/ttorrent/tracker/Tracker$PeerCollectorThread;-><init>(Lcom/turn/ttorrent/tracker/Tracker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 302
    # getter for: Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/tracker/Tracker;->access$200()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Starting tracker peer collection for tracker at {}..."

    iget-object v4, p0, Lcom/turn/ttorrent/tracker/Tracker$PeerCollectorThread;->this$0:Lcom/turn/ttorrent/tracker/Tracker;

    invoke-virtual {v4}, Lcom/turn/ttorrent/tracker/Tracker;->getAnnounceUrl()Ljava/net/URL;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    :goto_f
    iget-object v2, p0, Lcom/turn/ttorrent/tracker/Tracker$PeerCollectorThread;->this$0:Lcom/turn/ttorrent/tracker/Tracker;

    # getter for: Lcom/turn/ttorrent/tracker/Tracker;->stop:Z
    invoke-static {v2}, Lcom/turn/ttorrent/tracker/Tracker;->access$500(Lcom/turn/ttorrent/tracker/Tracker;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 306
    iget-object v2, p0, Lcom/turn/ttorrent/tracker/Tracker$PeerCollectorThread;->this$0:Lcom/turn/ttorrent/tracker/Tracker;

    # getter for: Lcom/turn/ttorrent/tracker/Tracker;->torrents:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lcom/turn/ttorrent/tracker/Tracker;->access$600(Lcom/turn/ttorrent/tracker/Tracker;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/tracker/TrackedTorrent;

    .line 307
    .local v1, "torrent":Lcom/turn/ttorrent/tracker/TrackedTorrent;
    invoke-virtual {v1}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->collectUnfreshPeers()V

    goto :goto_25

    .line 311
    .end local v1    # "torrent":Lcom/turn/ttorrent/tracker/TrackedTorrent;
    :cond_35
    const-wide/16 v2, 0x3a98

    :try_start_37
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_f

    .line 313
    :catch_3b
    move-exception v2

    goto :goto_f

    .line 317
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3d
    return-void
.end method
