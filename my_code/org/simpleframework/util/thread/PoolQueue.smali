.class Lorg/simpleframework/util/thread/PoolQueue;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PoolQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/util/thread/PoolQueue$Queue;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;II)V
    .registers 11
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "rest"    # I
    .param p3, "active"    # I

    .prologue
    .line 48
    const-wide/16 v4, 0x78

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/simpleframework/util/thread/PoolQueue;-><init>(Ljava/lang/Class;IIJLjava/util/concurrent/TimeUnit;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IIJLjava/util/concurrent/TimeUnit;)V
    .registers 17
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "rest"    # I
    .param p3, "active"    # I
    .param p4, "duration"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 64
    new-instance v7, Lorg/simpleframework/util/thread/PoolQueue$Queue;

    invoke-direct {v7}, Lorg/simpleframework/util/thread/PoolQueue$Queue;-><init>()V

    new-instance v8, Lorg/simpleframework/util/thread/PoolFactory;

    invoke-direct {v8, p1}, Lorg/simpleframework/util/thread/PoolFactory;-><init>(Ljava/lang/Class;)V

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 65
    return-void
.end method


# virtual methods
.method public join()V
    .registers 6

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/simpleframework/util/thread/PoolQueue;->isTerminated()Z

    move-result v0

    .line 76
    .local v0, "dead":Z
    :goto_4
    if-nez v0, :cond_10

    .line 78
    const-wide/16 v2, 0xa

    :try_start_8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v4}, Lorg/simpleframework/util/thread/PoolQueue;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v0

    goto :goto_4

    .line 79
    :catch_f
    move-exception v1

    .line 83
    :cond_10
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/simpleframework/util/thread/PoolQueue;->shutdown()V

    .line 93
    invoke-virtual {p0}, Lorg/simpleframework/util/thread/PoolQueue;->join()V

    .line 94
    return-void
.end method
