.class public Lorg/apache/log4j/RollingFileAppender;
.super Lorg/apache/log4j/FileAppender;
.source "RollingFileAppender.java"


# instance fields
.field protected maxBackupIndex:I

.field protected maxFileSize:J

.field private nextRollover:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/log4j/FileAppender;-><init>()V

    .line 50
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V
    .registers 5
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V

    .line 50
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V

    .line 50
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    .line 80
    return-void
.end method


# virtual methods
.method public getMaxBackupIndex()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    return v0
.end method

.method public getMaximumFileSize()J
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    return-wide v0
.end method

.method public rollOver()V
    .registers 13

    .prologue
    const/16 v11, 0x2e

    const/4 v10, 0x1

    .line 131
    iget-object v7, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v7, :cond_2a

    .line 132
    iget-object v7, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    check-cast v7, Lorg/apache/log4j/helpers/CountingQuietWriter;

    invoke-virtual {v7}, Lorg/apache/log4j/helpers/CountingQuietWriter;->getCount()J

    move-result-wide v4

    .line 133
    .local v4, "size":J
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "rolling over count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 136
    iget-wide v8, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    add-long/2addr v8, v4

    iput-wide v8, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    .line 138
    .end local v4    # "size":J
    :cond_2a
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "maxBackupIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 140
    const/4 v3, 0x1

    .line 142
    .local v3, "renameSucceeded":Z
    iget v7, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    if-lez v7, :cond_13a

    .line 144
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 149
    :cond_6f
    iget v7, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_73
    if-lt v2, v10, :cond_e0

    if-eqz v3, :cond_e0

    .line 150
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_dd

    .line 152
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v6, "target":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Renaming file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 149
    .end local v6    # "target":Ljava/io/File;
    :cond_dd
    add-int/lit8 v2, v2, -0x1

    goto :goto_73

    .line 158
    :cond_e0
    if-eqz v3, :cond_13a

    .line 160
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v6    # "target":Ljava/io/File;
    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->closeFile()V

    .line 164
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    iget-object v7, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v1    # "file":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Renaming file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 170
    if-nez v3, :cond_13a

    .line 172
    :try_start_130
    iget-object v7, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    const/4 v8, 0x1

    iget-boolean v9, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v10, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/apache/log4j/RollingFileAppender;->setFile(Ljava/lang/String;ZZI)V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_13a} :catch_14b

    .line 187
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v6    # "target":Ljava/io/File;
    :cond_13a
    :goto_13a
    if-eqz v3, :cond_14a

    .line 191
    :try_start_13c
    iget-object v7, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-boolean v9, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v10, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/apache/log4j/RollingFileAppender;->setFile(Ljava/lang/String;ZZI)V

    .line 192
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_14a} :catch_176

    .line 201
    :cond_14a
    :goto_14a
    return-void

    .line 174
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v6    # "target":Ljava/io/File;
    :catch_14b
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    instance-of v7, v0, Ljava/io/InterruptedIOException;

    if-eqz v7, :cond_157

    .line 176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 178
    :cond_157
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "setFile("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", true) call failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13a

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v6    # "target":Ljava/io/File;
    :catch_176
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/io/IOException;
    instance-of v7, v0, Ljava/io/InterruptedIOException;

    if-eqz v7, :cond_182

    .line 196
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 198
    :cond_182
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "setFile("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", false) call failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14a
.end method

.method public declared-synchronized setFile(Ljava/lang/String;ZZI)V
    .registers 9
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "bufferedIO"    # Z
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v2, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-super {p0, p1, p2, v1, v2}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V

    .line 208
    if-eqz p2, :cond_1a

    .line 209
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "f":Ljava/io/File;
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    check-cast v1, Lorg/apache/log4j/helpers/CountingQuietWriter;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/log4j/helpers/CountingQuietWriter;->setCount(J)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 212
    .end local v0    # "f":Ljava/io/File;
    :cond_1a
    monitor-exit p0

    return-void

    .line 207
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMaxBackupIndex(I)V
    .registers 2
    .param p1, "maxBackups"    # I

    .prologue
    .line 226
    iput p1, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    .line 227
    return-void
.end method

.method public setMaxFileSize(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->toFileSize(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    .line 261
    return-void
.end method

.method public setMaximumFileSize(J)V
    .registers 4
    .param p1, "maxFileSize"    # J

    .prologue
    .line 243
    iput-wide p1, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    .line 244
    return-void
.end method

.method protected setQWForFiles(Ljava/io/Writer;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 265
    new-instance v0, Lorg/apache/log4j/helpers/CountingQuietWriter;

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/helpers/CountingQuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    .line 266
    return-void
.end method

.method protected subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 6
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 276
    invoke-super {p0, p1}, Lorg/apache/log4j/WriterAppender;->subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 277
    iget-object v2, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v2, :cond_22

    .line 278
    iget-object v2, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    check-cast v2, Lorg/apache/log4j/helpers/CountingQuietWriter;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/CountingQuietWriter;->getCount()J

    move-result-wide v0

    .line 279
    .local v0, "size":J
    iget-wide v2, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_22

    iget-wide v2, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_22

    .line 280
    invoke-virtual {p0}, Lorg/apache/log4j/RollingFileAppender;->rollOver()V

    .line 283
    .end local v0    # "size":J
    :cond_22
    return-void
.end method
