.class public Lru/killer666/apache/commons/codec/StringEncoderComparator;
.super Ljava/lang/Object;
.source "StringEncoderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final stringEncoder:Lru/killer666/apache/commons/codec/StringEncoder;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lru/killer666/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lru/killer666/apache/commons/codec/StringEncoder;

    .line 49
    return-void
.end method

.method public constructor <init>(Lru/killer666/apache/commons/codec/StringEncoder;)V
    .registers 2
    .param p1, "stringEncoder"    # Lru/killer666/apache/commons/codec/StringEncoder;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lru/killer666/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lru/killer666/apache/commons/codec/StringEncoder;

    .line 59
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 82
    .local v0, "compareCode":I
    :try_start_1
    iget-object v4, p0, Lru/killer666/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lru/killer666/apache/commons/codec/StringEncoder;

    invoke-interface {v4, p1}, Lru/killer666/apache/commons/codec/StringEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 83
    .local v2, "s1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Comparable<*>;>;"
    iget-object v4, p0, Lru/killer666/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lru/killer666/apache/commons/codec/StringEncoder;

    invoke-interface {v4, p2}, Lru/killer666/apache/commons/codec/StringEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 84
    .local v3, "s2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
    :try_end_14
    .catch Lru/killer666/apache/commons/codec/EncoderException; {:try_start_1 .. :try_end_14} :catch_16

    move-result v0

    .line 88
    .end local v2    # "s1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Comparable<*>;>;"
    .end local v3    # "s2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    :goto_15
    return v0

    .line 85
    :catch_16
    move-exception v1

    .line 86
    .local v1, "ee":Lru/killer666/apache/commons/codec/EncoderException;
    const/4 v0, 0x0

    goto :goto_15
.end method
