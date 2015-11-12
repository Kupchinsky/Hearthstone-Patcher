.class public final Lorg/apache/log4j/pattern/BridgePatternParser;
.super Lorg/apache/log4j/helpers/PatternParser;
.source "BridgePatternParser.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "conversionPattern"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternParser;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public parse()Lorg/apache/log4j/helpers/PatternConverter;
    .registers 3

    .prologue
    .line 46
    new-instance v0, Lorg/apache/log4j/pattern/BridgePatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/log4j/pattern/BridgePatternConverter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
