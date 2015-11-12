.class public Lorg/apache/log4j/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Lorg/apache/log4j/spi/AppenderAttachable;


# static fields
.field private static final FQCN:Ljava/lang/String;

.field static class$org$apache$log4j$Category:Ljava/lang/Class;


# instance fields
.field aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field protected additive:Z

.field protected volatile level:Lorg/apache/log4j/Level;

.field protected name:Ljava/lang/String;

.field protected volatile parent:Lorg/apache/log4j/Category;

.field protected repository:Lorg/apache/log4j/spi/LoggerRepository;

.field protected resourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    sget-object v0, Lorg/apache/log4j/Category;->class$org$apache$log4j$Category:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.log4j.Category"

    invoke-static {v0}, Lorg/apache/log4j/Category;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/Category;->class$org$apache$log4j$Category:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/log4j/Category;->class$org$apache$log4j$Category:Ljava/lang/Class;

    goto :goto_c
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/Category;->additive:Z

    .line 148
    iput-object p1, p0, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    .line 149
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 118
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

.method public static exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {p0}, Lorg/apache/log4j/LogManager;->exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method private fireRemoveAppenderEvent(Lorg/apache/log4j/Appender;)V
    .registers 3
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 868
    if-eqz p1, :cond_f

    .line 869
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    instance-of v0, v0, Lorg/apache/log4j/Hierarchy;

    if-eqz v0, :cond_10

    .line 870
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    check-cast v0, Lorg/apache/log4j/Hierarchy;

    invoke-virtual {v0, p0, p1}, Lorg/apache/log4j/Hierarchy;->fireRemoveAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    .line 875
    :cond_f
    :goto_f
    return-void

    .line 871
    :cond_10
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    instance-of v0, v0, Lorg/apache/log4j/spi/HierarchyEventListener;

    if-eqz v0, :cond_f

    .line 872
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    check-cast v0, Lorg/apache/log4j/spi/HierarchyEventListener;

    invoke-interface {v0, p0, p1}, Lorg/apache/log4j/spi/HierarchyEventListener;->removeAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    goto :goto_f
.end method

.method public static getCurrentCategories()Ljava/util/Enumeration;
    .registers 1

    .prologue
    .line 476
    invoke-static {}, Lorg/apache/log4j/LogManager;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultHierarchy()Lorg/apache/log4j/spi/LoggerRepository;
    .registers 1

    .prologue
    .line 490
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/log4j/Category;
    .registers 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 531
    invoke-static {p0}, Lorg/apache/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/log4j/Category;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 522
    invoke-static {p0}, Lorg/apache/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static final getRoot()Lorg/apache/log4j/Category;
    .registers 1

    .prologue
    .line 587
    invoke-static {}, Lorg/apache/log4j/LogManager;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static shutdown()V
    .registers 0

    .prologue
    .line 1014
    invoke-static {}, Lorg/apache/log4j/LogManager;->shutdown()V

    .line 1015
    return-void
.end method


# virtual methods
.method public declared-synchronized addAppender(Lorg/apache/log4j/Appender;)V
    .registers 3
    .param p1, "newAppender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    if-nez v0, :cond_c

    .line 162
    new-instance v0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 164
    :cond_c
    iget-object v0, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 165
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v0, p0, p1}, Lorg/apache/log4j/spi/LoggerRepository;->fireAddAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 166
    monitor-exit p0

    return-void

    .line 161
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public assertLog(ZLjava/lang/String;)V
    .registers 3
    .param p1, "assertion"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 183
    if-nez p1, :cond_5

    .line 184
    invoke-virtual {p0, p2}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;)V

    .line 185
    :cond_5
    return-void
.end method

.method public callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, "writes":I
    move-object v0, p0

    .local v0, "c":Lorg/apache/log4j/Category;
    :goto_2
    if-eqz v0, :cond_15

    .line 204
    monitor-enter v0

    .line 205
    :try_start_5
    iget-object v2, v0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    if-eqz v2, :cond_10

    .line 206
    iget-object v2, v0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v2, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    move-result v2

    add-int/2addr v1, v2

    .line 208
    :cond_10
    iget-boolean v2, v0, Lorg/apache/log4j/Category;->additive:Z

    if-nez v2, :cond_1d

    .line 209
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_21

    .line 214
    :cond_15
    if-nez v1, :cond_1c

    .line 215
    iget-object v2, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v2, p0}, Lorg/apache/log4j/spi/LoggerRepository;->emitNoAppenderWarning(Lorg/apache/log4j/Category;)V

    .line 217
    :cond_1c
    return-void

    .line 211
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_21

    .line 202
    iget-object v0, v0, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    goto :goto_2

    .line 211
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method declared-synchronized closeNestedAppenders()V
    .registers 4

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v1

    .line 227
    .local v1, "enumeration":Ljava/util/Enumeration;
    if-eqz v1, :cond_1e

    .line 228
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 229
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 230
    .local v0, "a":Lorg/apache/log4j/Appender;
    instance-of v2, v0, Lorg/apache/log4j/spi/AppenderAttachable;

    if-eqz v2, :cond_7

    .line 231
    invoke-interface {v0}, Lorg/apache/log4j/Appender;->close()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_7

    .line 226
    .end local v0    # "a":Lorg/apache/log4j/Appender;
    .end local v1    # "enumeration":Ljava/util/Enumeration;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 235
    .restart local v1    # "enumeration":Ljava/util/Enumeration;
    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public debug(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 262
    :cond_a
    :goto_a
    return-void

    .line 259
    :cond_b
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 260
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 280
    :cond_a
    :goto_a
    return-void

    .line 278
    :cond_b
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 279
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public error(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const v1, 0x9c40

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 306
    :cond_b
    :goto_b
    return-void

    .line 304
    :cond_c
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 305
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const v1, 0x9c40

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 324
    :cond_b
    :goto_b
    return-void

    .line 321
    :cond_c
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 322
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const v1, 0xc350

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 366
    :cond_b
    :goto_b
    return-void

    .line 364
    :cond_c
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 365
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 379
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const v1, 0xc350

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 383
    :cond_b
    :goto_b
    return-void

    .line 381
    :cond_c
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 382
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method protected forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 11
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/log4j/Priority;
    .param p3, "message"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 391
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 392
    return-void
.end method

.method public getAdditivity()Z
    .registers 2

    .prologue
    .line 400
    iget-boolean v0, p0, Lorg/apache/log4j/Category;->additive:Z

    return v0
.end method

.method public declared-synchronized getAllAppenders()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 412
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    if-nez v0, :cond_b

    .line 413
    invoke-static {}, Lorg/apache/log4j/helpers/NullEnumeration;->getInstance()Lorg/apache/log4j/helpers/NullEnumeration;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    move-result-object v0

    .line 415
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAllAppenders()Ljava/util/Enumeration;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_9

    .line 412
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 426
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    if-nez p1, :cond_a

    .line 427
    :cond_7
    const/4 v0, 0x0

    .line 429
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_11

    move-result-object v0

    goto :goto_8

    .line 426
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChainedPriority()Lorg/apache/log4j/Priority;
    .registers 3

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "c":Lorg/apache/log4j/Category;
    :goto_1
    if-eqz v0, :cond_d

    .line 457
    iget-object v1, v0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    if-eqz v1, :cond_a

    .line 458
    iget-object v1, v0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    .line 460
    :goto_9
    return-object v1

    .line 456
    :cond_a
    iget-object v0, v0, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    goto :goto_1

    .line 460
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getEffectiveLevel()Lorg/apache/log4j/Level;
    .registers 3

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "c":Lorg/apache/log4j/Category;
    :goto_1
    if-eqz v0, :cond_d

    .line 443
    iget-object v1, v0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    if-eqz v1, :cond_a

    .line 444
    iget-object v1, v0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    .line 446
    :goto_9
    return-object v1

    .line 442
    :cond_a
    iget-object v0, v0, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    goto :goto_1

    .line 446
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getHierarchy()Lorg/apache/log4j/spi/LoggerRepository;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    return-object v0
.end method

.method public final getLevel()Lorg/apache/log4j/Level;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Lorg/apache/log4j/Category;
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    return-object v0
.end method

.method public final getPriority()Lorg/apache/log4j/Level;
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .registers 3

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "c":Lorg/apache/log4j/Category;
    :goto_1
    if-eqz v0, :cond_d

    .line 604
    iget-object v1, v0, Lorg/apache/log4j/Category;->resourceBundle:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_a

    .line 605
    iget-object v1, v0, Lorg/apache/log4j/Category;->resourceBundle:Ljava/util/ResourceBundle;

    .line 608
    :goto_9
    return-object v1

    .line 603
    :cond_a
    iget-object v0, v0, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    goto :goto_1

    .line 608
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected getResourceBundleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 621
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v1

    .line 624
    .local v1, "rb":Ljava/util/ResourceBundle;
    if-nez v1, :cond_8

    .line 637
    :goto_7
    return-object v2

    .line 633
    :cond_8
    :try_start_8
    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/util/MissingResourceException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    goto :goto_7

    .line 635
    :catch_d
    move-exception v0

    .line 636
    .local v0, "mre":Ljava/util/MissingResourceException;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No resource is associated with key \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public info(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 663
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 667
    :cond_a
    :goto_a
    return-void

    .line 665
    :cond_b
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 666
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 684
    :cond_a
    :goto_a
    return-void

    .line 682
    :cond_b
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 683
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public isAttached(Lorg/apache/log4j/Appender;)Z
    .registers 3
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 691
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    if-nez v0, :cond_8

    .line 692
    :cond_6
    const/4 v0, 0x0

    .line 694
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->isAttached(Lorg/apache/log4j/Appender;)Z

    move-result v0

    goto :goto_7
.end method

.method public isDebugEnabled()Z
    .registers 3

    .prologue
    .line 734
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 735
    const/4 v0, 0x0

    .line 736
    :goto_b
    return v0

    :cond_c
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    goto :goto_b
.end method

.method public isEnabledFor(Lorg/apache/log4j/Priority;)Z
    .registers 4
    .param p1, "level"    # Lorg/apache/log4j/Priority;

    .prologue
    .line 749
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget v1, p1, Lorg/apache/log4j/Priority;->level:I

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 750
    const/4 v0, 0x0

    .line 751
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    goto :goto_b
.end method

.method public isInfoEnabled()Z
    .registers 3

    .prologue
    .line 763
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 764
    const/4 v0, 0x0

    .line 765
    :goto_b
    return v0

    :cond_c
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    goto :goto_b
.end method

.method public l7dlog(Lorg/apache/log4j/Priority;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "priority"    # Lorg/apache/log4j/Priority;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 779
    iget-object v1, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget v2, p1, Lorg/apache/log4j/Priority;->level:I

    invoke-interface {v1, v2}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 791
    :cond_a
    :goto_a
    return-void

    .line 782
    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 783
    invoke-virtual {p0, p2}, Lorg/apache/log4j/Category;->getResourceBundleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 787
    move-object v0, p2

    .line 789
    :cond_1c
    sget-object v1, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0, p3}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public l7dlog(Lorg/apache/log4j/Priority;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "priority"    # Lorg/apache/log4j/Priority;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 803
    iget-object v2, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget v3, p1, Lorg/apache/log4j/Priority;->level:I

    invoke-interface {v2, v3}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 815
    :cond_a
    :goto_a
    return-void

    .line 806
    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 807
    invoke-virtual {p0, p2}, Lorg/apache/log4j/Category;->getResourceBundleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "pattern":Ljava/lang/String;
    if-nez v1, :cond_22

    .line 810
    move-object v0, p2

    .line 813
    .local v0, "msg":Ljava/lang/String;
    :goto_1c
    sget-object v2, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0, p4}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 812
    .end local v0    # "msg":Ljava/lang/String;
    :cond_22
    invoke-static {v1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_1c
.end method

.method public log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "callerFQCN"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/log4j/Priority;
    .param p3, "message"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 852
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget v1, p2, Lorg/apache/log4j/Priority;->level:I

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 858
    :cond_a
    :goto_a
    return-void

    .line 855
    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 856
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public log(Lorg/apache/log4j/Priority;Ljava/lang/Object;)V
    .registers 5
    .param p1, "priority"    # Lorg/apache/log4j/Priority;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 834
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget v1, p1, Lorg/apache/log4j/Priority;->level:I

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 839
    :cond_a
    :goto_a
    return-void

    .line 837
    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 838
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public log(Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "priority"    # Lorg/apache/log4j/Priority;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 822
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget v1, p1, Lorg/apache/log4j/Priority;->level:I

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 827
    :cond_a
    :goto_a
    return-void

    .line 825
    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 826
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public declared-synchronized removeAllAppenders()V
    .registers 4

    .prologue
    .line 886
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    if-eqz v2, :cond_3f

    .line 887
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 888
    .local v0, "appenders":Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "iter":Ljava/util/Enumeration;
    :goto_10
    if-eqz v1, :cond_23

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 889
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    goto :goto_10

    .line 886
    .end local v0    # "appenders":Ljava/util/Vector;
    .end local v1    # "iter":Ljava/util/Enumeration;
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2

    .line 891
    .restart local v0    # "appenders":Ljava/util/Vector;
    .restart local v1    # "iter":Ljava/util/Enumeration;
    :cond_23
    :try_start_23
    iget-object v2, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAllAppenders()V

    .line 892
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 893
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Appender;

    invoke-direct {p0, v2}, Lorg/apache/log4j/Category;->fireRemoveAppenderEvent(Lorg/apache/log4j/Appender;)V

    goto :goto_2c

    .line 895
    :cond_3c
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_20

    .line 897
    .end local v0    # "appenders":Ljava/util/Vector;
    .end local v1    # "iter":Ljava/util/Enumeration;
    :cond_3f
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeAppender(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 925
    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_3
    iget-object v1, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-nez v1, :cond_9

    .line 931
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 926
    :cond_9
    :try_start_9
    iget-object v1, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v0

    .line 927
    .local v0, "appender":Lorg/apache/log4j/Appender;
    iget-object v1, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAppender(Ljava/lang/String;)V

    .line 928
    if-eqz v0, :cond_7

    .line 929
    invoke-direct {p0, v0}, Lorg/apache/log4j/Category;->fireRemoveAppenderEvent(Lorg/apache/log4j/Appender;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 925
    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAppender(Lorg/apache/log4j/Appender;)V
    .registers 4
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 908
    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_3
    iget-object v1, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-nez v1, :cond_9

    .line 915
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 910
    :cond_9
    :try_start_9
    iget-object v1, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->isAttached(Lorg/apache/log4j/Appender;)Z

    move-result v0

    .line 911
    .local v0, "wasAttached":Z
    iget-object v1, p0, Lorg/apache/log4j/Category;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAppender(Lorg/apache/log4j/Appender;)V

    .line 912
    if-eqz v0, :cond_7

    .line 913
    invoke-direct {p0, p1}, Lorg/apache/log4j/Category;->fireRemoveAppenderEvent(Lorg/apache/log4j/Appender;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 908
    .end local v0    # "wasAttached":Z
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAdditivity(Z)V
    .registers 2
    .param p1, "additive"    # Z

    .prologue
    .line 939
    iput-boolean p1, p0, Lorg/apache/log4j/Category;->additive:Z

    .line 940
    return-void
.end method

.method final setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 2
    .param p1, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 947
    iput-object p1, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 948
    return-void
.end method

.method public setLevel(Lorg/apache/log4j/Level;)V
    .registers 2
    .param p1, "level"    # Lorg/apache/log4j/Level;

    .prologue
    .line 963
    iput-object p1, p0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    .line 964
    return-void
.end method

.method public setPriority(Lorg/apache/log4j/Priority;)V
    .registers 2
    .param p1, "priority"    # Lorg/apache/log4j/Priority;

    .prologue
    .line 976
    check-cast p1, Lorg/apache/log4j/Level;

    .end local p1    # "priority":Lorg/apache/log4j/Priority;
    iput-object p1, p0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    .line 977
    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .registers 2
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    .line 989
    iput-object p1, p0, Lorg/apache/log4j/Category;->resourceBundle:Ljava/util/ResourceBundle;

    .line 990
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 1039
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1044
    :cond_a
    :goto_a
    return-void

    .line 1042
    :cond_b
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1043
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1057
    iget-object v0, p0, Lorg/apache/log4j/Category;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1061
    :cond_a
    :goto_a
    return-void

    .line 1059
    :cond_b
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1060
    sget-object v0, Lorg/apache/log4j/Category;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/Category;->forcedLog(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method
