.class public Lorg/simpleframework/http/ResponseWrapper;
.super Ljava/lang/Object;
.source "ResponseWrapper.java"

# interfaces
.implements Lorg/simpleframework/http/Response;


# instance fields
.field protected response:Lorg/simpleframework/http/Response;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/Response;)V
    .registers 2
    .param p1, "response"    # Lorg/simpleframework/http/Response;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    .line 68
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/http/Response;->add(Ljava/lang/String;I)V

    .line 197
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/http/Response;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public addDate(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 208
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/http/Response;->addDate(Ljava/lang/String;J)V

    .line 209
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->close()V

    .line 652
    return-void
.end method

.method public commit()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->commit()V

    .line 626
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getByteChannel()Ljava/nio/channels/WritableByteChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getByteChannel()Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getByteChannel(I)Ljava/nio/channels/WritableByteChannel;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->getByteChannel(I)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getCode()I
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getCode()I

    move-result v0

    return v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Lorg/simpleframework/http/ContentType;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getContentType()Lorg/simpleframework/http/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;

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
    .line 401
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getCookies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->getDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMajor()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getMajor()I

    move-result v0

    return v0
.end method

.method public getMinor()I
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getMinor()I

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
    .line 170
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream(I)Ljava/io/OutputStream;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->getOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPrintStream()Ljava/io/PrintStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public getPrintStream(I)Ljava/io/PrintStream;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->getPrintStream(I)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->getValue(Ljava/lang/String;)Ljava/lang/String;

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
    .line 345
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->getValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCommitted()Z
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->remove(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->reset()V

    .line 640
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/http/Response;->set(Ljava/lang/String;I)V

    .line 239
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/http/Response;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public setCode(I)V
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->setCode(I)V

    .line 92
    return-void
.end method

.method public setContentLength(I)V
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->setContentLength(I)V

    .line 460
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/http/Response;->setCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public setCookie(Lorg/simpleframework/http/Cookie;)Lorg/simpleframework/http/Cookie;
    .registers 3
    .param p1, "cookie"    # Lorg/simpleframework/http/Cookie;

    .prologue
    .line 359
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->setCookie(Lorg/simpleframework/http/Cookie;)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public setDate(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 252
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/http/Response;->setDate(Ljava/lang/String;J)V

    .line 253
    return-void
.end method

.method public setMajor(I)V
    .registers 3
    .param p1, "major"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->setMajor(I)V

    .line 135
    return-void
.end method

.method public setMinor(I)V
    .registers 3
    .param p1, "minor"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->setMinor(I)V

    .line 159
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/simpleframework/http/ResponseWrapper;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Response;->setText(Ljava/lang/String;)V

    .line 113
    return-void
.end method
