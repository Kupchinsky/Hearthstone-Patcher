.class Lorg/simpleframework/http/core/EmptyProducer;
.super Ljava/lang/Object;
.source "EmptyProducer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Producer;


# instance fields
.field private final monitor:Lorg/simpleframework/http/core/Monitor;

.field private final sender:Lorg/simpleframework/http/core/Sender;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V
    .registers 3
    .param p1, "sender"    # Lorg/simpleframework/http/core/Sender;
    .param p2, "monitor"    # Lorg/simpleframework/http/core/Monitor;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lorg/simpleframework/http/core/EmptyProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    .line 55
    iput-object p1, p0, Lorg/simpleframework/http/core/EmptyProducer;->sender:Lorg/simpleframework/http/core/Sender;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/simpleframework/http/core/EmptyProducer;->monitor:Lorg/simpleframework/http/core/Monitor;

    iget-object v1, p0, Lorg/simpleframework/http/core/EmptyProducer;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v0, v1}, Lorg/simpleframework/http/core/Monitor;->ready(Lorg/simpleframework/http/core/Sender;)V

    .line 128
    return-void
.end method

.method public flush()V
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

.method public produce(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public produce(Ljava/nio/ByteBuffer;II)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    return-void
.end method

.method public produce([B)V
    .registers 2
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    return-void
.end method

.method public produce([BII)V
    .registers 4
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method
