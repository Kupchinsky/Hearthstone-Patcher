.class public Lorg/simpleframework/util/buffer/BufferAllocator;
.super Lorg/simpleframework/util/buffer/FilterAllocator;
.source "BufferAllocator.java"

# interfaces
.implements Lorg/simpleframework/util/buffer/Buffer;


# instance fields
.field private buffer:Lorg/simpleframework/util/buffer/Buffer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;)V
    .registers 2
    .param p1, "source"    # Lorg/simpleframework/util/buffer/Allocator;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/simpleframework/util/buffer/FilterAllocator;-><init>(Lorg/simpleframework/util/buffer/Allocator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;I)V
    .registers 3
    .param p1, "source"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "capacity"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/util/buffer/FilterAllocator;-><init>(Lorg/simpleframework/util/buffer/Allocator;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;II)V
    .registers 4
    .param p1, "source"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "capacity"    # I
    .param p3, "limit"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/util/buffer/FilterAllocator;-><init>(Lorg/simpleframework/util/buffer/Allocator;II)V

    .line 79
    return-void
.end method


# virtual methods
.method public allocate()Lorg/simpleframework/util/buffer/Buffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->capacity:I

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/buffer/BufferAllocator;->allocate(I)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public allocate(I)Lorg/simpleframework/util/buffer/Buffer;
    .registers 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->limit:I

    if-le p1, v0, :cond_16

    .line 209
    new-instance v0, Lorg/simpleframework/util/buffer/BufferException;

    const-string v1, "Specified size %s beyond limit"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 211
    :cond_16
    iget v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->capacity:I

    if-le v0, p1, :cond_1c

    .line 212
    iget p1, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->capacity:I

    .line 214
    :cond_1c
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_28

    .line 215
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->source:Lorg/simpleframework/util/buffer/Allocator;

    invoke-interface {v0, p1}, Lorg/simpleframework/util/buffer/Allocator;->allocate(I)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    .line 217
    :cond_28
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Buffer;->allocate()Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

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
    .line 136
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/util/buffer/BufferAllocator;->append([BII)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public append([BII)Lorg/simpleframework/util/buffer/Buffer;
    .registers 5
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_7

    .line 152
    invoke-virtual {p0, p3}, Lorg/simpleframework/util/buffer/BufferAllocator;->allocate(I)Lorg/simpleframework/util/buffer/Buffer;

    .line 154
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/util/buffer/Buffer;->append([BII)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-eqz v0, :cond_9

    .line 165
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Buffer;->clear()V

    .line 167
    :cond_9
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
    .line 176
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_7

    .line 177
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/BufferAllocator;->allocate()Lorg/simpleframework/util/buffer/Buffer;

    .line 179
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Buffer;->close()V

    .line 180
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
    .line 105
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_7

    .line 106
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/BufferAllocator;->allocate()Lorg/simpleframework/util/buffer/Buffer;

    .line 108
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Buffer;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_7

    .line 121
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/BufferAllocator;->allocate()Lorg/simpleframework/util/buffer/Buffer;

    .line 123
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0, p1}, Lorg/simpleframework/util/buffer/Buffer;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_7

    .line 91
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/BufferAllocator;->allocate()Lorg/simpleframework/util/buffer/Buffer;

    .line 93
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/util/buffer/BufferAllocator;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Buffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
