.class public Lorg/apache/log4j/varia/NullAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "NullAppender.java"


# static fields
.field private static instance:Lorg/apache/log4j/varia/NullAppender;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lorg/apache/log4j/varia/NullAppender;

    invoke-direct {v0}, Lorg/apache/log4j/varia/NullAppender;-><init>()V

    sput-object v0, Lorg/apache/log4j/varia/NullAppender;->instance:Lorg/apache/log4j/varia/NullAppender;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 33
    return-void
.end method

.method public static getNullAppender()Lorg/apache/log4j/varia/NullAppender;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lorg/apache/log4j/varia/NullAppender;->instance:Lorg/apache/log4j/varia/NullAppender;

    return-object v0
.end method


# virtual methods
.method public activateOptions()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method protected append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 2
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 71
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public doAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 2
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 65
    return-void
.end method

.method public getInstance()Lorg/apache/log4j/varia/NullAppender;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lorg/apache/log4j/varia/NullAppender;->instance:Lorg/apache/log4j/varia/NullAppender;

    return-object v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
