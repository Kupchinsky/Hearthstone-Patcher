.class final Lru/killer666/hearthstone/DownloadSelector$2;
.super Ljava/lang/Object;
.source "DownloadSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/DownloadSelector;->startP2P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    # setter for: Lru/killer666/hearthstone/DownloadSelector;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lru/killer666/hearthstone/DownloadSelector;->access$502(Landroid/os/Handler;)Landroid/os/Handler;

    .line 99
    # getter for: Lru/killer666/hearthstone/DownloadSelector;->handler:Landroid/os/Handler;
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$500()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->repeatableProgressUpdate:Ljava/lang/Runnable;
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->access$400()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method
