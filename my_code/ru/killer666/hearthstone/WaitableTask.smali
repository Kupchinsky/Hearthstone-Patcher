.class abstract Lru/killer666/hearthstone/WaitableTask;
.super Ljava/lang/Object;
.source "WaitableTask.java"


# instance fields
.field private taskEnded:Z

.field private final waitObject:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lru/killer666/hearthstone/WaitableTask;->waitObject:Ljava/lang/Object;

    .line 5
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
    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/killer666/hearthstone/WaitableTask;->taskEnded:Z

    .line 12
    iget-object v1, p0, Lru/killer666/hearthstone/WaitableTask;->waitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_6
    iget-object v0, p0, Lru/killer666/hearthstone/WaitableTask;->waitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit v1

    .line 15
    return-void

    .line 14
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
    .line 18
    iget-boolean v0, p0, Lru/killer666/hearthstone/WaitableTask;->taskEnded:Z

    return v0
.end method

.method getWaitObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lru/killer666/hearthstone/WaitableTask;->waitObject:Ljava/lang/Object;

    return-object v0
.end method
