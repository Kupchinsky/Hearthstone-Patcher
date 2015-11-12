.class Lcom/turn/ttorrent/tracker/Tracker$TrackerThread;
.super Ljava/lang/Thread;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/tracker/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/turn/ttorrent/tracker/Tracker;


# direct methods
.method private constructor <init>(Lcom/turn/ttorrent/tracker/Tracker;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lcom/turn/ttorrent/tracker/Tracker$TrackerThread;->this$0:Lcom/turn/ttorrent/tracker/Tracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/turn/ttorrent/tracker/Tracker;Lcom/turn/ttorrent/tracker/Tracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/turn/ttorrent/tracker/Tracker;
    .param p2, "x1"    # Lcom/turn/ttorrent/tracker/Tracker$1;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/turn/ttorrent/tracker/Tracker$TrackerThread;-><init>(Lcom/turn/ttorrent/tracker/Tracker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 276
    # getter for: Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/tracker/Tracker;->access$200()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Starting BitTorrent tracker on {}..."

    iget-object v3, p0, Lcom/turn/ttorrent/tracker/Tracker$TrackerThread;->this$0:Lcom/turn/ttorrent/tracker/Tracker;

    invoke-virtual {v3}, Lcom/turn/ttorrent/tracker/Tracker;->getAnnounceUrl()Ljava/net/URL;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    :try_start_f
    iget-object v1, p0, Lcom/turn/ttorrent/tracker/Tracker$TrackerThread;->this$0:Lcom/turn/ttorrent/tracker/Tracker;

    # getter for: Lcom/turn/ttorrent/tracker/Tracker;->connection:Lorg/simpleframework/transport/connect/Connection;
    invoke-static {v1}, Lcom/turn/ttorrent/tracker/Tracker;->access$400(Lcom/turn/ttorrent/tracker/Tracker;)Lorg/simpleframework/transport/connect/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/turn/ttorrent/tracker/Tracker$TrackerThread;->this$0:Lcom/turn/ttorrent/tracker/Tracker;

    # getter for: Lcom/turn/ttorrent/tracker/Tracker;->address:Ljava/net/InetSocketAddress;
    invoke-static {v2}, Lcom/turn/ttorrent/tracker/Tracker;->access$300(Lcom/turn/ttorrent/tracker/Tracker;)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/simpleframework/transport/connect/Connection;->connect(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_1f

    .line 285
    :goto_1e
    return-void

    .line 281
    :catch_1f
    move-exception v0

    .line 282
    .local v0, "ioe":Ljava/io/IOException;
    # getter for: Lcom/turn/ttorrent/tracker/Tracker;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lcom/turn/ttorrent/tracker/Tracker;->access$200()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Could not start the tracker: {}!"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lcom/turn/ttorrent/tracker/Tracker$TrackerThread;->this$0:Lcom/turn/ttorrent/tracker/Tracker;

    invoke-virtual {v1}, Lcom/turn/ttorrent/tracker/Tracker;->stop()V

    goto :goto_1e
.end method
