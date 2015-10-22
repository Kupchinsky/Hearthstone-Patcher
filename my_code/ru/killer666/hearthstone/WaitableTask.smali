.class abstract Lru/killer666/hearthstone/WaitableTask;
.super Ljava/lang/Object;
.source "WaitableTask.java"


# instance fields
.field private taskEnded:Z

.field private waitObject:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lru/killer666/hearthstone/WaitableTask;->waitObject:Ljava/lang/Object;

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/killer666/hearthstone/WaitableTask;->taskEnded:Z

    return-void
.end method


# virtual methods
.method abstract doTask()Z
.end method

.method protected endTask()V
    .registers 3

    .prologue
    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/killer666/hearthstone/WaitableTask;->taskEnded:Z

    .line 14
    iget-object v1, p0, Lru/killer666/hearthstone/WaitableTask;->waitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_6
    iget-object v0, p0, Lru/killer666/hearthstone/WaitableTask;->waitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 17
    monitor-exit v1

    .line 18
    return-void

    .line 17
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method getEnded()Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lru/killer666/hearthstone/WaitableTask;->taskEnded:Z

    return v0
.end method

.method getWaitObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lru/killer666/hearthstone/WaitableTask;->waitObject:Ljava/lang/Object;

    return-object v0
.end method

.method setEnded(Z)V
    .registers 2
    .param p1, "newvalue"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lru/killer666/hearthstone/WaitableTask;->taskEnded:Z

    .line 23
    return-void
.end method
