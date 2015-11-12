.class Lorg/simpleframework/util/lease/LeaseCleaner;
.super Lorg/simpleframework/util/thread/Daemon;
.source "LeaseCleaner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/simpleframework/util/thread/Daemon;"
    }
.end annotation


# instance fields
.field private cleaner:Lorg/simpleframework/util/lease/Cleaner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/lease/Cleaner",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile dead:Z

.field private queue:Lorg/simpleframework/util/lease/ContractQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/lease/ContractQueue",
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
    .line 61
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseCleaner;, "Lorg/simpleframework/util/lease/LeaseCleaner<TT;>;"
    .local p1, "cleaner":Lorg/simpleframework/util/lease/Cleaner;, "Lorg/simpleframework/util/lease/Cleaner<TT;>;"
    invoke-direct {p0}, Lorg/simpleframework/util/thread/Daemon;-><init>()V

    .line 62
    new-instance v0, Lorg/simpleframework/util/lease/ContractQueue;

    invoke-direct {v0}, Lorg/simpleframework/util/lease/ContractQueue;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->queue:Lorg/simpleframework/util/lease/ContractQueue;

    .line 63
    iput-object p1, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->cleaner:Lorg/simpleframework/util/lease/Cleaner;

    .line 64
    invoke-virtual {p0}, Lorg/simpleframework/util/lease/LeaseCleaner;->start()V

    .line 65
    return-void
.end method

.method private clean()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseCleaner;, "Lorg/simpleframework/util/lease/LeaseCleaner<TT;>;"
    iget-object v2, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->queue:Lorg/simpleframework/util/lease/ContractQueue;

    invoke-virtual {v2}, Lorg/simpleframework/util/lease/ContractQueue;->take()Ljava/util/concurrent/Delayed;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/util/lease/Contract;

    .line 123
    .local v1, "next":Lorg/simpleframework/util/lease/Contract;, "Lorg/simpleframework/util/lease/Contract<TT;>;"
    invoke-interface {v1}, Lorg/simpleframework/util/lease/Contract;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "key":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_13

    .line 126
    iget-object v2, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->cleaner:Lorg/simpleframework/util/lease/Cleaner;

    invoke-interface {v2, v0}, Lorg/simpleframework/util/lease/Cleaner;->clean(Ljava/lang/Object;)V

    .line 128
    :cond_13
    return-void
.end method

.method private purge()V
    .registers 8

    .prologue
    .line 138
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseCleaner;, "Lorg/simpleframework/util/lease/LeaseCleaner<TT;>;"
    iget-object v4, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->queue:Lorg/simpleframework/util/lease/ContractQueue;

    invoke-virtual {v4}, Lorg/simpleframework/util/lease/ContractQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/util/lease/Contract;

    .line 139
    .local v3, "next":Lorg/simpleframework/util/lease/Contract;, "Lorg/simpleframework/util/lease/Contract<TT;>;"
    invoke-interface {v3}, Lorg/simpleframework/util/lease/Contract;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 142
    .local v2, "key":Ljava/lang/Object;, "TT;"
    const-wide/16 v4, 0x0

    :try_start_18
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Lorg/simpleframework/util/lease/Contract;->setDelay(JLjava/util/concurrent/TimeUnit;)V

    .line 143
    iget-object v4, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->cleaner:Lorg/simpleframework/util/lease/Cleaner;

    invoke-interface {v4, v2}, Lorg/simpleframework/util/lease/Cleaner;->clean(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_22} :catch_23

    goto :goto_6

    .line 144
    :catch_23
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_6

    .line 148
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "key":Ljava/lang/Object;, "TT;"
    .end local v3    # "next":Lorg/simpleframework/util/lease/Contract;, "Lorg/simpleframework/util/lease/Contract<TT;>;"
    :cond_25
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 157
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseCleaner;, "Lorg/simpleframework/util/lease/LeaseCleaner<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->dead:Z

    .line 158
    invoke-virtual {p0}, Lorg/simpleframework/util/lease/LeaseCleaner;->interrupt()V

    .line 159
    return-void
.end method

.method public issue(Lorg/simpleframework/util/lease/Contract;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Contract",
            "<TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseCleaner;, "Lorg/simpleframework/util/lease/LeaseCleaner<TT;>;"
    .local p1, "contract":Lorg/simpleframework/util/lease/Contract;, "Lorg/simpleframework/util/lease/Contract<TT;>;"
    iget-boolean v0, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->dead:Z

    if-eqz v0, :cond_f

    .line 92
    new-instance v0, Lorg/simpleframework/util/lease/LeaseException;

    const-string v1, "Lease can not be issued"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/lease/LeaseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 94
    :cond_f
    iget-object v0, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->queue:Lorg/simpleframework/util/lease/ContractQueue;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/lease/ContractQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public revoke(Lorg/simpleframework/util/lease/Contract;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Contract",
            "<TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseCleaner;, "Lorg/simpleframework/util/lease/LeaseCleaner<TT;>;"
    .local p1, "contract":Lorg/simpleframework/util/lease/Contract;, "Lorg/simpleframework/util/lease/Contract<TT;>;"
    iget-boolean v0, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->dead:Z

    if-eqz v0, :cond_f

    .line 77
    new-instance v0, Lorg/simpleframework/util/lease/LeaseException;

    const-string v1, "Lease can not be revoked"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/lease/LeaseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 79
    :cond_f
    iget-object v0, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->queue:Lorg/simpleframework/util/lease/ContractQueue;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/lease/ContractQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 105
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseCleaner;, "Lorg/simpleframework/util/lease/LeaseCleaner<TT;>;"
    :goto_0
    iget-boolean v1, p0, Lorg/simpleframework/util/lease/LeaseCleaner;->dead:Z

    if-nez v1, :cond_a

    .line 107
    :try_start_4
    invoke-direct {p0}, Lorg/simpleframework/util/lease/LeaseCleaner;->clean()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    .line 108
    :catch_8
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_a
    invoke-direct {p0}, Lorg/simpleframework/util/lease/LeaseCleaner;->purge()V

    .line 113
    return-void
.end method
