.class Lcom/turn/ttorrent/tracker/Tracker$TorrentRemoveTimer;
.super Ljava/util/TimerTask;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/tracker/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TorrentRemoveTimer"
.end annotation


# instance fields
.field private torrent:Lcom/turn/ttorrent/common/Torrent;

.field private tracker:Lcom/turn/ttorrent/tracker/Tracker;


# direct methods
.method constructor <init>(Lcom/turn/ttorrent/tracker/Tracker;Lcom/turn/ttorrent/common/Torrent;)V
    .registers 3
    .param p1, "tracker"    # Lcom/turn/ttorrent/tracker/Tracker;
    .param p2, "torrent"    # Lcom/turn/ttorrent/common/Torrent;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/turn/ttorrent/tracker/Tracker$TorrentRemoveTimer;->tracker:Lcom/turn/ttorrent/tracker/Tracker;

    .line 253
    iput-object p2, p0, Lcom/turn/ttorrent/tracker/Tracker$TorrentRemoveTimer;->torrent:Lcom/turn/ttorrent/common/Torrent;

    .line 254
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/turn/ttorrent/tracker/Tracker$TorrentRemoveTimer;->tracker:Lcom/turn/ttorrent/tracker/Tracker;

    iget-object v1, p0, Lcom/turn/ttorrent/tracker/Tracker$TorrentRemoveTimer;->torrent:Lcom/turn/ttorrent/common/Torrent;

    invoke-virtual {v0, v1}, Lcom/turn/ttorrent/tracker/Tracker;->remove(Lcom/turn/ttorrent/common/Torrent;)V

    .line 259
    return-void
.end method
