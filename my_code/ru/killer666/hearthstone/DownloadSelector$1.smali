.class final Lru/killer666/hearthstone/DownloadSelector$1;
.super Ljava/lang/Object;
.source "DownloadSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/killer666/hearthstone/DownloadSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 30
    # getter for: Lru/killer666/hearthstone/DownloadSelector;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$100()Landroid/widget/ProgressBar;

    move-result-object v0

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$000()Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/turn/ttorrent/client/SharedTorrent;->getCompletion()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 31
    # getter for: Lru/killer666/hearthstone/DownloadSelector;->m_progressText:Landroid/widget/TextView;
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$200()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2P: \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u043e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$000()Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/SharedTorrent;->getDownloaded()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$000()Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/turn/ttorrent/client/SharedTorrent;->getLeft()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$000()Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/turn/ttorrent/client/SharedTorrent;->getCompletion()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    # getter for: Lru/killer666/hearthstone/DownloadSelector;->isDownloading:Z
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$300()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 36
    # getter for: Lru/killer666/hearthstone/DownloadSelector;->handler:Landroid/os/Handler;
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$500()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->repeatableProgressUpdate:Ljava/lang/Runnable;
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$400()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :cond_7b
    return-void
.end method
