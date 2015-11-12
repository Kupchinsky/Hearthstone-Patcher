.class Lorg/simpleframework/transport/SecureNegotiator;
.super Ljava/lang/Object;
.source "SecureNegotiator.java"

# interfaces
.implements Lorg/simpleframework/transport/Negotiator;


# instance fields
.field private final executor:Lorg/simpleframework/util/thread/PoolExecutor;

.field private final reactor:Lorg/simpleframework/transport/reactor/Reactor;

.field private final transporter:Lorg/simpleframework/transport/Processor;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Processor;I)V
    .registers 5
    .param p1, "transporter"    # Lorg/simpleframework/transport/Processor;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/simpleframework/util/thread/PoolExecutor;

    const-class v1, Lorg/simpleframework/transport/Notifier;

    invoke-direct {v0, v1, p2}, Lorg/simpleframework/util/thread/PoolExecutor;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lorg/simpleframework/transport/SecureNegotiator;->executor:Lorg/simpleframework/util/thread/PoolExecutor;

    .line 66
    new-instance v0, Lorg/simpleframework/transport/reactor/ExecutorReactor;

    iget-object v1, p0, Lorg/simpleframework/transport/SecureNegotiator;->executor:Lorg/simpleframework/util/thread/PoolExecutor;

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/reactor/ExecutorReactor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/simpleframework/transport/SecureNegotiator;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    .line 67
    iput-object p1, p0, Lorg/simpleframework/transport/SecureNegotiator;->transporter:Lorg/simpleframework/transport/Processor;

    .line 68
    return-void
.end method


# virtual methods
.method public process(Lorg/simpleframework/transport/Transport;)V
    .registers 3
    .param p1, "transport"    # Lorg/simpleframework/transport/Transport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/simpleframework/transport/SecureNegotiator;->transporter:Lorg/simpleframework/transport/Processor;

    invoke-interface {v0, p1}, Lorg/simpleframework/transport/Processor;->process(Lorg/simpleframework/transport/Transport;)V

    .line 108
    return-void
.end method

.method public process(Lorg/simpleframework/transport/reactor/Operation;)V
    .registers 3
    .param p1, "task"    # Lorg/simpleframework/transport/reactor/Operation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/simpleframework/transport/SecureNegotiator;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    invoke-interface {v0, p1}, Lorg/simpleframework/transport/reactor/Reactor;->process(Lorg/simpleframework/transport/reactor/Operation;)V

    .line 82
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
    .line 95
    iget-object v0, p0, Lorg/simpleframework/transport/SecureNegotiator;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/transport/reactor/Reactor;->process(Lorg/simpleframework/transport/reactor/Operation;I)V

    .line 96
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
    .line 118
    iget-object v0, p0, Lorg/simpleframework/transport/SecureNegotiator;->executor:Lorg/simpleframework/util/thread/PoolExecutor;

    invoke-virtual {v0}, Lorg/simpleframework/util/thread/PoolExecutor;->stop()V

    .line 119
    iget-object v0, p0, Lorg/simpleframework/transport/SecureNegotiator;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    invoke-interface {v0}, Lorg/simpleframework/transport/reactor/Reactor;->stop()V

    .line 120
    return-void
.end method
