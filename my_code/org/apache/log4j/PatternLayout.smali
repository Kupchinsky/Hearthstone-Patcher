.class public Lorg/apache/log4j/PatternLayout;
.super Lorg/apache/log4j/Layout;
.source "PatternLayout.java"


# static fields
.field public static final DEFAULT_CONVERSION_PATTERN:Ljava/lang/String; = "%m%n"

.field public static final TTCC_CONVERSION_PATTERN:Ljava/lang/String; = "%r [%t] %p %c %x - %m%n"


# instance fields
.field protected final BUF_SIZE:I

.field protected final MAX_CAPACITY:I

.field private head:Lorg/apache/log4j/helpers/PatternConverter;

.field private pattern:Ljava/lang/String;

.field private sbuf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 430
    const-string v0, "%m%n"

    invoke-direct {p0, v0}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x100

    .line 436
    invoke-direct {p0}, Lorg/apache/log4j/Layout;-><init>()V

    .line 413
    iput v1, p0, Lorg/apache/log4j/PatternLayout;->BUF_SIZE:I

    .line 414
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/log4j/PatternLayout;->MAX_CAPACITY:I

    .line 418
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/PatternLayout;->sbuf:Ljava/lang/StringBuffer;

    .line 437
    iput-object p1, p0, Lorg/apache/log4j/PatternLayout;->pattern:Ljava/lang/String;

    .line 438
    if-nez p1, :cond_18

    const-string p1, "%m%n"

    .end local p1    # "pattern":Ljava/lang/String;
    :cond_18
    invoke-virtual {p0, p1}, Lorg/apache/log4j/PatternLayout;->createPatternParser(Ljava/lang/String;)Lorg/apache/log4j/helpers/PatternParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/PatternParser;->parse()Lorg/apache/log4j/helpers/PatternConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/PatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    .line 440
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 1

    .prologue
    .line 467
    return-void
.end method

.method protected createPatternParser(Ljava/lang/String;)Lorg/apache/log4j/helpers/PatternParser;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 488
    new-instance v0, Lorg/apache/log4j/helpers/PatternParser;

    invoke-direct {v0, p1}, Lorg/apache/log4j/helpers/PatternParser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .registers 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 497
    iget-object v1, p0, Lorg/apache/log4j/PatternLayout;->sbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_1f

    .line 498
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/log4j/PatternLayout;->sbuf:Ljava/lang/StringBuffer;

    .line 503
    :goto_13
    iget-object v0, p0, Lorg/apache/log4j/PatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    .line 505
    .local v0, "c":Lorg/apache/log4j/helpers/PatternConverter;
    :goto_15
    if-eqz v0, :cond_26

    .line 506
    iget-object v1, p0, Lorg/apache/log4j/PatternLayout;->sbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/log4j/helpers/PatternConverter;->format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 507
    iget-object v0, v0, Lorg/apache/log4j/helpers/PatternConverter;->next:Lorg/apache/log4j/helpers/PatternConverter;

    goto :goto_15

    .line 500
    .end local v0    # "c":Lorg/apache/log4j/helpers/PatternConverter;
    :cond_1f
    iget-object v1, p0, Lorg/apache/log4j/PatternLayout;->sbuf:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_13

    .line 509
    .restart local v0    # "c":Lorg/apache/log4j/helpers/PatternConverter;
    :cond_26
    iget-object v1, p0, Lorg/apache/log4j/PatternLayout;->sbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getConversionPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lorg/apache/log4j/PatternLayout;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public ignoresThrowable()Z
    .registers 2

    .prologue
    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public setConversionPattern(Ljava/lang/String;)V
    .registers 3
    .param p1, "conversionPattern"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lorg/apache/log4j/PatternLayout;->pattern:Ljava/lang/String;

    .line 450
    invoke-virtual {p0, p1}, Lorg/apache/log4j/PatternLayout;->createPatternParser(Ljava/lang/String;)Lorg/apache/log4j/helpers/PatternParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/PatternParser;->parse()Lorg/apache/log4j/helpers/PatternConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/PatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    .line 451
    return-void
.end method
