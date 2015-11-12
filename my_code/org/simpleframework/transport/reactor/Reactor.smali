.class public interface abstract Lorg/simpleframework/transport/reactor/Reactor;
.super Ljava/lang/Object;
.source "Reactor.java"


# virtual methods
.method public abstract process(Lorg/simpleframework/transport/reactor/Operation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract process(Lorg/simpleframework/transport/reactor/Operation;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
