.class public final Lorg/apache/log4j/pattern/DatePatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "DatePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;
    }
.end annotation


# static fields
.field private static final ABSOLUTE_FORMAT:Ljava/lang/String; = "ABSOLUTE"

.field private static final ABSOLUTE_TIME_PATTERN:Ljava/lang/String; = "HH:mm:ss,SSS"

.field private static final DATE_AND_TIME_FORMAT:Ljava/lang/String; = "DATE"

.field private static final DATE_AND_TIME_PATTERN:Ljava/lang/String; = "dd MMM yyyy HH:mm:ss,SSS"

.field private static final ISO8601_FORMAT:Ljava/lang/String; = "ISO8601"

.field private static final ISO8601_PATTERN:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss,SSS"


# instance fields
.field private final df:Lorg/apache/log4j/pattern/CachedDateFormat;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .registers 12
    .param p1, "options"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 113
    const-string v7, "Date"

    const-string v8, "date"

    invoke-direct {p0, v7, v8}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_d

    array-length v7, p1

    if-nez v7, :cond_3d

    .line 120
    :cond_d
    const/4 v3, 0x0

    .line 127
    .local v3, "patternOption":Ljava/lang/String;
    :goto_e
    if-eqz v3, :cond_18

    const-string v7, "ISO8601"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 130
    :cond_18
    const-string v2, "yyyy-MM-dd HH:mm:ss,SSS"

    .line 139
    .local v2, "pattern":Ljava/lang/String;
    :goto_1a
    const/16 v1, 0x3e8

    .line 140
    .local v1, "maximumCacheValidity":I
    const/4 v4, 0x0

    .line 143
    .local v4, "simpleFormat":Ljava/text/DateFormat;
    :try_start_1d
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_22} :catch_59

    .line 144
    .end local v4    # "simpleFormat":Ljava/text/DateFormat;
    .local v5, "simpleFormat":Ljava/text/DateFormat;
    :try_start_22
    invoke-static {v2}, Lorg/apache/log4j/pattern/CachedDateFormat;->getMaximumCacheValidity(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_25} :catch_7f

    move-result v1

    .line 155
    :goto_26
    if-eqz p1, :cond_79

    array-length v7, p1

    if-le v7, v9, :cond_79

    .line 156
    aget-object v7, p1, v9

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 157
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v4, v5

    .line 162
    .end local v5    # "simpleFormat":Ljava/text/DateFormat;
    .end local v6    # "tz":Ljava/util/TimeZone;
    .restart local v4    # "simpleFormat":Ljava/text/DateFormat;
    :goto_35
    new-instance v7, Lorg/apache/log4j/pattern/CachedDateFormat;

    invoke-direct {v7, v4, v1}, Lorg/apache/log4j/pattern/CachedDateFormat;-><init>(Ljava/text/DateFormat;I)V

    iput-object v7, p0, Lorg/apache/log4j/pattern/DatePatternConverter;->df:Lorg/apache/log4j/pattern/CachedDateFormat;

    .line 163
    return-void

    .line 122
    .end local v1    # "maximumCacheValidity":I
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "patternOption":Ljava/lang/String;
    .end local v4    # "simpleFormat":Ljava/text/DateFormat;
    :cond_3d
    const/4 v7, 0x0

    aget-object v3, p1, v7

    .restart local v3    # "patternOption":Ljava/lang/String;
    goto :goto_e

    .line 131
    :cond_41
    const-string v7, "ABSOLUTE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 132
    const-string v2, "HH:mm:ss,SSS"

    .restart local v2    # "pattern":Ljava/lang/String;
    goto :goto_1a

    .line 133
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_4c
    const-string v7, "DATE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 134
    const-string v2, "dd MMM yyyy HH:mm:ss,SSS"

    .restart local v2    # "pattern":Ljava/lang/String;
    goto :goto_1a

    .line 136
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_57
    move-object v2, v3

    .restart local v2    # "pattern":Ljava/lang/String;
    goto :goto_1a

    .line 145
    .restart local v1    # "maximumCacheValidity":I
    .restart local v4    # "simpleFormat":Ljava/text/DateFormat;
    :catch_59
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_5a
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not instantiate SimpleDateFormat with pattern "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    new-instance v4, Ljava/text/SimpleDateFormat;

    .end local v4    # "simpleFormat":Ljava/text/DateFormat;
    const-string v7, "yyyy-MM-dd HH:mm:ss,SSS"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v4    # "simpleFormat":Ljava/text/DateFormat;
    move-object v5, v4

    .end local v4    # "simpleFormat":Ljava/text/DateFormat;
    .restart local v5    # "simpleFormat":Ljava/text/DateFormat;
    goto :goto_26

    .line 159
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_79
    new-instance v4, Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;

    invoke-direct {v4, v5}, Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;-><init>(Ljava/text/DateFormat;)V

    .end local v5    # "simpleFormat":Ljava/text/DateFormat;
    .restart local v4    # "simpleFormat":Ljava/text/DateFormat;
    goto :goto_35

    .line 145
    .end local v4    # "simpleFormat":Ljava/text/DateFormat;
    .restart local v5    # "simpleFormat":Ljava/text/DateFormat;
    :catch_7f
    move-exception v0

    move-object v4, v5

    .end local v5    # "simpleFormat":Ljava/text/DateFormat;
    .restart local v4    # "simpleFormat":Ljava/text/DateFormat;
    goto :goto_5a
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/DatePatternConverter;
    .registers 2
    .param p0, "options"    # [Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Lorg/apache/log4j/pattern/DatePatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/pattern/DatePatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/StringBuffer;

    .prologue
    .line 188
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 189
    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/pattern/DatePatternConverter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)V

    .line 192
    :cond_a
    invoke-super {p0, p1, p2}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 193
    return-void
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)V
    .registers 7
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 201
    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/pattern/DatePatternConverter;->df:Lorg/apache/log4j/pattern/CachedDateFormat;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lorg/apache/log4j/pattern/CachedDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 203
    monitor-exit p0

    .line 204
    return-void

    .line 203
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .registers 7
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "output"    # Ljava/lang/StringBuffer;

    .prologue
    .line 179
    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/pattern/DatePatternConverter;->df:Lorg/apache/log4j/pattern/CachedDateFormat;

    iget-wide v2, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {v0, v2, v3, p2}, Lorg/apache/log4j/pattern/CachedDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 181
    monitor-exit p0

    .line 182
    return-void

    .line 181
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method
