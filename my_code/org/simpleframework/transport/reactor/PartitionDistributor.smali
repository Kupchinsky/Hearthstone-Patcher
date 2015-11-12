.class Lorg/simpleframework/transport/reactor/PartitionDistributor;
.super Ljava/lang/Object;
.source "PartitionDistributor.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Distributor;


# instance fields
.field private final list:[Lorg/simpleframework/transport/reactor/Distributor;


# direct methods
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
    .line 51
    const-wide/32 v0, 0x1d4c0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/simpleframework/transport/reactor/PartitionDistributor;-><init>(Ljava/util/concurrent/Executor;IJ)V

    .line 52
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, p2, [Lorg/simpleframework/transport/reactor/Distributor;

    iput-object v0, p0, Lorg/simpleframework/transport/reactor/PartitionDistributor;->list:[Lorg/simpleframework/transport/reactor/Distributor;

    .line 65
    invoke-direct {p0, p1, p3, p4}, Lorg/simpleframework/transport/reactor/PartitionDistributor;->start(Ljava/util/concurrent/Executor;J)V

    .line 66
    return-void
.end method

.method private process(Lorg/simpleframework/transport/reactor/Operation;II)V
    .registers 8
    .param p1, "task"    # Lorg/simpleframework/transport/reactor/Operation;
    .param p2, "require"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-interface {p1}, Lorg/simpleframework/transport/reactor/Operation;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 120
    .local v0, "channel":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 122
    .local v1, "hash":I
    iget-object v2, p0, Lorg/simpleframework/transport/reactor/PartitionDistributor;->list:[Lorg/simpleframework/transport/reactor/Distributor;

    rem-int v3, v1, p3

    aget-object v2, v2, v3

    invoke-interface {v2, p1, p2}, Lorg/simpleframework/transport/reactor/Distributor;->process(Lorg/simpleframework/transport/reactor/Operation;I)V

    .line 123
    return-void
.end method

.method private start(Ljava/util/concurrent/Executor;J)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "expiry"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/simpleframework/transport/reactor/PartitionDistributor;->list:[Lorg/simpleframework/transport/reactor/Distributor;

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 79
    iget-object v1, p0, Lorg/simpleframework/transport/reactor/PartitionDistributor;->list:[Lorg/simpleframework/transport/reactor/Distributor;

    new-instance v2, Lorg/simpleframework/transport/reactor/ActionDistributor;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, p2, p3}, Lorg/simpleframework/transport/reactor/ActionDistributor;-><init>(Ljava/util/concurrent/Executor;ZJ)V

    aput-object v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_13
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/PartitionDistributor;->list:[Lorg/simpleframework/transport/reactor/Distributor;

    .local v0, "arr$":[Lorg/simpleframework/transport/reactor/Distributor;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 133
    .local v1, "entry":Lorg/simpleframework/transport/reactor/Distributor;
    invoke-interface {v1}, Lorg/simpleframework/transport/reactor/Distributor;->close()V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 135
    .end local v1    # "entry":Lorg/simpleframework/transport/reactor/Distributor;
    :cond_e
    return-void
.end method

.method public process(Lorg/simpleframework/transport/reactor/Operation;I)V
    .registers 6
    .param p1, "task"    # Lorg/simpleframework/transport/reactor/Operation;
    .param p2, "require"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lorg/simpleframework/transport/reactor/PartitionDistributor;->list:[Lorg/simpleframework/transport/reactor/Distributor;

    array-length v0, v1

    .line 98
    .local v0, "length":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 99
    iget-object v1, p0, Lorg/simpleframework/transport/reactor/PartitionDistributor;->list:[Lorg/simpleframework/transport/reactor/Distributor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1, p1, p2}, Lorg/simpleframework/transport/reactor/Distributor;->process(Lorg/simpleframework/transport/reactor/Operation;I)V

    .line 103
    :goto_e
    return-void

    .line 101
    :cond_f
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/transport/reactor/PartitionDistributor;->process(Lorg/simpleframework/transport/reactor/Operation;II)V

    goto :goto_e
.end method
