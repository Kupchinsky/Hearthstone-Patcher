.class public Lorg/apache/log4j/pattern/RelativeTimePatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "RelativeTimePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;
    }
.end annotation


# instance fields
.field private lastTimestamp:Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 39
    const-string v0, "Time"

    const-string v1, "time"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;

    const-wide/16 v2, 0x0

    const-string v1, ""

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;-><init>(JLjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter;->lastTimestamp:Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;

    .line 40
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/RelativeTimePatternConverter;
    .registers 2
    .param p0, "options"    # [Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/RelativeTimePatternConverter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .registers 9
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 56
    iget-wide v2, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 58
    .local v2, "timestamp":J
    iget-object v1, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter;->lastTimestamp:Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;

    invoke-virtual {v1, v2, v3, p2}, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;->format(JLjava/lang/StringBuffer;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 59
    invoke-static {}, Lorg/apache/log4j/spi/LoggingEvent;->getStartTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "formatted":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    new-instance v1, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;-><init>(JLjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter;->lastTimestamp:Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;

    .line 64
    .end local v0    # "formatted":Ljava/lang/String;
    :cond_1e
    return-void
.end method
