.class public interface abstract Lorg/simpleframework/http/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lorg/simpleframework/http/RequestHeader;


# virtual methods
.method public abstract getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getAttributes()Ljava/util/Map;
.end method

.method public abstract getByteChannel()Ljava/nio/channels/ReadableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getClientAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getContent()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getForm()Lorg/simpleframework/http/Form;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSession()Lorg/simpleframework/http/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method

.method public abstract getSession(Z)Lorg/simpleframework/http/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method

.method public abstract isKeepAlive()Z
.end method

.method public abstract isSecure()Z
.end method
