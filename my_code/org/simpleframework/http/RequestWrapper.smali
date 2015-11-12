.class public Lorg/simpleframework/http/RequestWrapper;
.super Ljava/lang/Object;
.source "RequestWrapper.java"

# interfaces
.implements Lorg/simpleframework/http/Request;


# instance fields
.field protected request:Lorg/simpleframework/http/Request;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/Request;)V
    .registers 2
    .param p1, "request"    # Lorg/simpleframework/http/Request;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    .line 59
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Request;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAddress()Lorg/simpleframework/http/Address;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getAddress()Lorg/simpleframework/http/Address;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 355
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Request;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getByteChannel()Ljava/nio/channels/ReadableByteChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getByteChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getClientAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getClientAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Lorg/simpleframework/http/ContentType;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getContentType()Lorg/simpleframework/http/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Request;->getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/http/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getCookies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Request;->getDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getForm()Lorg/simpleframework/http/Form;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getForm()Lorg/simpleframework/http/Form;

    move-result-object v0

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
    .line 399
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Request;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocales()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getLocales()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMajor()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getMajor()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinor()I
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getMinor()I

    move-result v0

    return v0
.end method

.method public getNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getNames()Ljava/util/List;

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
    .line 475
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    .line 490
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Request;->getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lorg/simpleframework/http/Path;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Lorg/simpleframework/http/Query;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getQuery()Lorg/simpleframework/http/Query;

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
    .line 429
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getSession()Lorg/simpleframework/http/session/Session;

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
    .line 447
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Request;->getSession(Z)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Request;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Request;->getValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isKeepAlive()Z
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->isKeepAlive()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lorg/simpleframework/http/RequestWrapper;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v0}, Lorg/simpleframework/http/Request;->isSecure()Z

    move-result v0

    return v0
.end method
