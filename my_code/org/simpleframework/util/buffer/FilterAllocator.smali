.class public Lorg/simpleframework/util/buffer/FilterAllocator;
.super Ljava/lang/Object;
.source "FilterAllocator.java"

# interfaces
.implements Lorg/simpleframework/util/buffer/Allocator;


# instance fields
.field protected capacity:I

.field protected limit:I

.field protected source:Lorg/simpleframework/util/buffer/Allocator;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;)V
    .registers 4
    .param p1, "source"    # Lorg/simpleframework/util/buffer/Allocator;

    .prologue
    .line 60
    const/16 v0, 0x200

    const/high16 v1, 0x100000

    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/util/buffer/FilterAllocator;-><init>(Lorg/simpleframework/util/buffer/Allocator;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;I)V
    .registers 4
    .param p1, "source"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "capacity"    # I

    .prologue
    .line 73
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/util/buffer/FilterAllocator;-><init>(Lorg/simpleframework/util/buffer/Allocator;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;II)V
    .registers 5
    .param p1, "source"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "capacity"    # I
    .param p3, "limit"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/simpleframework/util/buffer/FilterAllocator;->limit:I

    .line 88
    iput p2, p0, Lorg/simpleframework/util/buffer/FilterAllocator;->capacity:I

    .line 89
    iput-object p1, p0, Lorg/simpleframework/util/buffer/FilterAllocator;->source:Lorg/simpleframework/util/buffer/Allocator;

    .line 90
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
    .line 101
    iget v0, p0, Lorg/simpleframework/util/buffer/FilterAllocator;->capacity:I

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/buffer/FilterAllocator;->allocate(I)Lorg/simpleframework/util/buffer/Buffer;

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
    .line 115
    iget v0, p0, Lorg/simpleframework/util/buffer/FilterAllocator;->limit:I

    if-le p1, v0, :cond_16

    .line 116
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

    .line 118
    :cond_16
    iget v0, p0, Lorg/simpleframework/util/buffer/FilterAllocator;->capacity:I

    if-le v0, p1, :cond_1c

    .line 119
    iget p1, p0, Lorg/simpleframework/util/buffer/FilterAllocator;->capacity:I

    .line 121
    :cond_1c
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FilterAllocator;->source:Lorg/simpleframework/util/buffer/Allocator;

    invoke-interface {v0, p1}, Lorg/simpleframework/util/buffer/Allocator;->allocate(I)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FilterAllocator;->source:Lorg/simpleframework/util/buffer/Allocator;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Allocator;->close()V

    .line 133
    return-void
.end method
