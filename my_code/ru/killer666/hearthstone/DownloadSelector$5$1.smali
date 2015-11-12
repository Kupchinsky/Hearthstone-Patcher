.class Lru/killer666/hearthstone/DownloadSelector$5$1;
.super Ljava/lang/Object;
.source "DownloadSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/DownloadSelector$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/killer666/hearthstone/DownloadSelector$5;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/DownloadSelector$5;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lru/killer666/hearthstone/DownloadSelector$5$1;->this$1:Lru/killer666/hearthstone/DownloadSelector$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 177
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 179
    if-lez p2, :cond_21

    move v0, v1

    :goto_8
    sput-boolean v0, Lru/killer666/hearthstone/DownloadSelector;->isSkipMarketDownload:Z

    .line 180
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$5$1;->this$1:Lru/killer666/hearthstone/DownloadSelector$5;

    iget-object v0, v0, Lru/killer666/hearthstone/DownloadSelector$5;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    if-ne p2, v1, :cond_23

    :goto_10
    # setter for: Lru/killer666/hearthstone/DownloadSelector;->isP2P:Z
    invoke-static {v0, v1}, Lru/killer666/hearthstone/DownloadSelector;->access$702(Lru/killer666/hearthstone/DownloadSelector;Z)Z

    .line 182
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$5$1;->this$1:Lru/killer666/hearthstone/DownloadSelector$5;

    iget-object v1, v0, Lru/killer666/hearthstone/DownloadSelector$5;->val$waitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_18
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$5$1;->this$1:Lru/killer666/hearthstone/DownloadSelector$5;

    iget-object v0, v0, Lru/killer666/hearthstone/DownloadSelector$5;->val$waitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit v1

    .line 185
    return-void

    :cond_21
    move v0, v2

    .line 179
    goto :goto_8

    :cond_23
    move v1, v2

    .line 180
    goto :goto_10

    .line 184
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_25

    throw v0
.end method
