.class Lorg/simpleframework/http/core/BoundaryConsumer;
.super Lorg/simpleframework/http/core/ArrayConsumer;
.source "BoundaryConsumer.java"


# static fields
.field private static final LAST:[B

.field private static final LINE:[B

.field private static final TOKEN:[B


# instance fields
.field private allocator:Lorg/simpleframework/util/buffer/Allocator;

.field private boundary:[B

.field private buffer:Lorg/simpleframework/util/buffer/Buffer;

.field private seek:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, Lorg/simpleframework/http/core/BoundaryConsumer;->LAST:[B

    .line 45
    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lorg/simpleframework/http/core/BoundaryConsumer;->LINE:[B

    .line 50
    new-array v0, v1, [B

    fill-array-data v0, :array_24

    sput-object v0, Lorg/simpleframework/http/core/BoundaryConsumer;->TOKEN:[B

    return-void

    .line 40
    :array_18
    .array-data 1
        0x2dt
        0x2dt
        0xdt
        0xat
    .end array-data

    .line 45
    :array_1e
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 50
    nop

    :array_24
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;[B)V
    .registers 4
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "boundary"    # [B

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/simpleframework/http/core/ArrayConsumer;-><init>()V

    .line 82
    array-length v0, p2

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->chunk:I

    .line 83
    iput-object p1, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    .line 84
    iput-object p2, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->boundary:[B

    .line 85
    return-void
.end method

.method private boundary([B)I
    .registers 5
    .param p1, "terminal"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->boundary:[B

    array-length v1, v1

    add-int/lit8 v0, v1, 0x2

    .line 153
    .local v0, "size":I
    iget v1, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->count:I

    array-length v2, p1

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_21

    .line 154
    sget-object v1, Lorg/simpleframework/http/core/BoundaryConsumer;->TOKEN:[B

    invoke-direct {p0, v1}, Lorg/simpleframework/http/core/BoundaryConsumer;->scan([B)Z

    .line 155
    iget-object v1, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->boundary:[B

    invoke-direct {p0, v1}, Lorg/simpleframework/http/core/BoundaryConsumer;->scan([B)Z

    .line 156
    invoke-direct {p0, p1}, Lorg/simpleframework/http/core/BoundaryConsumer;->scan([B)Z

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->done:Z

    .line 158
    iget v1, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->count:I

    iget v2, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->seek:I

    sub-int/2addr v1, v2

    .line 160
    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method private scan([B)Z
    .registers 9
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 174
    array-length v2, p1

    .line 175
    .local v2, "size":I
    const/4 v0, 0x0

    .line 177
    .local v0, "pos":I
    :goto_3
    iget v4, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->seek:I

    iget v5, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->count:I

    if-ge v4, v5, :cond_26

    .line 178
    iget-object v4, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->array:[B

    iget v5, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->seek:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->seek:I

    aget-byte v4, v4, v5

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .local v1, "pos":I
    aget-byte v5, p1, v0

    if-eq v4, v5, :cond_21

    .line 179
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid boundary"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    :cond_21
    array-length v4, p1

    if-ne v1, v4, :cond_2a

    move v0, v1

    .line 185
    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    :cond_25
    :goto_25
    return v3

    :cond_26
    if-eq v0, v2, :cond_25

    const/4 v3, 0x0

    goto :goto_25

    .end local v0    # "pos":I
    .restart local v1    # "pos":I
    :cond_2a
    move v0, v1

    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    goto :goto_3
.end method


# virtual methods
.method protected allocate()Lorg/simpleframework/util/buffer/Buffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_e

    .line 98
    iget-object v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    iget v1, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->chunk:I

    invoke-interface {v0, v1}, Lorg/simpleframework/util/buffer/Allocator;->allocate(I)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    .line 100
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->done:Z

    .line 209
    iput v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->seek:I

    iput v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->count:I

    .line 210
    return-void
.end method

.method public isEnd()Z
    .registers 3

    .prologue
    .line 198
    iget v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->seek:I

    iget v1, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->chunk:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected process()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lorg/simpleframework/http/core/BoundaryConsumer;->TOKEN:[B

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/BoundaryConsumer;->append([B)V

    .line 112
    iget-object v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->boundary:[B

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/BoundaryConsumer;->append([B)V

    .line 114
    iget v0, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->seek:I

    iget v1, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->chunk:I

    if-ne v0, v1, :cond_15

    .line 115
    sget-object v0, Lorg/simpleframework/http/core/BoundaryConsumer;->TOKEN:[B

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/BoundaryConsumer;->append([B)V

    .line 117
    :cond_15
    sget-object v0, Lorg/simpleframework/http/core/BoundaryConsumer;->LINE:[B

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/BoundaryConsumer;->append([B)V

    .line 118
    return-void
.end method

.method protected scan()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->boundary:[B

    array-length v0, v2

    .line 132
    .local v0, "size":I
    iget v2, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->count:I

    add-int/lit8 v3, v0, 0x4

    if-lt v2, v3, :cond_1c

    .line 133
    iget-object v2, p0, Lorg/simpleframework/http/core/BoundaryConsumer;->array:[B

    add-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    sget-object v3, Lorg/simpleframework/http/core/BoundaryConsumer;->LAST:[B

    aget-byte v1, v3, v1

    if-ne v2, v1, :cond_1d

    .line 134
    sget-object v1, Lorg/simpleframework/http/core/BoundaryConsumer;->LAST:[B

    invoke-direct {p0, v1}, Lorg/simpleframework/http/core/BoundaryConsumer;->boundary([B)I

    move-result v1

    .line 138
    :cond_1c
    :goto_1c
    return v1

    .line 136
    :cond_1d
    sget-object v1, Lorg/simpleframework/http/core/BoundaryConsumer;->LINE:[B

    invoke-direct {p0, v1}, Lorg/simpleframework/http/core/BoundaryConsumer;->boundary([B)I

    move-result v1

    goto :goto_1c
.end method
