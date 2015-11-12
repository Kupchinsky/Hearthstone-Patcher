.class abstract Lorg/simpleframework/http/core/BufferConsumer;
.super Ljava/lang/Object;
.source "BufferConsumer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Consumer;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected allocate()Lorg/simpleframework/util/buffer/Buffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lorg/simpleframework/util/buffer/ArrayBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/buffer/ArrayBuffer;-><init>()V

    return-object v0
.end method

.method protected append([B)V
    .registers 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/http/core/BufferConsumer;->append([BII)V

    .line 60
    return-void
.end method

.method protected append([BII)V
    .registers 5
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/simpleframework/http/core/BufferConsumer;->allocate()Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    .line 75
    .local v0, "buffer":Lorg/simpleframework/util/buffer/Buffer;
    if-eqz v0, :cond_9

    .line 76
    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/util/buffer/Buffer;->append([BII)Lorg/simpleframework/util/buffer/Buffer;

    .line 78
    :cond_9
    return-void
.end method
