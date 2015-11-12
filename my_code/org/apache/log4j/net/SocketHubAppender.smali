.class public Lorg/apache/log4j/net/SocketHubAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "SocketHubAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
    }
.end annotation


# static fields
.field static final DEFAULT_PORT:I = 0x11d0

.field public static final ZONE:Ljava/lang/String; = "_log4j_obj_tcpaccept_appender.local."


# instance fields
.field private advertiseViaMulticastDNS:Z

.field private application:Ljava/lang/String;

.field private buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

.field private locationInfo:Z

.field private oosList:Ljava/util/Vector;

.field private port:I

.field private serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

.field private zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 114
    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    .line 116
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 118
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    .line 129
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "_port"    # I

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 114
    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    .line 116
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 118
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    .line 135
    iput p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 136
    invoke-direct {p0}, Lorg/apache/log4j/net/SocketHubAppender;->startServer()V

    .line 137
    return-void
.end method

.method static access$000(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;
    .registers 2
    .param p0, "x0"    # Lorg/apache/log4j/net/SocketHubAppender;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    return-object v0
.end method

.method private startServer()V
    .registers 4

    .prologue
    .line 355
    new-instance v0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    iget v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;-><init>(Lorg/apache/log4j/net/SocketHubAppender;ILjava/util/Vector;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 356
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 5

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    if-eqz v0, :cond_18

    .line 144
    new-instance v0, Lorg/apache/log4j/net/ZeroConfSupport;

    const-string v1, "_log4j_obj_tcpaccept_appender.local."

    iget v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/net/ZeroConfSupport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    .line 145
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    invoke-virtual {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->advertise()V

    .line 147
    :cond_18
    invoke-direct {p0}, Lorg/apache/log4j/net/SocketHubAppender;->startServer()V

    .line 148
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 8
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 203
    if-eqz p1, :cond_2c

    .line 205
    iget-boolean v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    if-eqz v4, :cond_9

    .line 206
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 208
    :cond_9
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 209
    const-string v4, "application"

    iget-object v5, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/apache/log4j/spi/LoggingEvent;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_14
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 214
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 217
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    if-eqz v4, :cond_2c

    .line 218
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v4, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;->add(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 223
    :cond_2c
    if-eqz p1, :cond_36

    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_37

    .line 264
    :cond_36
    return-void

    .line 228
    :cond_37
    const/4 v3, 0x0

    .local v3, "streamCount":I
    :goto_38
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_41
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/ObjectOutputStream;

    move-object v2, v0
    :try_end_4b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_41 .. :try_end_4b} :catch_72

    .line 241
    :goto_4b
    if-eqz v2, :cond_36

    .line 245
    :try_start_4d
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 250
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_56} :catch_59

    .line 228
    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 252
    :catch_59
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    instance-of v4, v1, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_65

    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 257
    :cond_65
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 258
    const-string v4, "dropped connection"

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 261
    add-int/lit8 v3, v3, -0x1

    goto :goto_56

    .line 234
    .end local v1    # "e":Ljava/io/IOException;
    :catch_72
    move-exception v4

    goto :goto_4b
.end method

.method public cleanUp()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 176
    const-string v2, "stopping ServerSocket"

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    invoke-virtual {v2}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->stopMonitor()V

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 181
    const-string v2, "closing client connections"

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 182
    :cond_13
    :goto_13
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_43

    .line 183
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectOutputStream;

    .line 184
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    if-eqz v1, :cond_13

    .line 186
    :try_start_25
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/InterruptedIOException; {:try_start_25 .. :try_end_28} :catch_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_3c

    .line 194
    :goto_28
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_13

    .line 187
    :catch_2e
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 189
    const-string v2, "could not close oos."

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 190
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_3c
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "could not close oos."

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    :cond_43
    return-void
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_51

    if-eqz v0, :cond_7

    .line 168
    :goto_5
    monitor-exit p0

    return-void

    .line 160
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "closing SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 162
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    if-eqz v0, :cond_2d

    .line 163
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    invoke-virtual {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->unadvertise()V

    .line 165
    :cond_2d
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->cleanUp()V

    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_51

    goto :goto_5

    .line 157
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createServerSocket(I)Ljava/net/ServerSocket;
    .registers 3
    .param p1, "socketPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    if-nez v0, :cond_6

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/CyclicBuffer;->getMaxSize()I

    move-result v0

    goto :goto_5
.end method

.method public getLocationInfo()Z
    .registers 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    return v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 303
    iget v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    return v0
.end method

.method public isAdvertiseViaMulticastDNS()Z
    .registers 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    return v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public setAdvertiseViaMulticastDNS(Z)V
    .registers 2
    .param p1, "advertiseViaMulticastDNS"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    .line 345
    return-void
.end method

.method public setApplication(Ljava/lang/String;)V
    .registers 2
    .param p1, "lapp"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setBufferSize(I)V
    .registers 3
    .param p1, "_bufferSize"    # I

    .prologue
    .line 312
    new-instance v0, Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-direct {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    .line 313
    return-void
.end method

.method public setLocationInfo(Z)V
    .registers 2
    .param p1, "_locationInfo"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 334
    return-void
.end method

.method public setPort(I)V
    .registers 2
    .param p1, "_port"    # I

    .prologue
    .line 279
    iput p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 280
    return-void
.end method
