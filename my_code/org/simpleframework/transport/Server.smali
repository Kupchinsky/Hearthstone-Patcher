.class public interface abstract Lorg/simpleframework/transport/Server;
.super Ljava/lang/Object;
.source "Server.java"


# virtual methods
.method public abstract process(Lorg/simpleframework/transport/Socket;)V
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
