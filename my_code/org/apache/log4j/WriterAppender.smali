.class public Lorg/apache/log4j/WriterAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "WriterAppender.java"


# instance fields
.field protected encoding:Ljava/lang/String;

.field protected immediateFlush:Z

.field protected qw:Lorg/apache/log4j/helpers/QuietWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 85
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/log4j/WriterAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/io/Writer;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/io/Writer;)V
    .registers 4
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "writer"    # Ljava/io/Writer;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 96
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 97
    invoke-virtual {p0, p2}, Lorg/apache/log4j/WriterAppender;->setWriter(Ljava/io/Writer;)V

    .line 98
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 1

    .prologue
    .line 132
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 3
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->checkEntryConditions()Z

    move-result v0

    if-nez v0, :cond_7

    .line 163
    :goto_6
    return-void

    .line 162
    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/log4j/WriterAppender;->subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V

    goto :goto_6
.end method

.method protected checkEntryConditions()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-boolean v1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-eqz v1, :cond_b

    .line 174
    const-string v1, "Not allowed to write to a closed appender."

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 188
    :goto_a
    return v0

    .line 178
    :cond_b
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-nez v1, :cond_30

    .line 179
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No output stream or file set for the appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    goto :goto_a

    .line 184
    :cond_30
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-nez v1, :cond_55

    .line 185
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No layout set for the appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    goto :goto_a

    .line 188
    :cond_55
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 203
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    .line 208
    :goto_5
    monitor-exit p0

    return-void

    .line 205
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 206
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->writeFooter()V

    .line 207
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->reset()V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 203
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected closeWriter()V
    .registers 4

    .prologue
    .line 214
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v1, :cond_9

    .line 216
    :try_start_4
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1}, Ljava/io/FilterWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 226
    :cond_9
    :goto_9
    return-void

    .line 217
    :catch_a
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_16

    .line 219
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 223
    :cond_16
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method protected createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;
    .registers 7
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 238
    .local v2, "retval":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "enc":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 241
    :try_start_7
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_15

    .end local v2    # "retval":Ljava/io/OutputStreamWriter;
    .local v3, "retval":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .line 250
    .end local v3    # "retval":Ljava/io/OutputStreamWriter;
    .restart local v2    # "retval":Ljava/io/OutputStreamWriter;
    :cond_d
    :goto_d
    if-nez v2, :cond_14

    .line 251
    new-instance v2, Ljava/io/OutputStreamWriter;

    .end local v2    # "retval":Ljava/io/OutputStreamWriter;
    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 253
    .restart local v2    # "retval":Ljava/io/OutputStreamWriter;
    :cond_14
    return-object v2

    .line 242
    :catch_15
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    instance-of v4, v0, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_21

    .line 244
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 246
    :cond_21
    const-string v4, "Error initializing output writer."

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 247
    const-string v4, "Unsupported encoding?"

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateFlush()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    return v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method protected reset()V
    .registers 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->closeWriter()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    .line 349
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/apache/log4j/WriterAppender;->encoding:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public declared-synchronized setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V
    .registers 3
    .param p1, "eh"    # Lorg/apache/log4j/spi/ErrorHandler;

    .prologue
    .line 271
    monitor-enter p0

    if-nez p1, :cond_a

    .line 272
    :try_start_3
    const-string v0, "You have tried to set a null error-handler."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_16

    .line 279
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 274
    :cond_a
    :try_start_a
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    .line 275
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v0, :cond_8

    .line 276
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/QuietWriter;->setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_8

    .line 271
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImmediateFlush(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 117
    return-void
.end method

.method public declared-synchronized setWriter(Ljava/io/Writer;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 294
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->reset()V

    .line 295
    new-instance v0, Lorg/apache/log4j/helpers/QuietWriter;

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/helpers/QuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    .line 297
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->writeHeader()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 298
    monitor-exit p0

    return-void

    .line 294
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected shouldFlush(Lorg/apache/log4j/spi/LoggingEvent;)Z
    .registers 3
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 385
    iget-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    return v0
.end method

.method protected subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 7
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 310
    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    iget-object v4, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v4, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v3}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 313
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "s":[Ljava/lang/String;
    if-eqz v2, :cond_2e

    .line 315
    array-length v1, v2

    .line 316
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, v1, :cond_2e

    .line 317
    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    sget-object v4, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 323
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "s":[Ljava/lang/String;
    :cond_2e
    invoke-virtual {p0, p1}, Lorg/apache/log4j/WriterAppender;->shouldFlush(Lorg/apache/log4j/spi/LoggingEvent;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 324
    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v3}, Lorg/apache/log4j/helpers/QuietWriter;->flush()V

    .line 326
    :cond_39
    return-void
.end method

.method protected writeFooter()V
    .registers 3

    .prologue
    .line 357
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v1, :cond_1a

    .line 358
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "f":Ljava/lang/String;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v1, :cond_1a

    .line 360
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/QuietWriter;->flush()V

    .line 364
    .end local v0    # "f":Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method protected writeHeader()V
    .registers 3

    .prologue
    .line 371
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v1, :cond_15

    .line 372
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "h":Ljava/lang/String;
    if-eqz v0, :cond_15

    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v1, :cond_15

    .line 374
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 376
    .end local v0    # "h":Ljava/lang/String;
    :cond_15
    return-void
.end method
