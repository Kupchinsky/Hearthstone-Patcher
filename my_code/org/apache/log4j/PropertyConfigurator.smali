.class public Lorg/apache/log4j/PropertyConfigurator;
.super Ljava/lang/Object;
.source "PropertyConfigurator.java"

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# static fields
.field static final ADDITIVITY_PREFIX:Ljava/lang/String; = "log4j.additivity."

.field static final APPENDER_PREFIX:Ljava/lang/String; = "log4j.appender."

.field private static final APPENDER_REF_TAG:Ljava/lang/String; = "appender-ref"

.field static final CATEGORY_PREFIX:Ljava/lang/String; = "log4j.category."

.field static final FACTORY_PREFIX:Ljava/lang/String; = "log4j.factory"

.field private static final INTERNAL_ROOT_NAME:Ljava/lang/String; = "root"

.field public static final LOGGER_FACTORY_KEY:Ljava/lang/String; = "log4j.loggerFactory"

.field static final LOGGER_PREFIX:Ljava/lang/String; = "log4j.logger."

.field private static final LOGGER_REF:Ljava/lang/String; = "logger-ref"

.field static final RENDERER_PREFIX:Ljava/lang/String; = "log4j.renderer."

.field private static final RESET_KEY:Ljava/lang/String; = "log4j.reset"

.field static final ROOT_CATEGORY_PREFIX:Ljava/lang/String; = "log4j.rootCategory"

.field static final ROOT_LOGGER_PREFIX:Ljava/lang/String; = "log4j.rootLogger"

.field private static final ROOT_REF:Ljava/lang/String; = "root-ref"

.field static final THRESHOLD_PREFIX:Ljava/lang/String; = "log4j.threshold"

.field private static final THROWABLE_RENDERER_PREFIX:Ljava/lang/String; = "log4j.throwableRenderer"

.field static class$org$apache$log4j$Appender:Ljava/lang/Class;

.field static class$org$apache$log4j$Layout:Ljava/lang/Class;

.field static class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

.field static class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

.field static class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

.field static class$org$apache$log4j$spi$ThrowableRenderer:Ljava/lang/Class;


# instance fields
.field protected loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

.field protected registry:Ljava/util/Hashtable;

.field private repository:Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/PropertyConfigurator;->registry:Ljava/util/Hashtable;

    .line 100
    new-instance v0, Lorg/apache/log4j/DefaultCategoryFactory;

    invoke-direct {v0}, Lorg/apache/log4j/DefaultCategoryFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 572
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

.method public static configure(Ljava/lang/String;)V
    .registers 3
    .param p0, "configFilename"    # Ljava/lang/String;

    .prologue
    .line 403
    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 405
    return-void
.end method

.method public static configure(Ljava/net/URL;)V
    .registers 3
    .param p0, "configURL"    # Ljava/net/URL;

    .prologue
    .line 415
    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 417
    return-void
.end method

.method public static configure(Ljava/util/Properties;)V
    .registers 3
    .param p0, "properties"    # Ljava/util/Properties;

    .prologue
    .line 428
    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 430
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;)V
    .registers 3
    .param p0, "configFilename"    # Ljava/lang/String;

    .prologue
    .line 443
    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/PropertyConfigurator;->configureAndWatch(Ljava/lang/String;J)V

    .line 444
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;J)V
    .registers 4
    .param p0, "configFilename"    # Ljava/lang/String;
    .param p1, "delay"    # J

    .prologue
    .line 461
    new-instance v0, Lorg/apache/log4j/PropertyWatchdog;

    invoke-direct {v0, p0}, Lorg/apache/log4j/PropertyWatchdog;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "pdog":Lorg/apache/log4j/PropertyWatchdog;
    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/helpers/FileWatchdog;->setDelay(J)V

    .line 463
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 464
    return-void
.end method

.method private parseErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 12
    .param p1, "eh"    # Lorg/apache/log4j/spi/ErrorHandler;
    .param p2, "errorHandlerPrefix"    # Ljava/lang/String;
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 822
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "root-ref"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 824
    .local v4, "rootRef":Z
    if-eqz v4, :cond_25

    .line 825
    invoke-interface {p4}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    .line 827
    :cond_25
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "logger-ref"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "loggerName":Ljava/lang/String;
    if-eqz v3, :cond_49

    .line 829
    iget-object v5, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    if-nez v5, :cond_6c

    invoke-interface {p4, v3}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v2

    .line 831
    .local v2, "logger":Lorg/apache/log4j/Logger;
    :goto_46
    invoke-interface {p1, v2}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    .line 833
    .end local v2    # "logger":Lorg/apache/log4j/Logger;
    :cond_49
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "appender-ref"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "appenderName":Ljava/lang/String;
    if-eqz v0, :cond_6b

    .line 835
    invoke-virtual {p0, p3, v0}, Lorg/apache/log4j/PropertyConfigurator;->parseAppender(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v1

    .line 836
    .local v1, "backup":Lorg/apache/log4j/Appender;
    if-eqz v1, :cond_6b

    .line 837
    invoke-interface {p1, v1}, Lorg/apache/log4j/spi/ErrorHandler;->setBackupAppender(Lorg/apache/log4j/Appender;)V

    .line 840
    .end local v1    # "backup":Lorg/apache/log4j/Appender;
    :cond_6b
    return-void

    .line 829
    .end local v0    # "appenderName":Ljava/lang/String;
    :cond_6c
    iget-object v5, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-interface {p4, v3, v5}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v2

    goto :goto_46
.end method


# virtual methods
.method protected configureLoggerFactory(Ljava/util/Properties;)V
    .registers 5
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 566
    const-string v1, "log4j.loggerFactory"

    invoke-static {v1, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "factoryClassName":Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 569
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Setting category factory to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 570
    sget-object v1, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    if-nez v1, :cond_42

    const-string v1, "org.apache.log4j.spi.LoggerFactory"

    invoke-static {v1}, Lorg/apache/log4j/PropertyConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    :goto_30
    iget-object v2, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/LoggerFactory;

    iput-object v1, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 574
    iget-object v1, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    const-string v2, "log4j.factory."

    invoke-static {v1, p1, v2}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    .line 576
    :cond_41
    return-void

    .line 570
    :cond_42
    sget-object v1, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    goto :goto_30
.end method

.method configureRootCategory(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 9
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 602
    const-string v3, "log4j.rootLogger"

    .line 603
    .local v3, "effectiveFrefix":Ljava/lang/String;
    const-string v0, "log4j.rootLogger"

    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_12

    .line 606
    const-string v0, "log4j.rootCategory"

    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    .line 607
    const-string v3, "log4j.rootCategory"

    .line 610
    :cond_12
    if-nez v5, :cond_1a

    .line 611
    const-string v0, "Could not find root logger information. Is this OK?"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 618
    :goto_19
    return-void

    .line 613
    :cond_1a
    invoke-interface {p2}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    .line 614
    .local v2, "root":Lorg/apache/log4j/Logger;
    monitor-enter v2

    .line 615
    :try_start_1f
    const-string v4, "root"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/PropertyConfigurator;->parseCategory(Ljava/util/Properties;Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    monitor-exit v2

    goto :goto_19

    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 10
    .param p1, "configFileName"    # Ljava/lang/String;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 369
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 370
    .local v4, "props":Ljava/util/Properties;
    const/4 v2, 0x0

    .line 372
    .local v2, "istream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_24
    .catchall {:try_start_6 .. :try_end_b} :catchall_7b

    .line 373
    .end local v2    # "istream":Ljava/io/FileInputStream;
    .local v3, "istream":Ljava/io/FileInputStream;
    :try_start_b
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 374
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_94
    .catchall {:try_start_b .. :try_end_11} :catchall_91

    .line 384
    if-eqz v3, :cond_16

    .line 386
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/InterruptedIOException; {:try_start_13 .. :try_end_16} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_8b

    .line 395
    :cond_16
    :goto_16
    invoke-virtual {p0, v4, p2}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    move-object v2, v3

    .line 396
    .end local v3    # "istream":Ljava/io/FileInputStream;
    .restart local v2    # "istream":Ljava/io/FileInputStream;
    :cond_1a
    :goto_1a
    return-void

    .line 387
    .end local v2    # "istream":Ljava/io/FileInputStream;
    .restart local v3    # "istream":Ljava/io/FileInputStream;
    :catch_1b
    move-exception v1

    .line 388
    .local v1, "ignore":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_16

    .line 376
    .end local v1    # "ignore":Ljava/io/InterruptedIOException;
    .end local v3    # "istream":Ljava/io/FileInputStream;
    .restart local v2    # "istream":Ljava/io/FileInputStream;
    :catch_24
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    :goto_25
    :try_start_25
    instance-of v5, v0, Ljava/io/InterruptedIOException;

    if-nez v5, :cond_2d

    instance-of v5, v0, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_34

    .line 378
    :cond_2d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 380
    :cond_34
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Could not read configuration file ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Ignoring configuration file ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_25 .. :try_end_6c} :catchall_7b

    .line 384
    if-eqz v2, :cond_1a

    .line 386
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/io/InterruptedIOException; {:try_start_6e .. :try_end_71} :catch_72
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_8d

    goto :goto_1a

    .line 387
    :catch_72
    move-exception v1

    .line 388
    .restart local v1    # "ignore":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1a

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ignore":Ljava/io/InterruptedIOException;
    :catchall_7b
    move-exception v5

    :goto_7c
    if-eqz v2, :cond_81

    .line 386
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/InterruptedIOException; {:try_start_7e .. :try_end_81} :catch_82
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_8f

    .line 390
    :cond_81
    :goto_81
    throw v5

    .line 387
    :catch_82
    move-exception v1

    .line 388
    .restart local v1    # "ignore":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_81

    .line 389
    .end local v1    # "ignore":Ljava/io/InterruptedIOException;
    .end local v2    # "istream":Ljava/io/FileInputStream;
    .restart local v3    # "istream":Ljava/io/FileInputStream;
    :catch_8b
    move-exception v5

    goto :goto_16

    .end local v3    # "istream":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "istream":Ljava/io/FileInputStream;
    :catch_8d
    move-exception v5

    goto :goto_1a

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_8f
    move-exception v6

    goto :goto_81

    .line 384
    .end local v2    # "istream":Ljava/io/FileInputStream;
    .restart local v3    # "istream":Ljava/io/FileInputStream;
    :catchall_91
    move-exception v5

    move-object v2, v3

    .end local v3    # "istream":Ljava/io/FileInputStream;
    .restart local v2    # "istream":Ljava/io/FileInputStream;
    goto :goto_7c

    .line 376
    .end local v2    # "istream":Ljava/io/FileInputStream;
    .restart local v3    # "istream":Ljava/io/FileInputStream;
    :catch_94
    move-exception v0

    move-object v2, v3

    .end local v3    # "istream":Ljava/io/FileInputStream;
    .restart local v2    # "istream":Ljava/io/FileInputStream;
    goto :goto_25
.end method

.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 10
    .param p1, "configURL"    # Ljava/net/URL;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 517
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 518
    .local v3, "props":Ljava/util/Properties;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Reading configuration from URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 519
    const/4 v2, 0x0

    .line 520
    .local v2, "istream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 522
    .local v4, "uConn":Ljava/net/URLConnection;
    :try_start_1d
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 523
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 524
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 525
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2c} :catch_3e
    .catchall {:try_start_1d .. :try_end_2c} :catchall_95

    .line 537
    if-eqz v2, :cond_31

    .line 539
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/InterruptedIOException; {:try_start_2e .. :try_end_31} :catch_35
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_a5
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_31} :catch_a7

    .line 547
    :cond_31
    :goto_31
    invoke-virtual {p0, v3, p2}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 548
    :cond_34
    :goto_34
    return-void

    .line 540
    :catch_35
    move-exception v1

    .line 541
    .local v1, "ignore":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_31

    .line 527
    .end local v1    # "ignore":Ljava/io/InterruptedIOException;
    :catch_3e
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3f
    instance-of v5, v0, Ljava/io/InterruptedIOException;

    if-nez v5, :cond_47

    instance-of v5, v0, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_4e

    .line 529
    :cond_47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 531
    :cond_4e
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Could not read configuration file from URL ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Ignoring configuration file ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_3f .. :try_end_86} :catchall_95

    .line 537
    if-eqz v2, :cond_34

    .line 539
    :try_start_88
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catch Ljava/io/InterruptedIOException; {:try_start_88 .. :try_end_8b} :catch_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_88 .. :try_end_8b} :catch_ab

    goto :goto_34

    .line 540
    :catch_8c
    move-exception v1

    .line 541
    .restart local v1    # "ignore":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_34

    .line 537
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ignore":Ljava/io/InterruptedIOException;
    :catchall_95
    move-exception v5

    if-eqz v2, :cond_9b

    .line 539
    :try_start_98
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/io/InterruptedIOException; {:try_start_98 .. :try_end_9b} :catch_9c
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_ad
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_9b} :catch_af

    .line 544
    :cond_9b
    :goto_9b
    throw v5

    .line 540
    :catch_9c
    move-exception v1

    .line 541
    .restart local v1    # "ignore":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_9b

    .line 542
    .end local v1    # "ignore":Ljava/io/InterruptedIOException;
    :catch_a5
    move-exception v5

    goto :goto_31

    .line 543
    :catch_a7
    move-exception v5

    goto :goto_31

    .line 542
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_a9
    move-exception v5

    goto :goto_34

    .line 543
    :catch_ab
    move-exception v5

    goto :goto_34

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_ad
    move-exception v6

    goto :goto_9b

    .line 543
    :catch_af
    move-exception v6

    goto :goto_9b
.end method

.method public doConfigure(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 8
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 474
    iput-object p2, p0, Lorg/apache/log4j/PropertyConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 475
    const-string v3, "log4j.debug"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_17

    .line 477
    const-string v3, "log4j.configDebug"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 478
    if-eqz v2, :cond_17

    .line 479
    const-string v3, "[log4j.configDebug] is deprecated. Use [log4j.debug] instead."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 482
    :cond_17
    if-eqz v2, :cond_21

    .line 483
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 489
    :cond_21
    const-string v3, "log4j.reset"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "reset":Ljava/lang/String;
    if-eqz v0, :cond_33

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 491
    invoke-interface {p2}, Lorg/apache/log4j/spi/LoggerRepository;->resetConfiguration()V

    .line 494
    :cond_33
    const-string v3, "log4j.threshold"

    invoke-static {v3, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "thresholdStr":Ljava/lang/String;
    if-eqz v1, :cond_64

    .line 497
    sget-object v3, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-static {v1, v3}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/apache/log4j/spi/LoggerRepository;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 499
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Hierarchy threshold set to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/log4j/spi/LoggerRepository;->getThreshold()Lorg/apache/log4j/Level;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 502
    :cond_64
    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/PropertyConfigurator;->configureRootCategory(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 503
    invoke-virtual {p0, p1}, Lorg/apache/log4j/PropertyConfigurator;->configureLoggerFactory(Ljava/util/Properties;)V

    .line 504
    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/PropertyConfigurator;->parseCatsAndRenderers(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 506
    const-string v3, "Finished configuring."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 509
    iget-object v3, p0, Lorg/apache/log4j/PropertyConfigurator;->registry:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 510
    return-void
.end method

.method parseAdditivityForLogger(Ljava/util/Properties;Lorg/apache/log4j/Logger;Ljava/lang/String;)V
    .registers 8
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "cat"    # Lorg/apache/log4j/Logger;
    .param p3, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 675
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "log4j.additivity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Handling log4j.additivity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 679
    if-eqz v1, :cond_6f

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 680
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 681
    .local v0, "additivity":Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Setting additivity for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2, v0}, Lorg/apache/log4j/Category;->setAdditivity(Z)V

    .line 685
    .end local v0    # "additivity":Z
    :cond_6f
    return-void
.end method

.method parseAppender(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .registers 21
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "appenderName"    # Ljava/lang/String;

    .prologue
    .line 743
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/log4j/PropertyConfigurator;->registryGet(Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v3

    .line 744
    .local v3, "appender":Lorg/apache/log4j/Appender;
    if-eqz v3, :cond_2a

    .line 745
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Appender \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\" was already parsed."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    move-object v15, v3

    .line 814
    :goto_29
    return-object v15

    .line 749
    :cond_2a
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "log4j.appender."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 750
    .local v14, "prefix":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ".layout"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 752
    .local v13, "layoutPrefix":Ljava/lang/String;
    sget-object v15, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    if-nez v15, :cond_8c

    const-string v15, "org.apache.log4j.Appender"

    invoke-static {v15}, Lorg/apache/log4j/PropertyConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    sput-object v15, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    :goto_5e
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByKey(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "appender":Lorg/apache/log4j/Appender;
    check-cast v3, Lorg/apache/log4j/Appender;

    .line 755
    .restart local v3    # "appender":Lorg/apache/log4j/Appender;
    if-nez v3, :cond_8f

    .line 756
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Could not instantiate appender named \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\"."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 758
    const/4 v15, 0x0

    goto :goto_29

    .line 752
    :cond_8c
    sget-object v15, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    goto :goto_5e

    .line 760
    :cond_8f
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lorg/apache/log4j/Appender;->setName(Ljava/lang/String;)V

    .line 762
    instance-of v15, v3, Lorg/apache/log4j/spi/OptionHandler;

    if-eqz v15, :cond_27c

    .line 763
    invoke-interface {v3}, Lorg/apache/log4j/Appender;->requiresLayout()Z

    move-result v15

    if-eqz v15, :cond_10f

    .line 764
    sget-object v15, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Layout:Ljava/lang/Class;

    if-nez v15, :cond_207

    const-string v15, "org.apache.log4j.Layout"

    invoke-static {v15}, Lorg/apache/log4j/PropertyConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    sput-object v15, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Layout:Ljava/lang/Class;

    :goto_aa
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v13, v15, v1}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByKey(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/log4j/Layout;

    .line 768
    .local v12, "layout":Lorg/apache/log4j/Layout;
    if-eqz v12, :cond_10f

    .line 769
    invoke-interface {v3, v12}, Lorg/apache/log4j/Appender;->setLayout(Lorg/apache/log4j/Layout;)V

    .line 770
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Parsing layout options for \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\"."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 772
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v12, v0, v15}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    .line 773
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "End of parsing for \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\"."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 776
    .end local v12    # "layout":Lorg/apache/log4j/Layout;
    :cond_10f
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ".errorhandler"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 777
    .local v8, "errorHandlerPrefix":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v7

    .line 778
    .local v7, "errorHandlerClass":Ljava/lang/String;
    if-eqz v7, :cond_246

    .line 779
    sget-object v15, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    if-nez v15, :cond_20b

    const-string v15, "org.apache.log4j.spi.ErrorHandler"

    invoke-static {v15}, Lorg/apache/log4j/PropertyConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    sput-object v15, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    :goto_136
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v8, v15, v1}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByKey(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/spi/ErrorHandler;

    .line 783
    .local v5, "eh":Lorg/apache/log4j/spi/ErrorHandler;
    if-eqz v5, :cond_246

    .line 784
    invoke-interface {v3, v5}, Lorg/apache/log4j/Appender;->setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V

    .line 785
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Parsing errorhandler options for \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\"."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/log4j/PropertyConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v8, v1, v15}, Lorg/apache/log4j/PropertyConfigurator;->parseErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 787
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 788
    .local v4, "edited":Ljava/util/Properties;
    const/4 v15, 0x3

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "root-ref"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "logger-ref"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "appender-ref"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    .line 793
    .local v11, "keys":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "iter":Ljava/util/Iterator;
    :cond_1da
    :goto_1da
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_212

    .line 794
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 795
    .local v6, "entry":Ljava/util/Map$Entry;
    const/4 v9, 0x0

    .line 796
    .local v9, "i":I
    :goto_1e7
    array-length v15, v11

    if-ge v9, v15, :cond_1f6

    .line 797
    aget-object v15, v11, v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20f

    .line 799
    :cond_1f6
    array-length v15, v11

    if-ne v9, v15, :cond_1da

    .line 800
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1da

    .line 764
    .end local v4    # "edited":Ljava/util/Properties;
    .end local v5    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "errorHandlerClass":Ljava/lang/String;
    .end local v8    # "errorHandlerPrefix":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v11    # "keys":[Ljava/lang/String;
    :cond_207
    sget-object v15, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Layout:Ljava/lang/Class;

    goto/16 :goto_aa

    .line 779
    .restart local v7    # "errorHandlerClass":Ljava/lang/String;
    .restart local v8    # "errorHandlerPrefix":Ljava/lang/String;
    :cond_20b
    sget-object v15, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    goto/16 :goto_136

    .line 796
    .restart local v4    # "edited":Ljava/util/Properties;
    .restart local v5    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    .restart local v9    # "i":I
    .restart local v10    # "iter":Ljava/util/Iterator;
    .restart local v11    # "keys":[Ljava/lang/String;
    :cond_20f
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e7

    .line 803
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "i":I
    :cond_212
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v4, v15}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    .line 804
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "End of errorhandler parsing for \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\"."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 809
    .end local v4    # "edited":Ljava/util/Properties;
    .end local v5    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v11    # "keys":[Ljava/lang/String;
    :cond_246
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v3, v0, v15}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    .line 810
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Parsed \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\" options."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 812
    .end local v7    # "errorHandlerClass":Ljava/lang/String;
    .end local v8    # "errorHandlerPrefix":Ljava/lang/String;
    :cond_27c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/log4j/PropertyConfigurator;->parseAppenderFilters(Ljava/util/Properties;Ljava/lang/String;Lorg/apache/log4j/Appender;)V

    .line 813
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/log4j/PropertyConfigurator;->registryPut(Lorg/apache/log4j/Appender;)V

    move-object v15, v3

    .line 814
    goto/16 :goto_29
.end method

.method parseAppenderFilters(Ljava/util/Properties;Ljava/lang/String;Lorg/apache/log4j/Appender;)V
    .registers 26
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "appenderName"    # Ljava/lang/String;
    .param p3, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 847
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "log4j.appender."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, ".filter."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 848
    .local v10, "filterPrefix":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    .line 849
    .local v6, "fIdx":I
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 850
    .local v12, "filters":Ljava/util/Hashtable;
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 851
    .local v5, "e":Ljava/util/Enumeration;
    const-string v16, ""

    .line 852
    .local v16, "name":Ljava/lang/String;
    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_8a

    .line 853
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 854
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2c

    .line 855
    const/16 v20, 0x2e

    move/from16 v0, v20

    invoke-virtual {v14, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 856
    .local v4, "dotIdx":I
    move-object v8, v14

    .line 857
    .local v8, "filterKey":Ljava/lang/String;
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_5d

    .line 858
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 859
    add-int/lit8 v20, v4, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 861
    :cond_5d
    invoke-virtual {v12, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Vector;

    .line 862
    .local v9, "filterOpts":Ljava/util/Vector;
    if-nez v9, :cond_6d

    .line 863
    new-instance v9, Ljava/util/Vector;

    .end local v9    # "filterOpts":Ljava/util/Vector;
    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 864
    .restart local v9    # "filterOpts":Ljava/util/Vector;
    invoke-virtual {v12, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    :cond_6d
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_2c

    .line 867
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v19

    .line 868
    .local v19, "value":Ljava/lang/String;
    new-instance v20, Lorg/apache/log4j/NameValue;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 875
    .end local v4    # "dotIdx":I
    .end local v8    # "filterKey":Ljava/lang/String;
    .end local v9    # "filterOpts":Ljava/util/Vector;
    .end local v14    # "key":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_8a
    new-instance v13, Lorg/apache/log4j/SortedKeyEnumeration;

    invoke-direct {v13, v12}, Lorg/apache/log4j/SortedKeyEnumeration;-><init>(Ljava/util/Hashtable;)V

    .line 876
    .local v13, "g":Ljava/util/Enumeration;
    :cond_8f
    :goto_8f
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_17d

    .line 877
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 878
    .restart local v14    # "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 879
    .local v3, "clazz":Ljava/lang/String;
    if-eqz v3, :cond_15d

    .line 880
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "Filter key: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "] class: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "] props: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual {v12, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 881
    sget-object v20, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    if-nez v20, :cond_122

    const-string v20, "org.apache.log4j.spi.Filter"

    invoke-static/range {v20 .. v20}, Lorg/apache/log4j/PropertyConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sput-object v20, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    :goto_e5
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/log4j/spi/Filter;

    .line 882
    .local v7, "filter":Lorg/apache/log4j/spi/Filter;
    if-eqz v7, :cond_8f

    .line 883
    new-instance v17, Lorg/apache/log4j/config/PropertySetter;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 884
    .local v17, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-virtual {v12, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Vector;

    .line 885
    .local v18, "v":Ljava/util/Vector;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v11

    .line 886
    .local v11, "filterProps":Ljava/util/Enumeration;
    :goto_104
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_125

    .line 887
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/log4j/NameValue;

    .line 888
    .local v15, "kv":Lorg/apache/log4j/NameValue;
    iget-object v0, v15, Lorg/apache/log4j/NameValue;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v15, Lorg/apache/log4j/NameValue;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_104

    .line 881
    .end local v7    # "filter":Lorg/apache/log4j/spi/Filter;
    .end local v11    # "filterProps":Ljava/util/Enumeration;
    .end local v15    # "kv":Lorg/apache/log4j/NameValue;
    .end local v17    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v18    # "v":Ljava/util/Vector;
    :cond_122
    sget-object v20, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    goto :goto_e5

    .line 890
    .restart local v7    # "filter":Lorg/apache/log4j/spi/Filter;
    .restart local v11    # "filterProps":Ljava/util/Enumeration;
    .restart local v17    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .restart local v18    # "v":Ljava/util/Vector;
    :cond_125
    invoke-virtual/range {v17 .. v17}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 891
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "Adding filter of type ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "] to appender named ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-interface/range {p3 .. p3}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "]."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 893
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lorg/apache/log4j/Appender;->addFilter(Lorg/apache/log4j/spi/Filter;)V

    goto/16 :goto_8f

    .line 896
    .end local v7    # "filter":Lorg/apache/log4j/spi/Filter;
    .end local v11    # "filterProps":Ljava/util/Enumeration;
    .end local v17    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v18    # "v":Ljava/util/Vector;
    :cond_15d
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "Missing class definition for filter: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto/16 :goto_8f

    .line 899
    .end local v3    # "clazz":Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    :cond_17d
    return-void
.end method

.method parseCategory(Ljava/util/Properties;Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "logger"    # Lorg/apache/log4j/Logger;
    .param p3, "optionKey"    # Ljava/lang/String;
    .param p4, "loggerName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 693
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parsing for ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] with value=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 695
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .local v3, "st":Ljava/util/StringTokenizer;
    const-string v4, ","

    invoke-virtual {p5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a5

    const-string v4, ""

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a5

    .line 703
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_44

    .line 740
    :cond_43
    return-void

    .line 706
    :cond_44
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, "levelStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Level token is ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 712
    const-string v4, "inherited"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    const-string v4, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 714
    :cond_74
    const-string v4, "root"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 715
    const-string v4, "The root logger cannot be set to null."

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 722
    :goto_81
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 726
    .end local v2    # "levelStr":Ljava/lang/String;
    :cond_a5
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->removeAllAppenders()V

    .line 730
    :cond_a8
    :goto_a8
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 731
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "appenderName":Ljava/lang/String;
    if-eqz v1, :cond_a8

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    .line 734
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parsing appender named \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0, p1, v1}, Lorg/apache/log4j/PropertyConfigurator;->parseAppender(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v0

    .line 736
    .local v0, "appender":Lorg/apache/log4j/Appender;
    if-eqz v0, :cond_a8

    .line 737
    invoke-virtual {p2, v0}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    goto :goto_a8

    .line 717
    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    .end local v1    # "appenderName":Ljava/lang/String;
    .restart local v2    # "levelStr":Ljava/lang/String;
    :cond_e6
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_81

    .line 720
    :cond_eb
    sget-object v4, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {v2, v4}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_81
.end method

.method protected parseCatsAndRenderers(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 15
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 626
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v6

    .line 627
    .local v6, "enumeration":Ljava/util/Enumeration;
    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 628
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 629
    .local v3, "key":Ljava/lang/String;
    const-string v0, "log4j.category."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "log4j.logger."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 630
    :cond_20
    const/4 v4, 0x0

    .line 631
    .local v4, "loggerName":Ljava/lang/String;
    const-string v0, "log4j.category."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 632
    const-string v0, "log4j.category."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 636
    :cond_33
    :goto_33
    invoke-static {v3, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, "value":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-interface {p2, v4, v0}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v2

    .line 638
    .local v2, "logger":Lorg/apache/log4j/Logger;
    monitor-enter v2

    move-object v0, p0

    move-object v1, p1

    .line 639
    :try_start_40
    invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/PropertyConfigurator;->parseCategory(Ljava/util/Properties;Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0, p1, v2, v4}, Lorg/apache/log4j/PropertyConfigurator;->parseAdditivityForLogger(Ljava/util/Properties;Lorg/apache/log4j/Logger;Ljava/lang/String;)V

    .line 641
    monitor-exit v2

    goto :goto_4

    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_48

    throw v0

    .line 633
    .end local v2    # "logger":Lorg/apache/log4j/Logger;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4b
    const-string v0, "log4j.logger."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 634
    const-string v0, "log4j.logger."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_33

    .line 642
    .end local v4    # "loggerName":Ljava/lang/String;
    :cond_5e
    const-string v0, "log4j.renderer."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 643
    const-string v0, "log4j.renderer."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 644
    .local v7, "renderedClass":Ljava/lang/String;
    invoke-static {v3, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    .line 645
    .local v8, "renderingClass":Ljava/lang/String;
    instance-of v0, p2, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 646
    check-cast v0, Lorg/apache/log4j/spi/RendererSupport;

    invoke-static {v0, v7, v8}, Lorg/apache/log4j/or/RendererMap;->addRenderer(Lorg/apache/log4j/spi/RendererSupport;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 649
    .end local v7    # "renderedClass":Ljava/lang/String;
    .end local v8    # "renderingClass":Ljava/lang/String;
    :cond_7f
    const-string v0, "log4j.throwableRenderer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 650
    instance-of v0, p2, Lorg/apache/log4j/spi/ThrowableRendererSupport;

    if-eqz v0, :cond_4

    .line 651
    const-string v1, "log4j.throwableRenderer"

    sget-object v0, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$ThrowableRenderer:Ljava/lang/Class;

    if-nez v0, :cond_a9

    const-string v0, "org.apache.log4j.spi.ThrowableRenderer"

    invoke-static {v0}, Lorg/apache/log4j/PropertyConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$ThrowableRenderer:Ljava/lang/Class;

    :goto_99
    const/4 v11, 0x0

    invoke-static {p1, v1, v0, v11}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByKey(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/log4j/spi/ThrowableRenderer;

    .line 656
    .local v10, "tr":Lorg/apache/log4j/spi/ThrowableRenderer;
    if-nez v10, :cond_ac

    .line 657
    const-string v0, "Could not instantiate throwableRenderer."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 651
    .end local v10    # "tr":Lorg/apache/log4j/spi/ThrowableRenderer;
    :cond_a9
    sget-object v0, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$ThrowableRenderer:Ljava/lang/Class;

    goto :goto_99

    .line 660
    .restart local v10    # "tr":Lorg/apache/log4j/spi/ThrowableRenderer;
    :cond_ac
    new-instance v9, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v9, v10}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 661
    .local v9, "setter":Lorg/apache/log4j/config/PropertySetter;
    const-string v0, "log4j.throwableRenderer."

    invoke-virtual {v9, p1, v0}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/util/Properties;Ljava/lang/String;)V

    move-object v0, p2

    .line 662
    check-cast v0, Lorg/apache/log4j/spi/ThrowableRendererSupport;

    invoke-interface {v0, v10}, Lorg/apache/log4j/spi/ThrowableRendererSupport;->setThrowableRenderer(Lorg/apache/log4j/spi/ThrowableRenderer;)V

    goto/16 :goto_4

    .line 668
    .end local v3    # "key":Ljava/lang/String;
    .end local v9    # "setter":Lorg/apache/log4j/config/PropertySetter;
    .end local v10    # "tr":Lorg/apache/log4j/spi/ThrowableRenderer;
    :cond_be
    return-void
.end method

.method registryGet(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 907
    iget-object v0, p0, Lorg/apache/log4j/PropertyConfigurator;->registry:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    return-object v0
.end method

.method registryPut(Lorg/apache/log4j/Appender;)V
    .registers 4
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 903
    iget-object v0, p0, Lorg/apache/log4j/PropertyConfigurator;->registry:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    return-void
.end method
