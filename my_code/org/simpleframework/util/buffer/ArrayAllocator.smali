.class public Lorg/simpleframework/util/buffer/ArrayAllocator;
.super Ljava/lang/Object;
.source "ArrayAllocator.java"

# interfaces
.implements Lorg/simpleframework/util/buffer/Allocator;


# instance fields
.field private limit:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/simpleframework/util/buffer/ArrayAllocator;-><init>(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 64
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/util/buffer/ArrayAllocator;-><init>(II)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "limit"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/simpleframework/util/buffer/ArrayAllocator;->limit:I

    .line 78
    iput p1, p0, Lorg/simpleframework/util/buffer/ArrayAllocator;->size:I

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
    .line 90
    iget v0, p0, Lorg/simpleframework/util/buffer/ArrayAllocator;->size:I

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/buffer/ArrayAllocator;->allocate(I)Lorg/simpleframework/util/buffer/Buffer;

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
    .line 104
    iget v0, p0, Lorg/simpleframework/util/buffer/ArrayAllocator;->limit:I

    if-le p1, v0, :cond_16

    .line 105
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

    .line 107
    :cond_16
    new-instance v0, Lorg/simpleframework/util/buffer/ArrayBuffer;

    iget v1, p0, Lorg/simpleframework/util/buffer/ArrayAllocator;->limit:I

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/util/buffer/ArrayBuffer;-><init>(II)V

    return-object v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    return-void
.end method
