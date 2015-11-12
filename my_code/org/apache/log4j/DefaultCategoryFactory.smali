.class Lorg/apache/log4j/DefaultCategoryFactory;
.super Ljava/lang/Object;
.source "DefaultCategoryFactory.java"

# interfaces
.implements Lorg/apache/log4j/spi/LoggerFactory;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Lorg/apache/log4j/Logger;

    invoke-direct {v0, p1}, Lorg/apache/log4j/Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
