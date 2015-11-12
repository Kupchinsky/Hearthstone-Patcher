.class public Lorg/apache/log4j/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field public static final CONFIGURATOR_CLASS_KEY:Ljava/lang/String; = "log4j.configuratorClass"

.field public static final DEFAULT_CONFIGURATION_FILE:Ljava/lang/String; = "log4j.properties"

.field public static final DEFAULT_CONFIGURATION_KEY:Ljava/lang/String; = "log4j.configuration"

.field public static final DEFAULT_INIT_OVERRIDE_KEY:Ljava/lang/String; = "log4j.defaultInitOverride"

.field static final DEFAULT_XML_CONFIGURATION_FILE:Ljava/lang/String; = "log4j.xml"

.field private static guard:Ljava/lang/Object;

.field private static repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x0

    .line 77
    sput-object v9, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    .line 82
    new-instance v4, Lorg/apache/log4j/Hierarchy;

    new-instance v7, Lorg/apache/log4j/spi/RootLogger;

    sget-object v8, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-direct {v7, v8}, Lorg/apache/log4j/spi/RootLogger;-><init>(Lorg/apache/log4j/Level;)V

    invoke-direct {v4, v7}, Lorg/apache/log4j/Hierarchy;-><init>(Lorg/apache/log4j/Logger;)V

    .line 83
    .local v4, "h":Lorg/apache/log4j/Hierarchy;
    new-instance v7, Lorg/apache/log4j/spi/DefaultRepositorySelector;

    invoke-direct {v7, v4}, Lorg/apache/log4j/spi/DefaultRepositorySelector;-><init>(Lorg/apache/log4j/spi/LoggerRepository;)V

    sput-object v7, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    .line 86
    const-string v7, "log4j.defaultInitOverride"

    invoke-static {v7, v9}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "override":Ljava/lang/String;
    if-eqz v5, :cond_26

    const-string v7, "false"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 93
    :cond_26
    const-string v7, "log4j.configuration"

    invoke-static {v7, v9}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "configurationOptionStr":Ljava/lang/String;
    const-string v7, "log4j.configuratorClass"

    invoke-static {v7, v9}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "configuratorClassName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 106
    .local v6, "url":Ljava/net/URL;
    if-nez v0, :cond_69

    .line 107
    const-string v7, "log4j.xml"

    invoke-static {v7}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 108
    if-nez v6, :cond_43

    .line 109
    const-string v7, "log4j.properties"

    invoke-static {v7}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 124
    :cond_43
    :goto_43
    if-eqz v6, :cond_7c

    .line 125
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Using URL ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] for automatic log4j configuration."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 127
    :try_start_61
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lorg/apache/log4j/helpers/OptionConverter;->selectAndConfigure(Ljava/net/URL;Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    :try_end_68
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_61 .. :try_end_68} :catch_75

    .line 139
    .end local v0    # "configurationOptionStr":Ljava/lang/String;
    .end local v1    # "configuratorClassName":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :goto_68
    return-void

    .line 113
    .restart local v0    # "configurationOptionStr":Ljava/lang/String;
    .restart local v1    # "configuratorClassName":Ljava/lang/String;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_69
    :try_start_69
    new-instance v6, Ljava/net/URL;

    .end local v6    # "url":Ljava/net/URL;
    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/net/MalformedURLException; {:try_start_69 .. :try_end_6e} :catch_6f

    .restart local v6    # "url":Ljava/net/URL;
    goto :goto_43

    .line 114
    .end local v6    # "url":Ljava/net/URL;
    :catch_6f
    move-exception v3

    .line 117
    .local v3, "ex":Ljava/net/MalformedURLException;
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .restart local v6    # "url":Ljava/net/URL;
    goto :goto_43

    .line 129
    .end local v3    # "ex":Ljava/net/MalformedURLException;
    :catch_75
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    const-string v7, "Error during default initialization"

    invoke-static {v7, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68

    .line 133
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_7c
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not find resource: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_68

    .line 136
    .end local v0    # "configurationOptionStr":Ljava/lang/String;
    .end local v1    # "configuratorClassName":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :cond_99
    const-string v7, "Default initialization of overridden by log4j.defaultInitOverrideproperty."

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_68
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/log4j/spi/LoggerRepository;->exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLoggers()Ljava/util/Enumeration;
    .registers 1

    .prologue
    .line 261
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;
    .registers 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 238
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "factory"    # Lorg/apache/log4j/spi/LoggerFactory;

    .prologue
    .line 249
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;
    .registers 4

    .prologue
    .line 196
    sget-object v2, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    if-nez v2, :cond_25

    .line 197
    new-instance v2, Lorg/apache/log4j/spi/DefaultRepositorySelector;

    new-instance v3, Lorg/apache/log4j/spi/NOPLoggerRepository;

    invoke-direct {v3}, Lorg/apache/log4j/spi/NOPLoggerRepository;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/log4j/spi/DefaultRepositorySelector;-><init>(Lorg/apache/log4j/spi/LoggerRepository;)V

    sput-object v2, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    .line 198
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Class invariant violation"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "log4j called after unloading, see http://logging.apache.org/log4j/1.2/faq.html#unload."

    .line 202
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/log4j/LogManager;->isLikelySafeScenario(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 203
    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    :cond_25
    :goto_25
    sget-object v2, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    invoke-interface {v2}, Lorg/apache/log4j/spi/RepositorySelector;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v2

    return-object v2

    .line 205
    :cond_2c
    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method public static getRootLogger()Lorg/apache/log4j/Logger;
    .registers 1

    .prologue
    .line 218
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method private static isLikelySafeScenario(Ljava/lang/Exception;)Z
    .registers 5
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 187
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 188
    .local v1, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "org.apache.catalina.loader.WebappClassLoader.stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    const/4 v2, 0x1

    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public static resetConfiguration()V
    .registers 1

    .prologue
    .line 273
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->resetConfiguration()V

    .line 274
    return-void
.end method

.method public static setRepositorySelector(Lorg/apache/log4j/spi/RepositorySelector;Ljava/lang/Object;)V
    .registers 4
    .param p0, "selector"    # Lorg/apache/log4j/spi/RepositorySelector;
    .param p1, "guard"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    if-eqz v0, :cond_10

    sget-object v0, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    if-eq v0, p1, :cond_10

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempted to reset the LoggerFactory without possessing the guard."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_10
    if-nez p0, :cond_1a

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RepositorySelector must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1a
    sput-object p1, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    .line 173
    sput-object p0, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    .line 174
    return-void
.end method

.method public static shutdown()V
    .registers 1

    .prologue
    .line 267
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->shutdown()V

    .line 268
    return-void
.end method
