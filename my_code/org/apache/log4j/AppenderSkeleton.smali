.class public abstract Lorg/apache/log4j/AppenderSkeleton;
.super Ljava/lang/Object;
.source "AppenderSkeleton.java"

# interfaces
.implements Lorg/apache/log4j/Appender;
.implements Lorg/apache/log4j/spi/OptionHandler;


# instance fields
.field protected closed:Z

.field protected errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

.field protected headFilter:Lorg/apache/log4j/spi/Filter;

.field protected layout:Lorg/apache/log4j/Layout;

.field protected name:Ljava/lang/String;

.field protected tailFilter:Lorg/apache/log4j/spi/Filter;

.field protected threshold:Lorg/apache/log4j/Priority;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 71
    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 3
    .param p1, "isActive"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 83
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method

.method public addFilter(Lorg/apache/log4j/spi/Filter;)V
    .registers 3
    .param p1, "newFilter"    # Lorg/apache/log4j/spi/Filter;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    if-nez v0, :cond_9

    .line 103
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->tailFilter:Lorg/apache/log4j/spi/Filter;

    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    .line 108
    :goto_8
    return-void

    .line 105
    :cond_9
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->tailFilter:Lorg/apache/log4j/spi/Filter;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/spi/Filter;->setNext(Lorg/apache/log4j/spi/Filter;)V

    .line 106
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->tailFilter:Lorg/apache/log4j/spi/Filter;

    goto :goto_8
.end method

.method protected abstract append(Lorg/apache/log4j/spi/LoggingEvent;)V
.end method

.method public clearFilters()V
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->tailFilter:Lorg/apache/log4j/spi/Filter;

    iput-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    .line 129
    return-void
.end method

.method public abstract close()V
.end method

.method public declared-synchronized doAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 231
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-eqz v1, :cond_25

    .line 232
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Attempted to append to closed appender named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_44

    .line 252
    :cond_23
    :goto_23
    :pswitch_23
    monitor-exit p0

    return-void

    .line 236
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/AppenderSkeleton;->isAsSevereAsThreshold(Lorg/apache/log4j/Priority;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 240
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    .line 243
    .local v0, "f":Lorg/apache/log4j/spi/Filter;
    :goto_31
    if-eqz v0, :cond_40

    .line 244
    invoke-virtual {v0, p1}, Lorg/apache/log4j/spi/Filter;->decide(Lorg/apache/log4j/spi/LoggingEvent;)I

    move-result v1

    packed-switch v1, :pswitch_data_48

    goto :goto_31

    .line 247
    :pswitch_3b
    invoke-virtual {v0}, Lorg/apache/log4j/spi/Filter;->getNext()Lorg/apache/log4j/spi/Filter;

    move-result-object v0

    goto :goto_31

    .line 251
    :cond_40
    :pswitch_40
    invoke-virtual {p0, p1}, Lorg/apache/log4j/AppenderSkeleton;->append(Lorg/apache/log4j/spi/LoggingEvent;)V
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_44

    goto :goto_23

    .line 231
    .end local v0    # "f":Lorg/apache/log4j/spi/Filter;
    :catchall_44
    move-exception v1

    monitor-exit p0

    throw v1

    .line 244
    nop

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_23
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method public finalize()V
    .registers 3

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-eqz v0, :cond_5

    .line 145
    :goto_4
    return-void

    .line 143
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Finalizing appender named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 144
    invoke-interface {p0}, Lorg/apache/log4j/Appender;->close()V

    goto :goto_4
.end method

.method public getErrorHandler()Lorg/apache/log4j/spi/ErrorHandler;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    return-object v0
.end method

.method public getFilter()Lorg/apache/log4j/spi/Filter;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    return-object v0
.end method

.method public final getFirstFilter()Lorg/apache/log4j/spi/Filter;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    return-object v0
.end method

.method public getLayout()Lorg/apache/log4j/Layout;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()Lorg/apache/log4j/Priority;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->threshold:Lorg/apache/log4j/Priority;

    return-object v0
.end method

.method public isAsSevereAsThreshold(Lorg/apache/log4j/Priority;)Z
    .registers 3
    .param p1, "priority"    # Lorg/apache/log4j/Priority;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->threshold:Lorg/apache/log4j/Priority;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->threshold:Lorg/apache/log4j/Priority;

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public abstract requiresLayout()Z
.end method

.method public declared-synchronized setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V
    .registers 3
    .param p1, "eh"    # Lorg/apache/log4j/spi/ErrorHandler;

    .prologue
    .line 261
    monitor-enter p0

    if-nez p1, :cond_a

    .line 264
    :try_start_3
    const-string v0, "You have tried to set a null error-handler."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 268
    :goto_8
    monitor-exit p0

    return-void

    .line 266
    :cond_a
    :try_start_a
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    goto :goto_8

    .line 261
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLayout(Lorg/apache/log4j/Layout;)V
    .registers 2
    .param p1, "layout"    # Lorg/apache/log4j/Layout;

    .prologue
    .line 278
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 279
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setThreshold(Lorg/apache/log4j/Priority;)V
    .registers 2
    .param p1, "threshold"    # Lorg/apache/log4j/Priority;

    .prologue
    .line 302
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->threshold:Lorg/apache/log4j/Priority;

    .line 303
    return-void
.end method
