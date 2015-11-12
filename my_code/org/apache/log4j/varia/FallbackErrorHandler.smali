.class public Lorg/apache/log4j/varia/FallbackErrorHandler;
.super Ljava/lang/Object;
.source "FallbackErrorHandler.java"

# interfaces
.implements Lorg/apache/log4j/spi/ErrorHandler;


# instance fields
.field backup:Lorg/apache/log4j/Appender;

.field loggers:Ljava/util/Vector;

.field primary:Lorg/apache/log4j/Appender;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 118
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "errorCode"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/log4j/varia/FallbackErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V

    .line 79
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V
    .registers 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "errorCode"    # I
    .param p4, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 87
    instance-of v2, p2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_b

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 90
    :cond_b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "FB: The following error reported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    const-string v2, "FB: INITIATING FALLBACK PROCEDURE."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    if-eqz v2, :cond_e3

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget-object v2, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_e3

    .line 94
    iget-object v2, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Logger;

    .line 95
    .local v1, "l":Lorg/apache/log4j/Logger;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "FB: Searching for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->primary:Lorg/apache/log4j/Appender;

    invoke-interface {v3}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] in logger ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "FB: Replacing ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->primary:Lorg/apache/log4j/Appender;

    invoke-interface {v3}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] by ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->backup:Lorg/apache/log4j/Appender;

    invoke-interface {v3}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] in logger ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->primary:Lorg/apache/log4j/Appender;

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Category;->removeAppender(Lorg/apache/log4j/Appender;)V

    .line 100
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "FB: Adding appender ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->backup:Lorg/apache/log4j/Appender;

    invoke-interface {v3}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] to logger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->backup:Lorg/apache/log4j/Appender;

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2b

    .line 105
    .end local v0    # "i":I
    .end local v1    # "l":Lorg/apache/log4j/Logger;
    :cond_e3
    return-void
.end method

.method public setAppender(Lorg/apache/log4j/Appender;)V
    .registers 4
    .param p1, "primary"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FB: Setting primary appender to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->primary:Lorg/apache/log4j/Appender;

    .line 127
    return-void
.end method

.method public setBackupAppender(Lorg/apache/log4j/Appender;)V
    .registers 4
    .param p1, "backup"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FB: Setting backup appender to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->backup:Lorg/apache/log4j/Appender;

    .line 136
    return-void
.end method

.method public setLogger(Lorg/apache/log4j/Logger;)V
    .registers 4
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FB: Adding logger ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    if-nez v0, :cond_2b

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    .line 61
    :cond_2b
    iget-object v0, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
