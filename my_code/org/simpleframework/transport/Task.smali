.class abstract Lorg/simpleframework/transport/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Operation;


# instance fields
.field protected final reactor:Lorg/simpleframework/transport/reactor/Reactor;

.field protected final require:I

.field protected final state:Lorg/simpleframework/transport/Negotiation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Negotiation;Lorg/simpleframework/transport/reactor/Reactor;I)V
    .registers 4
    .param p1, "state"    # Lorg/simpleframework/transport/Negotiation;
    .param p2, "reactor"    # Lorg/simpleframework/transport/reactor/Reactor;
    .param p3, "require"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lorg/simpleframework/transport/Task;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    .line 67
    iput p3, p0, Lorg/simpleframework/transport/Task;->require:I

    .line 68
    iput-object p1, p0, Lorg/simpleframework/transport/Task;->state:Lorg/simpleframework/transport/Negotiation;

    .line 69
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/transport/Task;->state:Lorg/simpleframework/transport/Negotiation;

    invoke-interface {v1}, Lorg/simpleframework/transport/Negotiation;->cancel()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 112
    :goto_5
    return-void

    .line 109
    :catch_6
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_5
.end method

.method protected execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/simpleframework/transport/Task;->ready()Z

    move-result v0

    .line 124
    .local v0, "done":Z
    if-nez v0, :cond_e

    .line 125
    iget-object v1, p0, Lorg/simpleframework/transport/Task;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    iget v2, p0, Lorg/simpleframework/transport/Task;->require:I

    invoke-interface {v1, p0, v2}, Lorg/simpleframework/transport/reactor/Reactor;->process(Lorg/simpleframework/transport/reactor/Operation;I)V

    .line 129
    :goto_d
    return-void

    .line 127
    :cond_e
    iget-object v1, p0, Lorg/simpleframework/transport/Task;->state:Lorg/simpleframework/transport/Negotiation;

    invoke-interface {v1}, Lorg/simpleframework/transport/Negotiation;->resume()V

    goto :goto_d
.end method

.method public getChannel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/simpleframework/transport/Task;->state:Lorg/simpleframework/transport/Negotiation;

    invoke-interface {v0}, Lorg/simpleframework/transport/Negotiation;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    return-object v0
.end method

.method protected ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lorg/simpleframework/transport/Task;->execute()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 97
    :goto_3
    return-void

    .line 94
    :catch_4
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/simpleframework/transport/Task;->cancel()V

    goto :goto_3
.end method
