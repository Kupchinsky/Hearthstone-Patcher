.class interface abstract Lorg/simpleframework/http/core/Selector;
.super Ljava/lang/Object;
.source "Selector.java"

# interfaces
.implements Lorg/simpleframework/http/core/Initiator;


# virtual methods
.method public abstract ready(Lorg/simpleframework/http/core/Collector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract select(Lorg/simpleframework/http/core/Collector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract start(Lorg/simpleframework/http/core/Collector;)V
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
