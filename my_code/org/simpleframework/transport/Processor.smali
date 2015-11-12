.class public interface abstract Lorg/simpleframework/transport/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# virtual methods
.method public abstract process(Lorg/simpleframework/transport/Transport;)V
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
