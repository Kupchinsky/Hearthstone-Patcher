.class public Lorg/simpleframework/util/buffer/ArrayBuffer;
.super Ljava/lang/Object;
.source "ArrayBuffer.java"

# interfaces
.implements Lorg/simpleframework/util/buffer/Buffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private closed:Z

.field private count:I

.field private limit:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/simpleframework/util/buffer/ArrayBuffer;-><init>(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p1}, Lorg/simpleframework/util/buffer/ArrayBuffer;-><init>(II)V

    .line 84
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "limit"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B

    .line 97
    iput p2, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->limit:I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lorg/simpleframework/util/buffer/ArrayBuffer;)[B
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/util/buffer/ArrayBuffer;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B

    return-object v0
.end method

.method static synthetic access$100(Lorg/simpleframework/util/buffer/ArrayBuffer;)I
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/util/buffer/ArrayBuffer;

    .prologue
    .line 42
    iget v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    return v0
.end method

.method private expand(I)V
    .registers 10
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 196
    iget v3, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->limit:I

    if-le p1, v3, :cond_18

    .line 197
    new-instance v3, Lorg/simpleframework/util/buffer/BufferException;

    const-string v4, "Capacity limit %s exceeded"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->limit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 199
    :cond_18
    iget-object v3, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B

    array-length v3, v3

    mul-int/lit8 v0, v3, 0x2

    .line 200
    .local v0, "resize":I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 201
    .local v1, "size":I
    new-array v2, v1, [B

    .line 203
    .local v2, "temp":[B
    iget-object v3, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B

    iget v4, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    invoke-static {v3, v7, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iput-object v2, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B

    .line 205
    return-void
.end method


# virtual methods
.method public allocate()Lorg/simpleframework/util/buffer/Buffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;

    iget v1, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    invoke-direct {v0, p0, p0, v1}, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;-><init>(Lorg/simpleframework/util/buffer/ArrayBuffer;Lorg/simpleframework/util/buffer/Buffer;I)V

    return-object v0
.end method

.method public append([B)Lorg/simpleframework/util/buffer/Buffer;
    .registers 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/util/buffer/ArrayBuffer;->append([BII)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public append([BII)Lorg/simpleframework/util/buffer/Buffer;
    .registers 7
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->closed:Z

    if-eqz v0, :cond_f

    .line 176
    new-instance v0, Lorg/simpleframework/util/buffer/BufferException;

    const-string v1, "Buffer is closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 178
    :cond_f
    iget v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_1d

    .line 179
    iget v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lorg/simpleframework/util/buffer/ArrayBuffer;->expand(I)V

    .line 181
    :cond_1d
    if-lez p3, :cond_2b

    .line 182
    iget-object v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B

    iget v1, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    .line 185
    :cond_2b
    return-object p0
.end method

.method public clear()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->closed:Z

    if-eqz v0, :cond_f

    .line 215
    new-instance v0, Lorg/simpleframework/util/buffer/BufferException;

    const-string v1, "Buffer is closed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 217
    :cond_f
    iput v2, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    .line 218
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->closed:Z

    .line 228
    return-void
.end method

.method public encode()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/buffer/ArrayBuffer;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 109
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
