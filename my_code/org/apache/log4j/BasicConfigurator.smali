.class public Lorg/apache/log4j/BasicConfigurator;
.super Ljava/lang/Object;
.source "BasicConfigurator.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static configure()V
    .registers 4

    .prologue
    .line 46
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 47
    .local v0, "root":Lorg/apache/log4j/Logger;
    new-instance v1, Lorg/apache/log4j/ConsoleAppender;

    new-instance v2, Lorg/apache/log4j/PatternLayout;

    const-string v3, "%r [%t] %p %c %x - %m%n"

    invoke-direct {v2, v3}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/log4j/ConsoleAppender;-><init>(Lorg/apache/log4j/Layout;)V

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 49
    return-void
.end method

.method public static configure(Lorg/apache/log4j/Appender;)V
    .registers 2
    .param p0, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 58
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 59
    .local v0, "root":Lorg/apache/log4j/Logger;
    invoke-virtual {v0, p0}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 60
    return-void
.end method

.method public static resetConfiguration()V
    .registers 0

    .prologue
    .line 71
    invoke-static {}, Lorg/apache/log4j/LogManager;->resetConfiguration()V

    .line 72
    return-void
.end method
