.class public final Lorg/apache/log4j/spi/RootLogger;
.super Lorg/apache/log4j/Logger;
.source "RootLogger.java"


# direct methods
.method public constructor <init>(Lorg/apache/log4j/Level;)V
    .registers 3
    .param p1, "level"    # Lorg/apache/log4j/Level;

    .prologue
    .line 45
    const-string v0, "root"

    invoke-direct {p0, v0}, Lorg/apache/log4j/Logger;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/log4j/spi/RootLogger;->setLevel(Lorg/apache/log4j/Level;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final getChainedLevel()Lorg/apache/log4j/Level;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public final setLevel(Lorg/apache/log4j/Level;)V
    .registers 4
    .param p1, "level"    # Lorg/apache/log4j/Level;

    .prologue
    .line 63
    if-nez p1, :cond_d

    .line 64
    const-string v0, "You have tried to set a null level to root."

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :goto_c
    return-void

    .line 67
    :cond_d
    iput-object p1, p0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    goto :goto_c
.end method
