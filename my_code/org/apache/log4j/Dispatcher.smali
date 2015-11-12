.class Lorg/apache/log4j/Dispatcher;
.super Ljava/lang/Thread;
.source "Dispatcher.java"


# instance fields
.field private aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private bf:Lorg/apache/log4j/helpers/BoundedFIFO;

.field container:Lorg/apache/log4j/AsyncAppender;

.field private interrupted:Z


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/BoundedFIFO;Lorg/apache/log4j/AsyncAppender;)V
    .registers 5
    .param p1, "bf"    # Lorg/apache/log4j/helpers/BoundedFIFO;
    .param p2, "container"    # Lorg/apache/log4j/AsyncAppender;

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/Dispatcher;->interrupted:Z

    .line 45
    iput-object p1, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    .line 46
    iput-object p2, p0, Lorg/apache/log4j/Dispatcher;->container:Lorg/apache/log4j/AsyncAppender;

    .line 47
    iget-object v0, p2, Lorg/apache/log4j/AsyncAppender;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    iput-object v0, p0, Lorg/apache/log4j/Dispatcher;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Dispatcher-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    .prologue
    .line 63
    iget-object v1, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    monitor-enter v1

    .line 64
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lorg/apache/log4j/Dispatcher;->interrupted:Z

    .line 68
    iget-object v0, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/BoundedFIFO;->length()I

    move-result v0

    if-nez v0, :cond_13

    .line 69
    iget-object v0, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 71
    :cond_13
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 89
    :goto_0
    iget-object v3, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    monitor-enter v3

    .line 90
    :try_start_3
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/BoundedFIFO;->length()I

    move-result v2

    if-nez v2, :cond_1b

    .line 92
    iget-boolean v2, p0, Lorg/apache/log4j/Dispatcher;->interrupted:Z

    if-eqz v2, :cond_16

    .line 94
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_47

    .line 123
    :goto_10
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAllAppenders()V

    .line 124
    return-void

    .line 99
    :cond_16
    :try_start_16
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_44
    .catchall {:try_start_16 .. :try_end_1b} :catchall_47

    .line 105
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/BoundedFIFO;->get()Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v1

    .line 107
    .local v1, "event":Lorg/apache/log4j/spi/LoggingEvent;
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/BoundedFIFO;->wasFull()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 109
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 111
    :cond_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_47

    .line 114
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->container:Lorg/apache/log4j/AsyncAppender;

    iget-object v3, v2, Lorg/apache/log4j/AsyncAppender;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v3

    .line 115
    :try_start_34
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    if-eqz v2, :cond_3f

    if-eqz v1, :cond_3f

    .line 116
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v2, v1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    .line 118
    :cond_3f
    monitor-exit v3

    goto :goto_0

    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_41

    throw v2

    .line 100
    .end local v1    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    :catch_44
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_45
    monitor-exit v3

    goto :goto_10

    .line 111
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_47
    move-exception v2

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v2
.end method
