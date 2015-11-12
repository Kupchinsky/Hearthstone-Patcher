.class Lorg/simpleframework/transport/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# instance fields
.field private volatile closed:Z

.field private lock:Ljava/lang/Object;

.field private reactor:Lorg/simpleframework/transport/reactor/Reactor;

.field private volatile running:Z

.field private task:Lorg/simpleframework/transport/reactor/Operation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/reactor/Reactor;Lorg/simpleframework/transport/reactor/Operation;Ljava/lang/Object;)V
    .registers 4
    .param p1, "reactor"    # Lorg/simpleframework/transport/reactor/Reactor;
    .param p2, "task"    # Lorg/simpleframework/transport/reactor/Operation;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/simpleframework/transport/Scheduler;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    .line 82
    iput-object p2, p0, Lorg/simpleframework/transport/Scheduler;->task:Lorg/simpleframework/transport/reactor/Operation;

    .line 83
    iput-object p3, p0, Lorg/simpleframework/transport/Scheduler;->lock:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method private listen()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    iget-boolean v1, p0, Lorg/simpleframework/transport/Scheduler;->closed:Z

    if-nez v1, :cond_c

    .line 131
    iget-object v1, p0, Lorg/simpleframework/transport/Scheduler;->lock:Ljava/lang/Object;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_18

    .line 136
    :cond_c
    iget-boolean v1, p0, Lorg/simpleframework/transport/Scheduler;->closed:Z

    if-eqz v1, :cond_21

    .line 137
    new-instance v1, Lorg/simpleframework/transport/TransportException;

    const-string v2, "Socket closed"

    invoke-direct {v1, v2}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :catch_18
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/simpleframework/transport/TransportException;

    const-string v2, "Schedule error"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/simpleframework/transport/Scheduler;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/transport/Scheduler;->closed:Z

    .line 170
    return-void
.end method

.method public ready()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/simpleframework/transport/Scheduler;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/simpleframework/transport/Scheduler;->running:Z

    .line 159
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/simpleframework/transport/Scheduler;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 149
    return-void
.end method

.method public repeat()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/simpleframework/transport/Scheduler;->closed:Z

    if-eqz v0, :cond_c

    .line 94
    new-instance v0, Lorg/simpleframework/transport/TransportException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_c
    iget-boolean v0, p0, Lorg/simpleframework/transport/Scheduler;->running:Z

    if-eqz v0, :cond_18

    .line 97
    iget-object v0, p0, Lorg/simpleframework/transport/Scheduler;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    iget-object v1, p0, Lorg/simpleframework/transport/Scheduler;->task:Lorg/simpleframework/transport/reactor/Operation;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lorg/simpleframework/transport/reactor/Reactor;->process(Lorg/simpleframework/transport/reactor/Operation;I)V

    .line 99
    :cond_18
    return-void
.end method

.method public schedule(Z)V
    .registers 5
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/simpleframework/transport/Scheduler;->closed:Z

    if-eqz v0, :cond_c

    .line 111
    new-instance v0, Lorg/simpleframework/transport/TransportException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_c
    iget-boolean v0, p0, Lorg/simpleframework/transport/Scheduler;->running:Z

    if-nez v0, :cond_1b

    .line 114
    iget-object v0, p0, Lorg/simpleframework/transport/Scheduler;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    iget-object v1, p0, Lorg/simpleframework/transport/Scheduler;->task:Lorg/simpleframework/transport/reactor/Operation;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lorg/simpleframework/transport/reactor/Reactor;->process(Lorg/simpleframework/transport/reactor/Operation;I)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/transport/Scheduler;->running:Z

    .line 117
    :cond_1b
    if-eqz p1, :cond_20

    .line 118
    invoke-direct {p0}, Lorg/simpleframework/transport/Scheduler;->listen()V

    .line 120
    :cond_20
    return-void
.end method
