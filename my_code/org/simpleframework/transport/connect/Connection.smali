.class public interface abstract Lorg/simpleframework/transport/connect/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract connect(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;Ljavax/net/ssl/SSLContext;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
