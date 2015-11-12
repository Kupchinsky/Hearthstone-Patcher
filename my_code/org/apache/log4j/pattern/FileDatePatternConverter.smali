.class public final Lorg/apache/log4j/pattern/FileDatePatternConverter;
.super Ljava/lang/Object;
.source "FileDatePatternConverter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/PatternConverter;
    .registers 4
    .param p0, "options"    # [Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_12

    .line 42
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/log4j/pattern/DatePatternConverter;->newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/DatePatternConverter;

    move-result-object v0

    .line 48
    :goto_11
    return-object v0

    :cond_12
    invoke-static {p0}, Lorg/apache/log4j/pattern/DatePatternConverter;->newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/DatePatternConverter;

    move-result-object v0

    goto :goto_11
.end method
