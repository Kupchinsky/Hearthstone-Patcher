.class public interface abstract Lorg/simpleframework/util/buffer/Allocator;
.super Ljava/lang/Object;
.source "Allocator.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract allocate()Lorg/simpleframework/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract allocate(I)Lorg/simpleframework/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
