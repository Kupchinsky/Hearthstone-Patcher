.class Lorg/simpleframework/http/core/ResponseMessage;
.super Lorg/simpleframework/http/core/Message;
.source "ResponseMessage.java"

# interfaces
.implements Lorg/simpleframework/http/ResponseHeader;


# instance fields
.field private code:I

.field private major:I

.field private minor:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Lorg/simpleframework/http/core/Message;-><init>()V

    .line 66
    const-string v0, "OK"

    iput-object v0, p0, Lorg/simpleframework/http/core/ResponseMessage;->text:Ljava/lang/String;

    .line 67
    const/16 v0, 0xc8

    iput v0, p0, Lorg/simpleframework/http/core/ResponseMessage;->code:I

    .line 68
    iput v1, p0, Lorg/simpleframework/http/core/ResponseMessage;->major:I

    .line 69
    iput v1, p0, Lorg/simpleframework/http/core/ResponseMessage;->minor:I

    .line 70
    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lorg/simpleframework/http/core/ResponseMessage;->code:I

    return v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 190
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/ResponseMessage;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContentType()Lorg/simpleframework/http/ContentType;
    .registers 3

    .prologue
    .line 173
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/ResponseMessage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 176
    const/4 v1, 0x0

    .line 178
    :goto_9
    return-object v1

    :cond_a
    new-instance v1, Lorg/simpleframework/http/parse/ContentParser;

    invoke-direct {v1, v0}, Lorg/simpleframework/http/parse/ContentParser;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public getMajor()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lorg/simpleframework/http/core/ResponseMessage;->major:I

    return v0
.end method

.method protected getMessage()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/simpleframework/http/core/ResponseMessage;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getMinor()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lorg/simpleframework/http/core/ResponseMessage;->minor:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/ResponseMessage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCode(I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 93
    iput p1, p0, Lorg/simpleframework/http/core/ResponseMessage;->code:I

    .line 94
    return-void
.end method

.method public setMajor(I)V
    .registers 2
    .param p1, "major"    # I

    .prologue
    .line 136
    iput p1, p0, Lorg/simpleframework/http/core/ResponseMessage;->major:I

    .line 137
    return-void
.end method

.method public setMinor(I)V
    .registers 2
    .param p1, "minor"    # I

    .prologue
    .line 160
    iput p1, p0, Lorg/simpleframework/http/core/ResponseMessage;->minor:I

    .line 161
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/simpleframework/http/core/ResponseMessage;->text:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x20

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    .local v1, "head":Ljava/lang/StringBuilder;
    const-string v6, "HTTP/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/simpleframework/http/core/ResponseMessage;->major:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/simpleframework/http/core/ResponseMessage;->minor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/simpleframework/http/core/ResponseMessage;->code:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/simpleframework/http/core/ResponseMessage;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p0}, Lorg/simpleframework/http/core/ResponseMessage;->getNames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/simpleframework/http/core/ResponseMessage;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 238
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 244
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_6f
    invoke-virtual {p0}, Lorg/simpleframework/http/core/ResponseMessage;->getCookies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/http/Cookie;

    .line 245
    .local v0, "cookie":Lorg/simpleframework/http/Cookie;
    const-string v6, "Set-Cookie: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    const-string v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 249
    .end local v0    # "cookie":Lorg/simpleframework/http/Cookie;
    :cond_91
    const-string v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
