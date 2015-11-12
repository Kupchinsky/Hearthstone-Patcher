.class public final Lorg/apache/log4j/pattern/LoggerPatternConverter;
.super Lorg/apache/log4j/pattern/NamePatternConverter;
.source "LoggerPatternConverter.java"


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/LoggerPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/log4j/pattern/LoggerPatternConverter;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LoggerPatternConverter;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .registers 4
    .param p1, "options"    # [Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "Logger"

    const-string v1, "logger"

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/log4j/pattern/NamePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/LoggerPatternConverter;
    .registers 2
    .param p0, "options"    # [Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    .line 52
    :cond_5
    sget-object v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LoggerPatternConverter;

    .line 55
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/pattern/LoggerPatternConverter;-><init>([Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .registers 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 63
    .local v0, "initialLength":I
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/pattern/NamePatternConverter;->abbreviate(ILjava/lang/StringBuffer;)V

    .line 65
    return-void
.end method
