.class Lru/killer666/hearthstone/DownloadSelector$1;
.super Ljava/lang/Object;
.source "DownloadSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/killer666/hearthstone/DownloadSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/DownloadSelector;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/DownloadSelector;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lru/killer666/hearthstone/DownloadSelector$1;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 34
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$1;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    iget-object v1, p0, Lru/killer666/hearthstone/DownloadSelector$1;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {v1}, Lru/killer666/hearthstone/DownloadSelector;->access$000(Lru/killer666/hearthstone/DownloadSelector;)Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/SharedTorrent;->getCompletion()F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P2P: \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u043e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v4, p0, Lru/killer666/hearthstone/DownloadSelector$1;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {v4}, Lru/killer666/hearthstone/DownloadSelector;->access$000(Lru/killer666/hearthstone/DownloadSelector;)Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/turn/ttorrent/client/SharedTorrent;->getDownloaded()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v4, p0, Lru/killer666/hearthstone/DownloadSelector$1;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {v4}, Lru/killer666/hearthstone/DownloadSelector;->access$000(Lru/killer666/hearthstone/DownloadSelector;)Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/turn/ttorrent/client/SharedTorrent;->getLeft()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lru/killer666/hearthstone/DownloadSelector$1;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {v3}, Lru/killer666/hearthstone/DownloadSelector;->access$000(Lru/killer666/hearthstone/DownloadSelector;)Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/SharedTorrent;->getCompletion()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lru/killer666/hearthstone/DownloadSelector;->updateProgress(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lru/killer666/hearthstone/DownloadSelector;->access$100(Lru/killer666/hearthstone/DownloadSelector;ILjava/lang/String;)V

    .line 39
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$1;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->isDownloading:Z
    invoke-static {v0}, Lru/killer666/hearthstone/DownloadSelector;->access$200(Lru/killer666/hearthstone/DownloadSelector;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 40
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$1;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lru/killer666/hearthstone/DownloadSelector;->access$400(Lru/killer666/hearthstone/DownloadSelector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lru/killer666/hearthstone/DownloadSelector$1;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->repeatableProgressUpdate:Ljava/lang/Runnable;
    invoke-static {v1}, Lru/killer666/hearthstone/DownloadSelector;->access$300(Lru/killer666/hearthstone/DownloadSelector;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    :cond_80
    return-void
.end method
