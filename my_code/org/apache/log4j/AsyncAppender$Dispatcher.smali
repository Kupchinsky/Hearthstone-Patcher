.class Lorg/apache/log4j/AsyncAppender$Dispatcher;
.super Ljava/lang/Object;
.source "AsyncAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/AsyncAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dispatcher"
.end annotation


# instance fields
.field private final appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private final buffer:Ljava/util/List;

.field private final discardMap:Ljava/util/Map;

.field private final parent:Lorg/apache/log4j/AsyncAppender;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/AsyncAppender;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/helpers/AppenderAttachableImpl;)V
    .registers 5
    .param p1, "parent"    # Lorg/apache/log4j/AsyncAppender;
    .param p2, "buffer"    # Ljava/util/List;
    .param p3, "discardMap"    # Ljava/util/Map;
    .param p4, "appenders"    # Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    .line 518
    iput-object p2, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    .line 519
    iput-object p4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 520
    iput-object p3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    .line 521
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 527
    const/4 v6, 0x1

    .line 536
    .local v6, "isActive":Z
    :cond_3
    if-eqz v6, :cond_92

    .line 537
    const/4 v1, 0x0

    .line 543
    .local v1, "events":[Lorg/apache/log4j/spi/LoggingEvent;
    :try_start_6
    iget-object v11, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    monitor-enter v11
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_8a

    .line 544
    :try_start_9
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 545
    .local v0, "bufferSize":I
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iget-boolean v8, v8, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-nez v8, :cond_2d

    move v6, v9

    .line 547
    :goto_16
    if-nez v0, :cond_31

    if-eqz v6, :cond_31

    .line 548
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 549
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 550
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iget-boolean v8, v8, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-nez v8, :cond_2f

    move v6, v9

    :goto_2c
    goto :goto_16

    :cond_2d
    move v6, v10

    .line 545
    goto :goto_16

    :cond_2f
    move v6, v10

    .line 550
    goto :goto_2c

    .line 553
    :cond_31
    if-lez v0, :cond_72

    .line 554
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    add-int/2addr v8, v0

    new-array v1, v8, [Lorg/apache/log4j/spi/LoggingEvent;

    .line 555
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 560
    move v4, v0

    .line 563
    .local v4, "index":I
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "iter":Ljava/util/Iterator;
    move v5, v4

    .line 564
    .end local v4    # "index":I
    .local v5, "index":I
    :goto_4d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    .line 565
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    invoke-virtual {v8}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->createEvent()Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v8

    aput-object v8, v1, v5

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_4d

    .line 571
    :cond_63
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 572
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 576
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 578
    .end local v5    # "index":I
    .end local v7    # "iter":Ljava/util/Iterator;
    :cond_72
    monitor-exit v11
    :try_end_73
    .catchall {:try_start_9 .. :try_end_73} :catchall_87

    .line 583
    if-eqz v1, :cond_3

    .line 584
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_76
    :try_start_76
    array-length v8, v1

    if-ge v3, v8, :cond_3

    .line 585
    iget-object v11, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v11
    :try_end_7c
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_7c} :catch_8a

    .line 586
    :try_start_7c
    iget-object v8, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    aget-object v12, v1, v3

    invoke-virtual {v8, v12}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    .line 587
    monitor-exit v11
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_93

    .line 584
    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    .line 578
    .end local v0    # "bufferSize":I
    .end local v3    # "i":I
    :catchall_87
    move-exception v8

    :try_start_88
    monitor-exit v11
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    :try_start_89
    throw v8
    :try_end_8a
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_8a} :catch_8a

    .line 591
    :catch_8a
    move-exception v2

    .line 592
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 594
    .end local v1    # "events":[Lorg/apache/log4j/spi/LoggingEvent;
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :cond_92
    return-void

    .line 587
    .restart local v0    # "bufferSize":I
    .restart local v1    # "events":[Lorg/apache/log4j/spi/LoggingEvent;
    .restart local v3    # "i":I
    :catchall_93
    move-exception v8

    :try_start_94
    monitor-exit v11
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw v8
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_96} :catch_8a
.end method
