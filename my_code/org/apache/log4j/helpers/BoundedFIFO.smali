.class public Lorg/apache/log4j/helpers/BoundedFIFO;
.super Ljava/lang/Object;
.source "BoundedFIFO.java"


# instance fields
.field buf:[Lorg/apache/log4j/spi/LoggingEvent;

.field first:I

.field maxSize:I

.field next:I

.field numElements:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "maxSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    .line 35
    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    .line 36
    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    .line 44
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2c

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The maxSize argument ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") is not a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2c
    iput p1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    .line 49
    new-array v0, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    iput-object v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    .line 50
    return-void
.end method


# virtual methods
.method public get()Lorg/apache/log4j/spi/LoggingEvent;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 57
    iget v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    if-nez v2, :cond_7

    move-object v0, v1

    .line 67
    :goto_6
    return-object v0

    .line 60
    :cond_7
    iget-object v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    aget-object v0, v2, v3

    .line 61
    .local v0, "r":Lorg/apache/log4j/spi/LoggingEvent;
    iget-object v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    aput-object v1, v2, v3

    .line 63
    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    iget v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v1, v2, :cond_20

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    .line 66
    :cond_20
    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    goto :goto_6
.end method

.method public getMaxSize()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    return v0
.end method

.method public isFull()Z
    .registers 3

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public length()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    return v0
.end method

.method min(II)I
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 113
    if-ge p1, p2, :cond_3

    .end local p1    # "a":I
    :goto_2
    return p1

    .restart local p1    # "a":I
    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method public put(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 4
    .param p1, "o"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 76
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-eq v0, v1, :cond_1f

    .line 77
    iget-object v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    aput-object p1, v0, v1

    .line 78
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v0, v1, :cond_19

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    .line 81
    :cond_19
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    .line 83
    :cond_1f
    return-void
.end method

.method public declared-synchronized resize(I)V
    .registers 8
    .param p1, "newSize"    # I

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_51

    if-ne p1, v3, :cond_7

    .line 160
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 130
    :cond_7
    :try_start_7
    new-array v2, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    .line 133
    .local v2, "tmp":[Lorg/apache/log4j/spi/LoggingEvent;
    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    iget v4, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    sub-int v0, v3, v4

    .line 136
    .local v0, "len1":I
    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/helpers/BoundedFIFO;->min(II)I

    move-result v0

    .line 140
    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    invoke-virtual {p0, v0, v3}, Lorg/apache/log4j/helpers/BoundedFIFO;->min(II)I

    move-result v0

    .line 143
    iget-object v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v4, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "len2":I
    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    if-ge v0, v3, :cond_38

    if-ge v0, p1, :cond_38

    .line 148
    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    sub-int v1, v3, v0

    .line 149
    sub-int v3, p1, v0

    invoke-virtual {p0, v1, v3}, Lorg/apache/log4j/helpers/BoundedFIFO;->min(II)I

    move-result v1

    .line 150
    iget-object v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    :cond_38
    iput-object v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    .line 154
    iput p1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    .line 155
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    .line 156
    add-int v3, v0, v1

    iput v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    .line 157
    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    iput v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    .line 158
    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    iget v4, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v3, v4, :cond_5

    .line 159
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_51

    goto :goto_5

    .line 126
    .end local v0    # "len1":I
    .end local v1    # "len2":I
    .end local v2    # "tmp":[Lorg/apache/log4j/spi/LoggingEvent;
    :catchall_51
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public wasEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 169
    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public wasFull()Z
    .registers 3

    .prologue
    .line 178
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
