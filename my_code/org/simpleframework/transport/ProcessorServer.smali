.class public Lorg/simpleframework/transport/ProcessorServer;
.super Ljava/lang/Object;
.source "ProcessorServer.java"

# interfaces
.implements Lorg/simpleframework/transport/Server;


# instance fields
.field private final factory:Lorg/simpleframework/transport/OperationFactory;

.field private final negotiator:Lorg/simpleframework/transport/Negotiator;

.field private final trigger:Lorg/simpleframework/util/thread/Daemon;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Processor;)V
    .registers 3
    .param p1, "processor"    # Lorg/simpleframework/transport/Processor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/ProcessorServer;-><init>(Lorg/simpleframework/transport/Processor;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/transport/Processor;I)V
    .registers 4
    .param p1, "processor"    # Lorg/simpleframework/transport/Processor;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/16 v0, 0x5000

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/transport/ProcessorServer;-><init>(Lorg/simpleframework/transport/Processor;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/transport/Processor;II)V
    .registers 6
    .param p1, "processor"    # Lorg/simpleframework/transport/Processor;
    .param p2, "count"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lorg/simpleframework/transport/SecureNegotiator;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/transport/SecureNegotiator;-><init>(Lorg/simpleframework/transport/Processor;I)V

    iput-object v0, p0, Lorg/simpleframework/transport/ProcessorServer;->negotiator:Lorg/simpleframework/transport/Negotiator;

    .line 89
    new-instance v0, Lorg/simpleframework/transport/OperationFactory;

    iget-object v1, p0, Lorg/simpleframework/transport/ProcessorServer;->negotiator:Lorg/simpleframework/transport/Negotiator;

    invoke-direct {v0, v1, p3}, Lorg/simpleframework/transport/OperationFactory;-><init>(Lorg/simpleframework/transport/Negotiator;I)V

    iput-object v0, p0, Lorg/simpleframework/transport/ProcessorServer;->factory:Lorg/simpleframework/transport/OperationFactory;

    .line 90
    new-instance v0, Lorg/simpleframework/transport/StopTrigger;

    iget-object v1, p0, Lorg/simpleframework/transport/ProcessorServer;->negotiator:Lorg/simpleframework/transport/Negotiator;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/transport/StopTrigger;-><init>(Lorg/simpleframework/transport/Processor;Lorg/simpleframework/transport/reactor/Reactor;)V

    iput-object v0, p0, Lorg/simpleframework/transport/ProcessorServer;->trigger:Lorg/simpleframework/util/thread/Daemon;

    .line 91
    return-void
.end method


# virtual methods
.method public process(Lorg/simpleframework/transport/Socket;)V
    .registers 4
    .param p1, "socket"    # Lorg/simpleframework/transport/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lorg/simpleframework/transport/ProcessorServer;->factory:Lorg/simpleframework/transport/OperationFactory;

    invoke-virtual {v1, p1}, Lorg/simpleframework/transport/OperationFactory;->getInstance(Lorg/simpleframework/transport/Socket;)Lorg/simpleframework/transport/reactor/Operation;

    move-result-object v0

    .line 109
    .local v0, "task":Lorg/simpleframework/transport/reactor/Operation;
    if-eqz v0, :cond_d

    .line 110
    iget-object v1, p0, Lorg/simpleframework/transport/ProcessorServer;->negotiator:Lorg/simpleframework/transport/Negotiator;

    invoke-interface {v1, v0}, Lorg/simpleframework/transport/Negotiator;->process(Lorg/simpleframework/transport/reactor/Operation;)V

    .line 112
    :cond_d
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
    .line 132
    iget-object v0, p0, Lorg/simpleframework/transport/ProcessorServer;->trigger:Lorg/simpleframework/util/thread/Daemon;

    invoke-virtual {v0}, Lorg/simpleframework/util/thread/Daemon;->start()V

    .line 133
    return-void
.end method
