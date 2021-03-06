.class public Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "ThrowableInformationPatternConverter.java"


# instance fields
.field private maxLines:I


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .registers 5
    .param p1, "options"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 49
    const-string v0, "Throwable"

    const-string v1, "throwable"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    .line 51
    if-eqz p1, :cond_1e

    array-length v0, p1

    if-lez v0, :cond_1e

    .line 52
    const-string v0, "none"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 53
    iput v2, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    .line 63
    :cond_1e
    :goto_1e
    return-void

    .line 54
    :cond_1f
    const-string v0, "short"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    goto :goto_1e

    .line 58
    :cond_2d
    const/4 v0, 0x0

    :try_start_2e
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_36} :catch_37

    goto :goto_1e

    .line 59
    :catch_37
    move-exception v0

    goto :goto_1e
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;
    .registers 2
    .param p0, "options"    # [Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .registers 10
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 80
    iget v5, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    if-eqz v5, :cond_2e

    .line 81
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v1

    .line 83
    .local v1, "information":Lorg/apache/log4j/spi/ThrowableInformation;
    if-eqz v1, :cond_2e

    .line 84
    invoke-virtual {v1}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "stringRep":[Ljava/lang/String;
    array-length v2, v4

    .line 87
    .local v2, "length":I
    iget v5, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    if-gez v5, :cond_27

    .line 88
    iget v5, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    add-int/2addr v2, v5

    .line 93
    :cond_16
    :goto_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, v2, :cond_2e

    .line 94
    aget-object v3, v4, v0

    .line 95
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 89
    .end local v0    # "i":I
    .end local v3    # "string":Ljava/lang/String;
    :cond_27
    iget v5, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    if-le v2, v5, :cond_16

    .line 90
    iget v2, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    goto :goto_16

    .line 99
    .end local v1    # "information":Lorg/apache/log4j/spi/ThrowableInformation;
    .end local v2    # "length":I
    .end local v4    # "stringRep":[Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method public handlesThrowable()Z
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method
