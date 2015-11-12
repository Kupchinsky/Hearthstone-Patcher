.class Lorg/simpleframework/util/thread/SchedulerQueue;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "SchedulerQueue.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public stop()V
    .registers 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/simpleframework/util/thread/SchedulerQueue;->shutdown()V

    .line 53
    return-void
.end method
