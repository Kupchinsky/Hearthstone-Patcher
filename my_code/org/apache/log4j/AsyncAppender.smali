.class public Lorg/apache/log4j/AsyncAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "AsyncAppender.java"

# interfaces
.implements Lorg/apache/log4j/spi/AppenderAttachable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/AsyncAppender$Dispatcher;,
        Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x80


# instance fields
.field aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private final appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private blocking:Z

.field private final buffer:Ljava/util/List;

.field private bufferSize:I

.field private final discardMap:Ljava/util/Map;

.field private final dispatcher:Ljava/lang/Thread;

.field private locationInfo:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 105
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    .line 77
    const/16 v0, 0x80

    iput v0, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    .line 100
    iput-boolean v5, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    .line 106
    new-instance v0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 110
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/log4j/AsyncAppender$Dispatcher;

    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/apache/log4j/AsyncAppender$Dispatcher;-><init>(Lorg/apache/log4j/AsyncAppender;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/helpers/AppenderAttachableImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    .line 117
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 121
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "AsyncAppender-Dispatcher-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/log4j/Appender;)V
    .registers 4
    .param p1, "newAppender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 131
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 132
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 10
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 144
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_10

    iget v5, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    if-gtz v5, :cond_1d

    .line 145
    :cond_10
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v6

    .line 146
    :try_start_13
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v5, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    .line 147
    monitor-exit v6

    .line 225
    :goto_19
    return-void

    .line 147
    :catchall_1a
    move-exception v5

    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v5

    .line 154
    :cond_1d
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 158
    iget-boolean v5, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    if-eqz v5, :cond_2d

    .line 159
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 161
    :cond_2d
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 164
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v6

    .line 166
    :cond_36
    :try_start_36
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 168
    .local v3, "previousSize":I
    iget v5, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    if-ge v3, v5, :cond_51

    .line 169
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    if-nez v3, :cond_4c

    .line 177
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 224
    :cond_4c
    :goto_4c
    monitor-exit v6

    goto :goto_19

    .end local v3    # "previousSize":I
    :catchall_4e
    move-exception v5

    monitor-exit v6
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_4e

    throw v5

    .line 190
    .restart local v3    # "previousSize":I
    :cond_51
    const/4 v0, 0x1

    .line 191
    .local v0, "discard":Z
    :try_start_52
    iget-boolean v5, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    if-eqz v5, :cond_6a

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_4e

    if-eq v5, v7, :cond_6a

    .line 195
    :try_start_64
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_69} :catch_85
    .catchall {:try_start_64 .. :try_end_69} :catchall_4e

    .line 196
    const/4 v0, 0x0

    .line 210
    :cond_6a
    :goto_6a
    if-eqz v0, :cond_36

    .line 211
    :try_start_6c
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "loggerName":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    .line 214
    .local v4, "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    if-nez v4, :cond_8e

    .line 215
    new-instance v4, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    .end local v4    # "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    invoke-direct {v4, p1}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;-><init>(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 216
    .restart local v4    # "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 197
    .end local v2    # "loggerName":Ljava/lang/String;
    .end local v4    # "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    :catch_85
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_6a

    .line 218
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "loggerName":Ljava/lang/String;
    .restart local v4    # "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    :cond_8e
    invoke-virtual {v4, p1}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->add(Lorg/apache/log4j/spi/LoggingEvent;)V
    :try_end_91
    .catchall {:try_start_6c .. :try_end_91} :catchall_4e

    goto :goto_4c
.end method

.method public close()V
    .registers 6

    .prologue
    .line 236
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v4

    .line 237
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 238
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 239
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_33

    .line 242
    :try_start_c
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_36

    .line 253
    :goto_11
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v4

    .line 254
    :try_start_14
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v3}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v1

    .line 256
    .local v1, "iter":Ljava/util/Enumeration;
    if-eqz v1, :cond_44

    .line 257
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 258
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 260
    .local v2, "next":Ljava/lang/Object;
    instance-of v3, v2, Lorg/apache/log4j/Appender;

    if-eqz v3, :cond_1c

    .line 261
    check-cast v2, Lorg/apache/log4j/Appender;

    .end local v2    # "next":Ljava/lang/Object;
    invoke-interface {v2}, Lorg/apache/log4j/Appender;->close()V

    goto :goto_1c

    .line 265
    .end local v1    # "iter":Ljava/util/Enumeration;
    :catchall_30
    move-exception v3

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_30

    throw v3

    .line 239
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v3

    .line 243
    :catch_36
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 245
    const-string v3, "Got an InterruptedException while waiting for the dispatcher to finish."

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 265
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "iter":Ljava/util/Enumeration;
    :cond_44
    :try_start_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_30

    .line 266
    return-void
.end method

.method public getAllAppenders()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 273
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 274
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 275
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 286
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 287
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getBlocking()Z
    .registers 2

    .prologue
    .line 421
    iget-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    return v0
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    return v0
.end method

.method public getLocationInfo()Z
    .registers 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    return v0
.end method

.method public isAttached(Lorg/apache/log4j/Appender;)Z
    .registers 4
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 306
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 307
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->isAttached(Lorg/apache/log4j/Appender;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 308
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public removeAllAppenders()V
    .registers 3

    .prologue
    .line 322
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 323
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAllAppenders()V

    .line 324
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeAppender(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 343
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAppender(Ljava/lang/String;)V

    .line 344
    monitor-exit v1

    .line 345
    return-void

    .line 344
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeAppender(Lorg/apache/log4j/Appender;)V
    .registers 4
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 332
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 333
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAppender(Lorg/apache/log4j/Appender;)V

    .line 334
    monitor-exit v1

    .line 335
    return-void

    .line 334
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public setBlocking(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 406
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v1

    .line 407
    :try_start_3
    iput-boolean p1, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    .line 408
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setBufferSize(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    const/4 v0, 0x1

    .line 377
    if-gez p1, :cond_b

    .line 378
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    const-string v1, "size"

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_b
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v1

    .line 385
    if-ge p1, v0, :cond_11

    move p1, v0

    .end local p1    # "size":I
    :cond_11
    :try_start_11
    iput p1, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    .line 386
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setLocationInfo(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    .line 362
    return-void
.end method
