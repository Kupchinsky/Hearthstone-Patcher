.class public Lorg/apache/log4j/net/SocketNode;
.super Ljava/lang/Object;
.source "SocketNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

.field static logger:Lorg/apache/log4j/Logger;


# instance fields
.field hierarchy:Lorg/apache/log4j/spi/LoggerRepository;

.field ois:Ljava/io/ObjectInputStream;

.field socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lorg/apache/log4j/net/SocketNode;->class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.log4j.net.SocketNode"

    invoke-static {v0}, Lorg/apache/log4j/net/SocketNode;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketNode;->class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/log4j/net/SocketNode;->class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Ljava/net/Socket;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    .line 54
    iput-object p2, p0, Lorg/apache/log4j/net/SocketNode;->hierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    .line 56
    :try_start_7
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;
    :try_end_17
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_17} :catch_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_17} :catch_53

    .line 66
    :goto_17
    return-void

    .line 58
    :catch_18
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 60
    sget-object v1, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not open ObjectInputStream to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 61
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_39
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not open ObjectInputStream to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :catch_53
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not open ObjectInputStream to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 79
    :try_start_0
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_43

    .line 82
    :cond_4
    :goto_4
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/LoggingEvent;

    .line 84
    .local v1, "event":Lorg/apache/log4j/spi/LoggingEvent;
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->hierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-virtual {v1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v2

    .line 87
    .local v2, "remoteLogger":Lorg/apache/log4j/Logger;
    invoke-virtual {v1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    invoke-virtual {v2, v1}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V
    :try_end_27
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_27} :catch_28
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_27} :catch_7a
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_27} :catch_a7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_13c
    .catchall {:try_start_0 .. :try_end_27} :catchall_16b

    goto :goto_4

    .line 93
    .end local v1    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    .end local v2    # "remoteLogger":Lorg/apache/log4j/Logger;
    :catch_28
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/EOFException;
    :try_start_29
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Caught java.io.EOFException closing conneciton."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_16b

    .line 107
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_39

    .line 109
    :try_start_34
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_68

    .line 114
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_39
    :goto_39
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_42

    .line 116
    :try_start_3d
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_42
    .catch Ljava/io/InterruptedIOException; {:try_start_3d .. :try_end_42} :catch_71
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_19f

    .line 123
    :cond_42
    :goto_42
    return-void

    .line 107
    :cond_43
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_4c

    .line 109
    :try_start_47
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_5f

    .line 114
    :cond_4c
    :goto_4c
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_42

    .line 116
    :try_start_50
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_55
    .catch Ljava/io/InterruptedIOException; {:try_start_50 .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_55} :catch_1a2

    goto :goto_42

    .line 117
    :catch_56
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_42

    .line 110
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_5f
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4c

    .line 110
    .local v0, "e":Ljava/io/EOFException;
    :catch_68
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_39

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_71
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_42

    .line 95
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_7a
    move-exception v0

    .line 96
    .local v0, "e":Ljava/net/SocketException;
    :try_start_7b
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Caught java.net.SocketException closing conneciton."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_16b

    .line 107
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_8b

    .line 109
    :try_start_86
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8b} :catch_9e

    .line 114
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_8b
    :goto_8b
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_42

    .line 116
    :try_start_8f
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_94
    .catch Ljava/io/InterruptedIOException; {:try_start_8f .. :try_end_94} :catch_95
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_94} :catch_19c

    goto :goto_42

    .line 117
    :catch_95
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_42

    .line 110
    .local v0, "e":Ljava/net/SocketException;
    :catch_9e
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_8b

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a7
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/InterruptedIOException;
    :try_start_a8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 99
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Caught java.io.InterruptedIOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 100
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Closing connection."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V
    :try_end_ce
    .catchall {:try_start_a8 .. :try_end_ce} :catchall_16b

    .line 107
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_d7

    .line 109
    :try_start_d2
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d7} :catch_ec

    .line 114
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_d7
    :goto_d7
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_42

    .line 116
    :try_start_db
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_e0
    .catch Ljava/io/InterruptedIOException; {:try_start_db .. :try_end_e0} :catch_e2
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e0} :catch_199

    goto/16 :goto_42

    .line 117
    :catch_e2
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_42

    .line 110
    :catch_ec
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_d7

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_f5
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    :try_start_f6
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Caught java.io.IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 103
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Closing connection."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V
    :try_end_115
    .catchall {:try_start_f6 .. :try_end_115} :catchall_16b

    .line 107
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_11e

    .line 109
    :try_start_119
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11e} :catch_133

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :cond_11e
    :goto_11e
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_42

    .line 116
    :try_start_122
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_127
    .catch Ljava/io/InterruptedIOException; {:try_start_122 .. :try_end_127} :catch_129
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_127} :catch_196

    goto/16 :goto_42

    .line 117
    :catch_129
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_42

    .line 110
    .local v0, "e":Ljava/io/IOException;
    :catch_133
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_11e

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_13c
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_13d
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Unexpected exception. Closing conneciton."

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_144
    .catchall {:try_start_13d .. :try_end_144} :catchall_16b

    .line 107
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_14d

    .line 109
    :try_start_148
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14d} :catch_162

    .line 114
    :cond_14d
    :goto_14d
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_42

    .line 116
    :try_start_151
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_156
    .catch Ljava/io/InterruptedIOException; {:try_start_151 .. :try_end_156} :catch_158
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_156} :catch_193

    goto/16 :goto_42

    .line 117
    :catch_158
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_42

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :catch_162
    move-exception v0

    .line 111
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_14d

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_16b
    move-exception v3

    iget-object v4, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v4, :cond_175

    .line 109
    :try_start_170
    iget-object v4, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_175} :catch_17f

    .line 114
    :cond_175
    :goto_175
    iget-object v4, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_17e

    .line 116
    :try_start_179
    iget-object v4, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_17e
    .catch Ljava/io/InterruptedIOException; {:try_start_179 .. :try_end_17e} :catch_188
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17e} :catch_191

    .line 120
    :cond_17e
    :goto_17e
    throw v3

    .line 110
    :catch_17f
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v5, "Could not close connection."

    invoke-virtual {v4, v5, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_175

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_188
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_17e

    .line 119
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_191
    move-exception v4

    goto :goto_17e

    .local v0, "e":Ljava/lang/Exception;
    :catch_193
    move-exception v3

    goto/16 :goto_42

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_196
    move-exception v3

    goto/16 :goto_42

    :catch_199
    move-exception v3

    goto/16 :goto_42

    :catch_19c
    move-exception v3

    goto/16 :goto_42

    :catch_19f
    move-exception v3

    goto/16 :goto_42

    :catch_1a2
    move-exception v3

    goto/16 :goto_42
.end method
