.class public Lorg/apache/log4j/net/TelnetAppender$SocketHandler;
.super Ljava/lang/Thread;
.source "TelnetAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/net/TelnetAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SocketHandler"
.end annotation


# instance fields
.field private MAX_CONNECTIONS:I

.field private connections:Ljava/util/Vector;

.field private serverSocket:Ljava/net/ServerSocket;

.field private final this$0:Lorg/apache/log4j/net/TelnetAppender;

.field private writers:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/net/TelnetAppender;I)V
    .registers 5
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->this$0:Lorg/apache/log4j/net/TelnetAppender;

    .line 140
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->writers:Ljava/util/Vector;

    .line 141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    .line 143
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->MAX_CONNECTIONS:I

    .line 231
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    .line 232
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TelnetAppender-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 233
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 154
    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v2, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_20

    move-result v2

    if-eqz v2, :cond_23

    .line 157
    :try_start_d
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/io/InterruptedIOException; {:try_start_d .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_16} :catch_37
    .catchall {:try_start_d .. :try_end_16} :catchall_20

    goto :goto_7

    .line 158
    :catch_17
    move-exception v1

    .line 159
    .local v1, "ex":Ljava/io/InterruptedIOException;
    :try_start_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7

    .line 164
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "ex":Ljava/io/InterruptedIOException;
    :catchall_20
    move-exception v2

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v2

    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    .line 167
    :try_start_24
    iget-object v2, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_29
    .catch Ljava/io/InterruptedIOException; {:try_start_24 .. :try_end_29} :catch_2a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_29} :catch_33

    .line 173
    :goto_29
    return-void

    .line 168
    :catch_2a
    move-exception v1

    .line 169
    .restart local v1    # "ex":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_29

    .line 171
    .end local v1    # "ex":Ljava/io/InterruptedIOException;
    :catch_33
    move-exception v2

    goto :goto_29

    .line 170
    :catch_35
    move-exception v2

    goto :goto_29

    .line 161
    :catch_37
    move-exception v2

    goto :goto_7

    .line 160
    :catch_39
    move-exception v2

    goto :goto_7
.end method

.method public finalize()V
    .registers 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->close()V

    .line 147
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 194
    :goto_0
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_73

    .line 196
    :try_start_8
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 197
    .local v2, "newClient":Ljava/net/Socket;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 198
    .local v3, "pw":Ljava/io/PrintWriter;
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget v5, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->MAX_CONNECTIONS:I

    if-ge v4, v5, :cond_79

    .line 199
    monitor-enter p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_56

    .line 200
    :try_start_22
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 201
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->writers:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 202
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "TelnetAppender v1.0 ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " active connections)\r\n\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 205
    monitor-exit p0

    goto :goto_0

    :catchall_53
    move-exception v4

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_22 .. :try_end_55} :catchall_53

    :try_start_55
    throw v4
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_56} :catch_56

    .line 211
    .end local v2    # "newClient":Ljava/net/Socket;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :catch_56
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    instance-of v4, v0, Ljava/io/InterruptedIOException;

    if-nez v4, :cond_5f

    instance-of v4, v0, Ljava/lang/InterruptedException;

    if-eqz v4, :cond_66

    .line 213
    :cond_5f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 215
    :cond_66
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_73

    .line 216
    const-string v4, "Encountered error while in SocketHandler loop."

    invoke-static {v4, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_73
    :try_start_73
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_78
    .catch Ljava/io/InterruptedIOException; {:try_start_73 .. :try_end_78} :catch_86
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_8f

    .line 228
    :goto_78
    return-void

    .line 207
    .restart local v2    # "newClient":Ljava/net/Socket;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :cond_79
    :try_start_79
    const-string v4, "Too many connections.\r\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 209
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_84} :catch_56

    goto/16 :goto_0

    .line 224
    .end local v2    # "newClient":Ljava/net/Socket;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :catch_86
    move-exception v1

    .line 225
    .local v1, "ex":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_78

    .line 226
    .end local v1    # "ex":Ljava/io/InterruptedIOException;
    :catch_8f
    move-exception v4

    goto :goto_78
.end method

.method public declared-synchronized send(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    .local v0, "ce":Ljava/util/Iterator;
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->writers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/PrintWriter;

    .line 181
    .local v2, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/io/PrintWriter;->checkError()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    goto :goto_d

    .line 177
    .end local v0    # "ce":Ljava/util/Iterator;
    .end local v1    # "e":Ljava/util/Iterator;
    .end local v2    # "writer":Ljava/io/PrintWriter;
    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 187
    .restart local v0    # "ce":Ljava/util/Iterator;
    .restart local v1    # "e":Ljava/util/Iterator;
    :cond_2f
    monitor-exit p0

    return-void
.end method
