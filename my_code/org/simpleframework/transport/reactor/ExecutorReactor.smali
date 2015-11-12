.class public Lorg/simpleframework/transport/reactor/ExecutorReactor;
.super Ljava/lang/Object;
.source "ExecutorReactor.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Reactor;


# instance fields
.field private final exchange:Lorg/simpleframework/transport/reactor/Distributor;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/reactor/ExecutorReactor;-><init>(Ljava/util/concurrent/Executor;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const-wide/32 v0, 0x1d4c0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/simpleframework/transport/reactor/ExecutorReactor;-><init>(Ljava/util/concurrent/Executor;IJ)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;IJ)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "count"    # I
    .param p3, "expiry"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lorg/simpleframework/transport/reactor/PartitionDistributor;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/simpleframework/transport/reactor/PartitionDistributor;-><init>(Ljava/util/concurrent/Executor;IJ)V

    iput-object v0, p0, Lorg/simpleframework/transport/reactor/ExecutorReactor;->exchange:Lorg/simpleframework/transport/reactor/Distributor;

    .line 87
    iput-object p1, p0, Lorg/simpleframework/transport/reactor/ExecutorReactor;->executor:Ljava/util/concurrent/Executor;

    .line 88
    return-void
.end method


# virtual methods
.method public process(Lorg/simpleframework/transport/reactor/Operation;)V
    .registers 3
    .param p1, "task"    # Lorg/simpleframework/transport/reactor/Operation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/ExecutorReactor;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public process(Lorg/simpleframework/transport/reactor/Operation;I)V
    .registers 4
    .param p1, "task"    # Lorg/simpleframework/transport/reactor/Operation;
    .param p2, "require"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/ExecutorReactor;->exchange:Lorg/simpleframework/transport/reactor/Distributor;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/transport/reactor/Distributor;->process(Lorg/simpleframework/transport/reactor/Operation;I)V

    .line 116
    return-void
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/ExecutorReactor;->exchange:Lorg/simpleframework/transport/reactor/Distributor;

    invoke-interface {v0}, Lorg/simpleframework/transport/reactor/Distributor;->close()V

    .line 127
    return-void
.end method
