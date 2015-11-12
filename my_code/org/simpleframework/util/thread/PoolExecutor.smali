.class public Lorg/simpleframework/util/thread/PoolExecutor;
.super Ljava/lang/Object;
.source "PoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final queue:Lorg/simpleframework/util/thread/PoolQueue;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Runnable;>;"
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/util/thread/PoolExecutor;-><init>(Ljava/lang/Class;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Runnable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Runnable;>;"
    invoke-direct {p0, p1, p2, p2}, Lorg/simpleframework/util/thread/PoolExecutor;-><init>(Ljava/lang/Class;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;II)V
    .registers 5
    .param p2, "rest"    # I
    .param p3, "active"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Runnable;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Runnable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/simpleframework/util/thread/PoolQueue;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/util/thread/PoolQueue;-><init>(Ljava/lang/Class;II)V

    iput-object v0, p0, Lorg/simpleframework/util/thread/PoolExecutor;->queue:Lorg/simpleframework/util/thread/PoolQueue;

    .line 75
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/util/thread/PoolExecutor;->queue:Lorg/simpleframework/util/thread/PoolQueue;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/thread/PoolQueue;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/simpleframework/util/thread/PoolExecutor;->queue:Lorg/simpleframework/util/thread/PoolQueue;

    invoke-virtual {v0}, Lorg/simpleframework/util/thread/PoolQueue;->stop()V

    .line 96
    return-void
.end method
