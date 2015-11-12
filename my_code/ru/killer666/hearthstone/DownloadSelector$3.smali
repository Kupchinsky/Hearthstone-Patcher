.class Lru/killer666/hearthstone/DownloadSelector$3;
.super Ljava/lang/Object;
.source "DownloadSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/DownloadSelector;->startDownload()V
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
    .line 97
    iput-object p1, p0, Lru/killer666/hearthstone/DownloadSelector$3;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$3;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # setter for: Lru/killer666/hearthstone/DownloadSelector;->handler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lru/killer666/hearthstone/DownloadSelector;->access$402(Lru/killer666/hearthstone/DownloadSelector;Landroid/os/Handler;)Landroid/os/Handler;

    .line 101
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$3;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lru/killer666/hearthstone/DownloadSelector;->access$400(Lru/killer666/hearthstone/DownloadSelector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lru/killer666/hearthstone/DownloadSelector$3;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->repeatableProgressUpdate:Ljava/lang/Runnable;
    invoke-static {v1}, Lru/killer666/hearthstone/DownloadSelector;->access$300(Lru/killer666/hearthstone/DownloadSelector;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method
