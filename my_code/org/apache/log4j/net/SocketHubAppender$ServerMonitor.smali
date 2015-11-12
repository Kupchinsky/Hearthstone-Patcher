.class Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
.super Ljava/lang/Object;
.source "SocketHubAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/net/SocketHubAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerMonitor"
.end annotation


# instance fields
.field private keepRunning:Z

.field private monitorThread:Ljava/lang/Thread;

.field private oosList:Ljava/util/Vector;

.field private port:I

.field private final this$0:Lorg/apache/log4j/net/SocketHubAppender;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/net/SocketHubAppender;ILjava/util/Vector;)V
    .registers 7
    .param p2, "_port"    # I
    .param p3, "_oosList"    # Ljava/util/Vector;

    .prologue
    const/4 v1, 0x1

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    .line 383
    iput p2, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    .line 384
    iput-object p3, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->oosList:Ljava/util/Vector;

    .line 385
    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    .line 386
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    .line 387
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 388
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SocketHubAppender-Monitor-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 390
    return-void
.end method

.method private sendCachedEvents(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v1}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v1}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/CyclicBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 419
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v1}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/log4j/helpers/CyclicBuffer;->get(I)Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 421
    :cond_25
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 422
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->reset()V

    .line 424
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 431
    const/4 v3, 0x0

    .line 433
    .local v3, "serverSocket":Ljava/net/ServerSocket;
    :try_start_2
    iget-object v5, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    iget v6, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    invoke-virtual {v5, v6}, Lorg/apache/log4j/net/SocketHubAppender;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v3

    .line 434
    const/16 v5, 0x3e8

    invoke-virtual {v3, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_8e

    .line 447
    const/16 v5, 0x3e8

    :try_start_11
    invoke-virtual {v3, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_14
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_14} :catch_a6
    .catchall {:try_start_11 .. :try_end_14} :catchall_89

    .line 454
    :cond_14
    :goto_14
    :try_start_14
    iget-boolean v5, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_89

    if-eqz v5, :cond_cc

    .line 455
    const/4 v4, 0x0

    .line 457
    .local v4, "socket":Ljava/net/Socket;
    :try_start_19
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1c
    .catch Ljava/io/InterruptedIOException; {:try_start_19 .. :try_end_1c} :catch_e4
    .catch Ljava/net/SocketException; {:try_start_19 .. :try_end_1c} :catch_b9
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_c4
    .catchall {:try_start_19 .. :try_end_1c} :catchall_89

    move-result-object v4

    .line 471
    :goto_1d
    if-eqz v4, :cond_14

    .line 473
    :try_start_1f
    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 474
    .local v2, "remoteAddress":Ljava/net/InetAddress;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "accepting connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 478
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 479
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    iget-object v5, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v5}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;

    move-result-object v5

    if-eqz v5, :cond_71

    iget-object v5, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v5}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/log4j/helpers/CyclicBuffer;->length()I

    move-result v5

    if-lez v5, :cond_71

    .line 480
    invoke-direct {p0, v1}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->sendCachedEvents(Ljava/io/ObjectOutputStream;)V

    .line 484
    :cond_71
    iget-object v5, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->oosList:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_76} :catch_77
    .catchall {:try_start_1f .. :try_end_76} :catchall_89

    goto :goto_14

    .line 485
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .end local v2    # "remoteAddress":Ljava/net/InetAddress;
    :catch_77
    move-exception v0

    .line 486
    .local v0, "e":Ljava/io/IOException;
    :try_start_78
    instance-of v5, v0, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_83

    .line 487
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 489
    :cond_83
    const-string v5, "exception creating output stream on socket."

    invoke-static {v5, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_89

    goto :goto_14

    .line 496
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "socket":Ljava/net/Socket;
    :catchall_89
    move-exception v5

    .line 497
    :try_start_8a
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_8d
    .catch Ljava/io/InterruptedIOException; {:try_start_8a .. :try_end_8d} :catch_d9
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_e9

    .line 502
    :goto_8d
    throw v5

    .line 436
    :catch_8e
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    instance-of v5, v0, Ljava/io/InterruptedIOException;

    if-nez v5, :cond_97

    instance-of v5, v0, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_9e

    .line 438
    :cond_97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 440
    :cond_9e
    const-string v5, "exception setting timeout, shutting down server socket."

    invoke-static {v5, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    iput-boolean v7, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    .line 504
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a5
    return-void

    .line 449
    :catch_a6
    move-exception v0

    .line 450
    .local v0, "e":Ljava/net/SocketException;
    :try_start_a7
    const-string v5, "exception setting timeout, shutting down server socket."

    invoke-static {v5, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_89

    .line 497
    :try_start_ac
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_af
    .catch Ljava/io/InterruptedIOException; {:try_start_ac .. :try_end_af} :catch_b0
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_e2

    goto :goto_a5

    .line 498
    :catch_b0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_a5

    .line 462
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .restart local v4    # "socket":Ljava/net/Socket;
    :catch_b9
    move-exception v0

    .line 463
    .local v0, "e":Ljava/net/SocketException;
    :try_start_ba
    const-string v5, "exception accepting socket, shutting down server socket."

    invoke-static {v5, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    goto/16 :goto_1d

    .line 466
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_c4
    move-exception v0

    .line 467
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "exception accepting socket."

    invoke-static {v5, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ca
    .catchall {:try_start_ba .. :try_end_ca} :catchall_89

    goto/16 :goto_1d

    .line 497
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "socket":Ljava/net/Socket;
    :cond_cc
    :try_start_cc
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_cf
    .catch Ljava/io/InterruptedIOException; {:try_start_cc .. :try_end_cf} :catch_d0
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_e7

    goto :goto_a5

    .line 498
    :catch_d0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_a5

    .line 498
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_d9
    move-exception v0

    .line 499
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_8d

    .line 500
    .local v0, "e":Ljava/net/SocketException;
    :catch_e2
    move-exception v5

    goto :goto_a5

    .line 459
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v4    # "socket":Ljava/net/Socket;
    :catch_e4
    move-exception v5

    goto/16 :goto_1d

    .line 500
    .end local v4    # "socket":Ljava/net/Socket;
    :catch_e7
    move-exception v5

    goto :goto_a5

    :catch_e9
    move-exception v6

    goto :goto_8d
.end method

.method public declared-synchronized stopMonitor()V
    .registers 3

    .prologue
    .line 398
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    if-eqz v1, :cond_1a

    .line 399
    const-string v1, "server monitor thread shutting down"

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 400
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_25

    .line 402
    :try_start_d
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_1c
    .catchall {:try_start_d .. :try_end_12} :catchall_25

    .line 410
    :goto_12
    const/4 v1, 0x0

    :try_start_13
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    .line 411
    const-string v1, "server monitor thread shut down"

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_25

    .line 413
    :cond_1a
    monitor-exit p0

    return-void

    .line 404
    :catch_1c
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_25

    goto :goto_12

    .line 398
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method
