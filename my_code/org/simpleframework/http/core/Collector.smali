.class interface abstract Lorg/simpleframework/http/core/Collector;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lorg/simpleframework/http/core/Entity;


# virtual methods
.method public abstract collect(Lorg/simpleframework/http/core/Selector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSocket()Ljava/nio/channels/SocketChannel;
.end method
