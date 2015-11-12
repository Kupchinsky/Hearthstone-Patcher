.class Lorg/simpleframework/transport/reactor/ActionDistributor;
.super Lorg/simpleframework/util/thread/Daemon;
.source "ActionDistributor.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Distributor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;
    }
.end annotation


# instance fields
.field private cancel:Z

.field private volatile dead:Z

.field private executor:Ljava/util/concurrent/Executor;

.field private expiry:J

.field private latch:Lorg/simpleframework/transport/reactor/Latch;

.field private ready:Lorg/simpleframework/transport/reactor/ActionQueue;

.field private selector:Ljava/nio/channels/Selector;

.field private table:Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;

.field private update:J


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
    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/reactor/ActionDistributor;-><init>(Ljava/util/concurrent/Executor;Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const-wide/32 v0, 0x1d4c0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/simpleframework/transport/reactor/ActionDistributor;-><init>(Ljava/util/concurrent/Executor;ZJ)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ZJ)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cancel"    # Z
    .param p3, "expiry"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/simpleframework/util/thread/Daemon;-><init>()V

    .line 139
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->selector:Ljava/nio/channels/Selector;

    .line 140
    new-instance v0, Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;

    invoke-direct {v0, p0}, Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;-><init>(Lorg/simpleframework/transport/reactor/ActionDistributor;)V

    iput-object v0, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->table:Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;

    .line 141
    new-instance v0, Lorg/simpleframework/transport/reactor/ActionQueue;

    invoke-direct {v0}, Lorg/simpleframework/transport/reactor/ActionQueue;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->ready:Lorg/simpleframework/transport/reactor/ActionQueue;

    .line 142
    new-instance v0, Lorg/simpleframework/transport/reactor/Latch;

    invoke-direct {v0}, Lorg/simpleframework/transport/reactor/Latch;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->latch:Lorg/simpleframework/transport/reactor/Latch;

    .line 143
    iput-object p1, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->executor:Ljava/util/concurrent/Executor;

    .line 144
    iput-boolean p2, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->cancel:Z

    .line 145
    iput-wide p3, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->expiry:J

    .line 146
    invoke-virtual {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->start()V

    .line 147
    return-void
.end method

.method private cancel()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v3, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->table:Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;

    invoke-virtual {v3}, Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 322
    .local v2, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 323
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_a

    .line 325
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :cond_1a
    iget-object v3, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->table:Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;

    invoke-virtual {v3}, Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;->clear()V

    .line 326
    return-void
.end method

.method private distribute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-lez v0, :cond_11

    .line 406
    iget-boolean v0, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->dead:Z

    if-nez v0, :cond_11

    .line 407
    invoke-direct {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->process()V

    .line 410
    :cond_11
    return-void
.end method

.method private drain()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v3, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    .line 243
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 244
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {p0, v1, v4, v5}, Lorg/simpleframework/transport/reactor/ActionDistributor;->expire(Ljava/nio/channels/SelectionKey;J)V

    goto :goto_a

    .line 246
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :cond_1f
    iget-object v3, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V

    .line 247
    iget-object v3, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->latch:Lorg/simpleframework/transport/reactor/Latch;

    invoke-virtual {v3}, Lorg/simpleframework/transport/reactor/Latch;->signal()V

    .line 248
    return-void
.end method

.method private execute()V
    .registers 3

    .prologue
    .line 171
    :goto_0
    iget-boolean v1, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->dead:Z

    if-nez v1, :cond_13

    .line 173
    :try_start_4
    invoke-direct {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->register()V

    .line 174
    invoke-direct {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->cancel()V

    .line 175
    invoke-direct {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->expire()V

    .line 176
    invoke-direct {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->distribute()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_0

    .line 177
    :catch_11
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    return-void
.end method

.method private expire()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v3, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    .line 260
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    iget-boolean v3, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->cancel:Z

    if-eqz v3, :cond_2d

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 263
    .local v4, "time":J
    iget-wide v6, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->update:J

    cmp-long v3, v6, v4

    if-gtz v3, :cond_2d

    .line 264
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 265
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-direct {p0, v1, v4, v5}, Lorg/simpleframework/transport/reactor/ActionDistributor;->expire(Ljava/nio/channels/SelectionKey;J)V

    goto :goto_18

    .line 267
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :cond_28
    const-wide/16 v6, 0x2710

    add-long/2addr v6, v4

    iput-wide v6, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->update:J

    .line 270
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "time":J
    :cond_2d
    return-void
.end method

.method private expire(Ljava/nio/channels/SelectionKey;J)V
    .registers 8
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/transport/reactor/Action;

    .line 284
    .local v2, "task":Lorg/simpleframework/transport/reactor/Action;
    if-eqz v2, :cond_13

    .line 285
    invoke-interface {v2}, Lorg/simpleframework/transport/reactor/Action;->getExpiry()J

    move-result-wide v0

    .line 287
    .local v0, "expiry":J
    cmp-long v3, v0, p2

    if-gez v3, :cond_13

    .line 288
    invoke-direct {p0, p1, v2}, Lorg/simpleframework/transport/reactor/ActionDistributor;->expire(Ljava/nio/channels/SelectionKey;Lorg/simpleframework/transport/reactor/Action;)V

    .line 291
    .end local v0    # "expiry":J
    :cond_13
    return-void
.end method

.method private expire(Ljava/nio/channels/SelectionKey;Lorg/simpleframework/transport/reactor/Action;)V
    .registers 4
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .param p2, "action"    # Lorg/simpleframework/transport/reactor/Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lorg/simpleframework/transport/reactor/CancelAction;

    invoke-direct {v0, p2}, Lorg/simpleframework/transport/reactor/CancelAction;-><init>(Lorg/simpleframework/transport/reactor/Action;)V

    .line 306
    .local v0, "cancel":Lorg/simpleframework/transport/reactor/Action;
    if-eqz p1, :cond_d

    .line 307
    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 310
    :cond_d
    invoke-direct {p0, p1}, Lorg/simpleframework/transport/reactor/ActionDistributor;->process(Ljava/nio/channels/SelectionKey;)V

    .line 311
    return-void
.end method

.method private process()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v3, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    .line 421
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 423
    .local v2, "ready":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 424
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 426
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_1b

    .line 427
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 429
    :cond_1b
    if-eqz v0, :cond_a

    .line 430
    invoke-direct {p0, v0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->process(Ljava/nio/channels/SelectionKey;)V

    goto :goto_a

    .line 433
    .end local v0    # "key":Ljava/nio/channels/SelectionKey;
    :cond_21
    return-void
.end method

.method private process(Ljava/nio/channels/SelectionKey;)V
    .registers 5
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 446
    .local v1, "task":Ljava/lang/Runnable;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 448
    .local v0, "channel":Ljava/nio/channels/Channel;
    iget-boolean v2, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->cancel:Z

    if-eqz v2, :cond_13

    .line 449
    iget-object v2, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->table:Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;

    invoke-virtual {v2, v0, p1}, Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_13
    iget-object v2, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method private purge()V
    .registers 2

    .prologue
    .line 191
    :try_start_0
    invoke-direct {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->register()V

    .line 192
    invoke-direct {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->cancel()V

    .line 193
    invoke-direct {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->drain()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 197
    :goto_9
    return-void

    .line 194
    :catch_a
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_9
.end method

.method private register()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->ready:Lorg/simpleframework/transport/reactor/ActionQueue;

    invoke-virtual {v1}, Lorg/simpleframework/transport/reactor/ActionQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 336
    iget-object v1, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->ready:Lorg/simpleframework/transport/reactor/ActionQueue;

    invoke-virtual {v1}, Lorg/simpleframework/transport/reactor/ActionQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/transport/reactor/Action;

    .line 338
    .local v0, "action":Lorg/simpleframework/transport/reactor/Action;
    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0, v0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->register(Lorg/simpleframework/transport/reactor/Action;)V

    goto :goto_0

    .line 342
    .end local v0    # "action":Lorg/simpleframework/transport/reactor/Action;
    :cond_16
    return-void
.end method

.method private register(Lorg/simpleframework/transport/reactor/Action;)V
    .registers 3
    .param p1, "action"    # Lorg/simpleframework/transport/reactor/Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-interface {p1}, Lorg/simpleframework/transport/reactor/Action;->getInterest()I

    move-result v0

    .line 355
    .local v0, "require":I
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->register(Lorg/simpleframework/transport/reactor/Action;I)V

    .line 356
    return-void
.end method

.method private register(Lorg/simpleframework/transport/reactor/Action;I)V
    .registers 6
    .param p1, "action"    # Lorg/simpleframework/transport/reactor/Action;
    .param p2, "require"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-interface {p1}, Lorg/simpleframework/transport/reactor/Action;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 369
    .local v0, "channel":Ljava/nio/channels/SelectableChannel;
    iget-object v2, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->table:Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;

    invoke-virtual {v2, v0}, Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 371
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_15

    .line 372
    invoke-virtual {v1, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 373
    invoke-virtual {v1, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_14
    :goto_14
    return-void

    .line 375
    :cond_15
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 376
    invoke-direct {p0, v0, p2}, Lorg/simpleframework/transport/reactor/ActionDistributor;->select(Ljava/nio/channels/SelectableChannel;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method private select(Ljava/nio/channels/SelectableChannel;I)Ljava/nio/channels/SelectionKey;
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "require"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0, p2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->dead:Z

    .line 229
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 230
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->latch:Lorg/simpleframework/transport/reactor/Latch;

    invoke-virtual {v0}, Lorg/simpleframework/transport/reactor/Latch;->close()V

    .line 231
    return-void
.end method

.method public process(Lorg/simpleframework/transport/reactor/Operation;I)V
    .registers 7
    .param p1, "task"    # Lorg/simpleframework/transport/reactor/Operation;
    .param p2, "require"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lorg/simpleframework/transport/reactor/ExecuteAction;

    iget-wide v2, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->expiry:J

    invoke-direct {v0, p1, p2, v2, v3}, Lorg/simpleframework/transport/reactor/ExecuteAction;-><init>(Lorg/simpleframework/transport/reactor/Operation;IJ)V

    .line 214
    .local v0, "action":Lorg/simpleframework/transport/reactor/Action;
    iget-boolean v1, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->dead:Z

    if-eqz v1, :cond_13

    .line 215
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Distributor is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_13
    iget-object v1, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->ready:Lorg/simpleframework/transport/reactor/ActionQueue;

    invoke-virtual {v1, v0}, Lorg/simpleframework/transport/reactor/ActionQueue;->offer(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lorg/simpleframework/transport/reactor/ActionDistributor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 219
    return-void
.end method

.method public run()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->execute()V

    .line 159
    invoke-direct {p0}, Lorg/simpleframework/transport/reactor/ActionDistributor;->purge()V

    .line 160
    return-void
.end method
