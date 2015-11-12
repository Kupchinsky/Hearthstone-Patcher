.class Lorg/apache/log4j/varia/HUPNode;
.super Ljava/lang/Object;
.source "ExternallyRolledFileAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field dis:Ljava/io/DataInputStream;

.field dos:Ljava/io/DataOutputStream;

.field er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lorg/apache/log4j/varia/ExternallyRolledFileAppender;)V
    .registers 6
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "er"    # Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lorg/apache/log4j/varia/HUPNode;->socket:Ljava/net/Socket;

    .line 151
    iput-object p2, p0, Lorg/apache/log4j/varia/HUPNode;->er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    .line 153
    :try_start_7
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/log4j/varia/HUPNode;->dis:Ljava/io/DataInputStream;

    .line 154
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/log4j/varia/HUPNode;->dos:Ljava/io/DataOutputStream;
    :try_end_1d
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1d} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1d} :catch_2f

    .line 163
    :goto_1d
    return-void

    .line 155
    :catch_1e
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d

    .line 158
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_2a
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2f
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 167
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/varia/HUPNode;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "line":Ljava/lang/String;
    const-string v2, "Got external roll over signal."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 169
    const-string v2, "RollOver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 170
    iget-object v3, p0, Lorg/apache/log4j/varia/HUPNode;->er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    monitor-enter v3
    :try_end_16
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_16} :catch_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_16} :catch_49

    .line 171
    :try_start_16
    iget-object v2, p0, Lorg/apache/log4j/varia/HUPNode;->er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    invoke-virtual {v2}, Lorg/apache/log4j/RollingFileAppender;->rollOver()V

    .line 172
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_29

    .line 173
    :try_start_1c
    iget-object v2, p0, Lorg/apache/log4j/varia/HUPNode;->dos:Ljava/io/DataOutputStream;

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 178
    :goto_23
    iget-object v2, p0, Lorg/apache/log4j/varia/HUPNode;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/InterruptedIOException; {:try_start_1c .. :try_end_28} :catch_2c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_28} :catch_49

    .line 187
    .end local v1    # "line":Ljava/lang/String;
    :goto_28
    return-void

    .line 172
    .restart local v1    # "line":Ljava/lang/String;
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v2
    :try_end_2c
    .catch Ljava/io/InterruptedIOException; {:try_start_2b .. :try_end_2c} :catch_2c
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2c} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2c} :catch_49

    .line 179
    .end local v1    # "line":Ljava/lang/String;
    :catch_2c
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 181
    const-string v2, "Unexpected exception. Exiting HUPNode."

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 176
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .restart local v1    # "line":Ljava/lang/String;
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lorg/apache/log4j/varia/HUPNode;->dos:Ljava/io/DataOutputStream;

    const-string v3, "Expecting [RollOver] string."

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/InterruptedIOException; {:try_start_3a .. :try_end_41} :catch_2c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_41} :catch_49

    goto :goto_23

    .line 182
    .end local v1    # "line":Ljava/lang/String;
    :catch_42
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Unexpected exception. Exiting HUPNode."

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :catch_49
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Unexpected exception. Exiting HUPNode."

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28
.end method
