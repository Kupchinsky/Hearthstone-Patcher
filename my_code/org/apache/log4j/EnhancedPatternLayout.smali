.class public Lorg/apache/log4j/EnhancedPatternLayout;
.super Lorg/apache/log4j/Layout;
.source "EnhancedPatternLayout.java"


# static fields
.field public static final DEFAULT_CONVERSION_PATTERN:Ljava/lang/String; = "%m%n"

.field public static final PATTERN_RULE_REGISTRY:Ljava/lang/String; = "PATTERN_RULE_REGISTRY"

.field public static final TTCC_CONVERSION_PATTERN:Ljava/lang/String; = "%r [%t] %p %c %x - %m%n"


# instance fields
.field protected final BUF_SIZE:I

.field protected final MAX_CAPACITY:I

.field private conversionPattern:Ljava/lang/String;

.field private handlesExceptions:Z

.field private head:Lorg/apache/log4j/helpers/PatternConverter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 471
    const-string v0, "%m%n"

    invoke-direct {p0, v0}, Lorg/apache/log4j/EnhancedPatternLayout;-><init>(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 478
    invoke-direct {p0}, Lorg/apache/log4j/Layout;-><init>()V

    .line 435
    const/16 v0, 0x100

    iput v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->BUF_SIZE:I

    .line 441
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->MAX_CAPACITY:I

    .line 479
    iput-object p1, p0, Lorg/apache/log4j/EnhancedPatternLayout;->conversionPattern:Ljava/lang/String;

    .line 480
    if-nez p1, :cond_12

    const-string p1, "%m%n"

    .end local p1    # "pattern":Ljava/lang/String;
    :cond_12
    invoke-virtual {p0, p1}, Lorg/apache/log4j/EnhancedPatternLayout;->createPatternParser(Ljava/lang/String;)Lorg/apache/log4j/helpers/PatternParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/PatternParser;->parse()Lorg/apache/log4j/helpers/PatternConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    .line 482
    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    instance-of v0, v0, Lorg/apache/log4j/pattern/BridgePatternConverter;

    if-eqz v0, :cond_32

    .line 483
    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    check-cast v0, Lorg/apache/log4j/pattern/BridgePatternConverter;

    invoke-virtual {v0}, Lorg/apache/log4j/pattern/BridgePatternConverter;->ignoresThrowable()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_2d
    iput-boolean v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->handlesExceptions:Z

    .line 487
    :goto_2f
    return-void

    :cond_30
    move v0, v1

    .line 483
    goto :goto_2d

    .line 485
    :cond_32
    iput-boolean v1, p0, Lorg/apache/log4j/EnhancedPatternLayout;->handlesExceptions:Z

    goto :goto_2f
.end method


# virtual methods
.method public activateOptions()V
    .registers 1

    .prologue
    .line 534
    return-void
.end method

.method protected createPatternParser(Ljava/lang/String;)Lorg/apache/log4j/helpers/PatternParser;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 524
    new-instance v0, Lorg/apache/log4j/pattern/BridgePatternParser;

    invoke-direct {v0, p1}, Lorg/apache/log4j/pattern/BridgePatternParser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .registers 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 542
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 543
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    .line 544
    .local v1, "c":Lorg/apache/log4j/helpers/PatternConverter;
    :goto_7
    if-eqz v1, :cond_f

    .line 546
    invoke-virtual {v1, v0, p1}, Lorg/apache/log4j/helpers/PatternConverter;->format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 545
    iget-object v1, v1, Lorg/apache/log4j/helpers/PatternConverter;->next:Lorg/apache/log4j/helpers/PatternConverter;

    goto :goto_7

    .line 548
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getConversionPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->conversionPattern:Ljava/lang/String;

    return-object v0
.end method

.method public ignoresThrowable()Z
    .registers 2

    .prologue
    .line 557
    iget-boolean v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->handlesExceptions:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setConversionPattern(Ljava/lang/String;)V
    .registers 4
    .param p1, "conversionPattern"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 497
    invoke-static {p1}, Lorg/apache/log4j/helpers/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->conversionPattern:Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->conversionPattern:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/EnhancedPatternLayout;->createPatternParser(Ljava/lang/String;)Lorg/apache/log4j/helpers/PatternParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/PatternParser;->parse()Lorg/apache/log4j/helpers/PatternConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    .line 500
    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    instance-of v0, v0, Lorg/apache/log4j/pattern/BridgePatternConverter;

    if-eqz v0, :cond_29

    .line 501
    iget-object v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->head:Lorg/apache/log4j/helpers/PatternConverter;

    check-cast v0, Lorg/apache/log4j/pattern/BridgePatternConverter;

    invoke-virtual {v0}, Lorg/apache/log4j/pattern/BridgePatternConverter;->ignoresThrowable()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_24
    iput-boolean v0, p0, Lorg/apache/log4j/EnhancedPatternLayout;->handlesExceptions:Z

    .line 505
    :goto_26
    return-void

    :cond_27
    move v0, v1

    .line 501
    goto :goto_24

    .line 503
    :cond_29
    iput-boolean v1, p0, Lorg/apache/log4j/EnhancedPatternLayout;->handlesExceptions:Z

    goto :goto_26
.end method
