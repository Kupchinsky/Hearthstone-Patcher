.class Lorg/simpleframework/http/core/RequestMessage;
.super Ljava/lang/Object;
.source "RequestMessage.java"

# interfaces
.implements Lorg/simpleframework/http/RequestHeader;


# instance fields
.field protected header:Lorg/simpleframework/http/core/Header;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/http/core/Header;)V
    .registers 2
    .param p1, "header"    # Lorg/simpleframework/http/core/Header;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    .line 67
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Header;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/RequestMessage;->getValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 275
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 276
    .local v2, "next":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 277
    const/4 v3, 0x1

    .line 280
    .end local v2    # "next":Ljava/lang/String;
    :goto_1b
    return v3

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public getAddress()Lorg/simpleframework/http/Address;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getAddress()Lorg/simpleframework/http/Address;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Lorg/simpleframework/http/ContentType;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getContentType()Lorg/simpleframework/http/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Header;->getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;

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
    .line 308
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getCookies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Header;->getDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Header;->getInteger(Ljava/lang/String;)I

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
    .line 244
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getLocales()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMajor()I
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getMajor()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinor()I
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getMinor()I

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
    .line 160
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lorg/simpleframework/http/Path;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Lorg/simpleframework/http/Query;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getQuery()Lorg/simpleframework/http/Query;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Header;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Header;->getValue(Ljava/lang/String;)Ljava/lang/String;

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
    .line 232
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Header;->getValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestMessage;->header:Lorg/simpleframework/http/core/Header;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
