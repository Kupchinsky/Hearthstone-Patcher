.class public Lorg/simpleframework/transport/reactor/DirectReactor;
.super Ljava/lang/Object;
.source "DirectReactor.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Reactor;


# instance fields
.field private exchange:Lorg/simpleframework/transport/reactor/Distributor;

.field private executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/transport/reactor/DirectReactor;-><init>(Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/simpleframework/util/thread/DirectExecutor;

    invoke-direct {v0}, Lorg/simpleframework/util/thread/DirectExecutor;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/transport/reactor/DirectReactor;->executor:Ljava/util/concurrent/Executor;

    .line 66
    new-instance v0, Lorg/simpleframework/transport/reactor/ActionDistributor;

    iget-object v1, p0, Lorg/simpleframework/transport/reactor/DirectReactor;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Lorg/simpleframework/transport/reactor/ActionDistributor;-><init>(Ljava/util/concurrent/Executor;Z)V

    iput-object v0, p0, Lorg/simpleframework/transport/reactor/DirectReactor;->exchange:Lorg/simpleframework/transport/reactor/Distributor;

    .line 67
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
    .line 80
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/DirectReactor;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
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
    .line 94
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/DirectReactor;->exchange:Lorg/simpleframework/transport/reactor/Distributor;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/transport/reactor/Distributor;->process(Lorg/simpleframework/transport/reactor/Operation;I)V

    .line 95
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
    .line 105
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/DirectReactor;->exchange:Lorg/simpleframework/transport/reactor/Distributor;

    invoke-interface {v0}, Lorg/simpleframework/transport/reactor/Distributor;->close()V

    .line 106
    return-void
.end method
