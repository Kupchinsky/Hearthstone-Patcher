.class public Lorg/apache/log4j/varia/LevelRangeFilter;
.super Lorg/apache/log4j/spi/Filter;
.source "LevelRangeFilter.java"


# instance fields
.field acceptOnMatch:Z

.field levelMax:Lorg/apache/log4j/Level;

.field levelMin:Lorg/apache/log4j/Level;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/log4j/spi/Filter;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    return-void
.end method


# virtual methods
.method public decide(Lorg/apache/log4j/spi/LoggingEvent;)I
    .registers 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    const/4 v0, -0x1

    .line 69
    iget-object v1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    if-eqz v1, :cond_12

    .line 70
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 93
    :cond_11
    :goto_11
    return v0

    .line 76
    :cond_12
    iget-object v1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    if-eqz v1, :cond_26

    .line 77
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v1

    iget-object v2, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    invoke-virtual {v2}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v2

    if-gt v1, v2, :cond_11

    .line 86
    :cond_26
    iget-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    if-eqz v0, :cond_2c

    .line 89
    const/4 v0, 0x1

    goto :goto_11

    .line 93
    :cond_2c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getAcceptOnMatch()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    return v0
.end method

.method public getLevelMax()Lorg/apache/log4j/Level;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getLevelMin()Lorg/apache/log4j/Level;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public setAcceptOnMatch(Z)V
    .registers 2
    .param p1, "acceptOnMatch"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    .line 142
    return-void
.end method

.method public setLevelMax(Lorg/apache/log4j/Level;)V
    .registers 2
    .param p1, "levelMax"    # Lorg/apache/log4j/Level;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    .line 126
    return-void
.end method

.method public setLevelMin(Lorg/apache/log4j/Level;)V
    .registers 2
    .param p1, "levelMin"    # Lorg/apache/log4j/Level;

    .prologue
    .line 133
    iput-object p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    .line 134
    return-void
.end method
