.class Lorg/simpleframework/util/lease/Maintainer;
.super Ljava/lang/Object;
.source "Maintainer.java"

# interfaces
.implements Lorg/simpleframework/util/lease/Controller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/util/lease/Controller",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private queue:Lorg/simpleframework/util/lease/LeaseCleaner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/lease/LeaseCleaner",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/lease/Cleaner;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Cleaner",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/simpleframework/util/lease/Maintainer;, "Lorg/simpleframework/util/lease/Maintainer<TT;>;"
    .local p1, "cleaner":Lorg/simpleframework/util/lease/Cleaner;, "Lorg/simpleframework/util/lease/Cleaner<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/simpleframework/util/lease/LeaseCleaner;

    invoke-direct {v0, p1}, Lorg/simpleframework/util/lease/LeaseCleaner;-><init>(Lorg/simpleframework/util/lease/Cleaner;)V

    iput-object v0, p0, Lorg/simpleframework/util/lease/Maintainer;->queue:Lorg/simpleframework/util/lease/LeaseCleaner;

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(Lorg/simpleframework/util/lease/Contract;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Contract",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/simpleframework/util/lease/Maintainer;, "Lorg/simpleframework/util/lease/Maintainer<TT;>;"
    .local p1, "contract":Lorg/simpleframework/util/lease/Contract;, "Lorg/simpleframework/util/lease/Contract<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/simpleframework/util/lease/Maintainer;->queue:Lorg/simpleframework/util/lease/LeaseCleaner;

    invoke-virtual {v1, p1}, Lorg/simpleframework/util/lease/LeaseCleaner;->revoke(Lorg/simpleframework/util/lease/Contract;)Z

    move-result v0

    .line 102
    .local v0, "active":Z
    if-nez v0, :cond_1a

    .line 103
    new-instance v1, Lorg/simpleframework/util/lease/LeaseException;

    const-string v2, "Lease has expired for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/util/lease/LeaseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_17

    .line 100
    .end local v0    # "active":Z
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1

    .line 105
    .restart local v0    # "active":Z
    :cond_1a
    const-wide/16 v2, 0x0

    :try_start_1c
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v1}, Lorg/simpleframework/util/lease/Contract;->setDelay(JLjava/util/concurrent/TimeUnit;)V

    .line 106
    iget-object v1, p0, Lorg/simpleframework/util/lease/Maintainer;->queue:Lorg/simpleframework/util/lease/LeaseCleaner;

    invoke-virtual {v1, p1}, Lorg/simpleframework/util/lease/LeaseCleaner;->issue(Lorg/simpleframework/util/lease/Contract;)Z
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_17

    .line 107
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 119
    .local p0, "this":Lorg/simpleframework/util/lease/Maintainer;, "Lorg/simpleframework/util/lease/Maintainer<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/simpleframework/util/lease/Maintainer;->queue:Lorg/simpleframework/util/lease/LeaseCleaner;

    invoke-virtual {v0}, Lorg/simpleframework/util/lease/LeaseCleaner;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 120
    monitor-exit p0

    return-void

    .line 119
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized issue(Lorg/simpleframework/util/lease/Contract;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Contract",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/simpleframework/util/lease/Maintainer;, "Lorg/simpleframework/util/lease/Maintainer<TT;>;"
    .local p1, "contract":Lorg/simpleframework/util/lease/Contract;, "Lorg/simpleframework/util/lease/Contract<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/simpleframework/util/lease/Maintainer;->queue:Lorg/simpleframework/util/lease/LeaseCleaner;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/lease/LeaseCleaner;->issue(Lorg/simpleframework/util/lease/Contract;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized renew(Lorg/simpleframework/util/lease/Contract;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Contract",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/simpleframework/util/lease/Maintainer;, "Lorg/simpleframework/util/lease/Maintainer<TT;>;"
    .local p1, "contract":Lorg/simpleframework/util/lease/Contract;, "Lorg/simpleframework/util/lease/Contract<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/simpleframework/util/lease/Maintainer;->queue:Lorg/simpleframework/util/lease/LeaseCleaner;

    invoke-virtual {v1, p1}, Lorg/simpleframework/util/lease/LeaseCleaner;->revoke(Lorg/simpleframework/util/lease/Contract;)Z

    move-result v0

    .line 82
    .local v0, "active":Z
    if-nez v0, :cond_1a

    .line 83
    new-instance v1, Lorg/simpleframework/util/lease/LeaseException;

    const-string v2, "Lease has expired for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/util/lease/LeaseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_17

    .line 80
    .end local v0    # "active":Z
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1

    .line 85
    .restart local v0    # "active":Z
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lorg/simpleframework/util/lease/Maintainer;->queue:Lorg/simpleframework/util/lease/LeaseCleaner;

    invoke-virtual {v1, p1}, Lorg/simpleframework/util/lease/LeaseCleaner;->issue(Lorg/simpleframework/util/lease/Contract;)Z
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    .line 86
    monitor-exit p0

    return-void
.end method
