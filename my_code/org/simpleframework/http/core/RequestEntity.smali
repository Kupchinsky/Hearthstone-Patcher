.class Lorg/simpleframework/http/core/RequestEntity;
.super Lorg/simpleframework/http/core/RequestMessage;
.source "RequestEntity.java"

# interfaces
.implements Lorg/simpleframework/http/Request;


# instance fields
.field private body:Lorg/simpleframework/http/core/Body;

.field private builder:Lorg/simpleframework/http/core/FormCreator;

.field private channel:Lorg/simpleframework/http/core/Channel;

.field private entity:Lorg/simpleframework/http/core/Entity;

.field private form:Lorg/simpleframework/http/Form;

.field private map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Entity;Lorg/simpleframework/http/core/Monitor;)V
    .registers 4
    .param p1, "entity"    # Lorg/simpleframework/http/core/Entity;
    .param p2, "monitor"    # Lorg/simpleframework/http/core/Monitor;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/simpleframework/http/core/RequestMessage;-><init>()V

    .line 108
    new-instance v0, Lorg/simpleframework/http/core/FormCreator;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/http/core/FormCreator;-><init>(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/core/Entity;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->builder:Lorg/simpleframework/http/core/FormCreator;

    .line 109
    invoke-interface {p1}, Lorg/simpleframework/http/core/Entity;->getChannel()Lorg/simpleframework/http/core/Channel;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->channel:Lorg/simpleframework/http/core/Channel;

    .line 110
    invoke-interface {p1}, Lorg/simpleframework/http/core/Entity;->getHeader()Lorg/simpleframework/http/core/Header;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->header:Lorg/simpleframework/http/core/Header;

    .line 111
    invoke-interface {p1}, Lorg/simpleframework/http/core/Entity;->getBody()Lorg/simpleframework/http/core/Body;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->body:Lorg/simpleframework/http/core/Body;

    .line 112
    iput-object p1, p0, Lorg/simpleframework/http/core/RequestEntity;->entity:Lorg/simpleframework/http/core/Entity;

    .line 113
    return-void
.end method

.method private getClientAddress(Ljava/net/Socket;)Ljava/net/InetSocketAddress;
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 176
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v1

    .line 178
    .local v1, "port":I
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v2
.end method


# virtual methods
.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 317
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestEntity;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .registers 3

    .prologue
    .line 298
    iget-object v1, p0, Lorg/simpleframework/http/core/RequestEntity;->channel:Lorg/simpleframework/http/core/Channel;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Channel;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 300
    .local v0, "common":Ljava/util/Map;
    iget-object v1, p0, Lorg/simpleframework/http/core/RequestEntity;->map:Ljava/util/Map;

    if-nez v1, :cond_11

    .line 301
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/simpleframework/http/core/RequestEntity;->map:Ljava/util/Map;

    .line 303
    :cond_11
    iget-object v1, p0, Lorg/simpleframework/http/core/RequestEntity;->map:Ljava/util/Map;

    return-object v1
.end method

.method public getByteChannel()Ljava/nio/channels/ReadableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestEntity;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 248
    .local v0, "source":Ljava/io/InputStream;
    if-eqz v0, :cond_b

    .line 249
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    .line 251
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getClientAddress()Ljava/net/InetSocketAddress;
    .registers 4

    .prologue
    .line 158
    iget-object v2, p0, Lorg/simpleframework/http/core/RequestEntity;->channel:Lorg/simpleframework/http/core/Channel;

    invoke-interface {v2}, Lorg/simpleframework/http/core/Channel;->getSocket()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 159
    .local v1, "socket":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 161
    .local v0, "client":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/RequestEntity;->getClientAddress(Ljava/net/Socket;)Ljava/net/InetSocketAddress;

    move-result-object v2

    return-object v2
.end method

.method public getContent()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestEntity;->getContentType()Lorg/simpleframework/http/ContentType;

    move-result-object v0

    .line 194
    .local v0, "type":Lorg/simpleframework/http/ContentType;
    if-nez v0, :cond_f

    .line 195
    iget-object v1, p0, Lorg/simpleframework/http/core/RequestEntity;->body:Lorg/simpleframework/http/core/Body;

    const-string v2, "UTF-8"

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Body;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    :goto_e
    return-object v1

    :cond_f
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/RequestEntity;->getContent(Lorg/simpleframework/http/ContentType;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public getContent(Lorg/simpleframework/http/ContentType;)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # Lorg/simpleframework/http/ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-interface {p1}, Lorg/simpleframework/http/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 216
    const-string v0, "UTF-8"

    .line 218
    :cond_8
    iget-object v1, p0, Lorg/simpleframework/http/core/RequestEntity;->body:Lorg/simpleframework/http/core/Body;

    invoke-interface {v1, v0}, Lorg/simpleframework/http/core/Body;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getForm()Lorg/simpleframework/http/Form;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->form:Lorg/simpleframework/http/Form;

    if-nez v0, :cond_c

    .line 363
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->builder:Lorg/simpleframework/http/core/FormCreator;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/FormCreator;->getInstance()Lorg/simpleframework/http/Form;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->form:Lorg/simpleframework/http/Form;

    .line 365
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->form:Lorg/simpleframework/http/Form;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->body:Lorg/simpleframework/http/core/Body;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->form:Lorg/simpleframework/http/Form;

    if-nez v0, :cond_c

    .line 330
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->builder:Lorg/simpleframework/http/core/FormCreator;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/FormCreator;->getInstance()Lorg/simpleframework/http/Form;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->form:Lorg/simpleframework/http/Form;

    .line 332
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->form:Lorg/simpleframework/http/Form;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Form;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->form:Lorg/simpleframework/http/Form;

    if-nez v0, :cond_c

    .line 348
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->builder:Lorg/simpleframework/http/core/FormCreator;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/FormCreator;->getInstance()Lorg/simpleframework/http/Form;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->form:Lorg/simpleframework/http/Form;

    .line 350
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->form:Lorg/simpleframework/http/Form;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Form;->getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/simpleframework/http/session/Session;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/RequestEntity;->getSession(Z)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Lorg/simpleframework/http/session/Session;
    .registers 3
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->entity:Lorg/simpleframework/http/core/Entity;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Entity;->getSession(Z)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public isKeepAlive()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 139
    const-string v2, "Connection"

    invoke-virtual {p0, v2}, Lorg/simpleframework/http/core/RequestEntity;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 140
    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {p0, v2, v3}, Lorg/simpleframework/http/core/RequestEntity;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 146
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 140
    goto :goto_14

    .line 141
    :cond_17
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestEntity;->getMajor()I

    move-result v2

    if-gt v2, v0, :cond_14

    .line 143
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestEntity;->getMajor()I

    move-result v2

    if-ne v2, v0, :cond_2b

    .line 144
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestEntity;->getMinor()I

    move-result v2

    if-gtz v2, :cond_14

    move v0, v1

    goto :goto_14

    :cond_2b
    move v0, v1

    .line 146
    goto :goto_14
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestEntity;->channel:Lorg/simpleframework/http/core/Channel;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Channel;->isSecure()Z

    move-result v0

    return v0
.end method
