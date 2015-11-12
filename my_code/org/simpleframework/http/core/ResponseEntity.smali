.class Lorg/simpleframework/http/core/ResponseEntity;
.super Lorg/simpleframework/http/core/ResponseMessage;
.source "ResponseEntity.java"

# interfaces
.implements Lorg/simpleframework/http/Response;


# instance fields
.field private buffer:Lorg/simpleframework/http/core/Accumulator;

.field private channel:Lorg/simpleframework/http/core/Channel;

.field private committed:Z

.field private header:Lorg/simpleframework/http/core/Header;

.field private sender:Lorg/simpleframework/http/core/Sender;

.field private support:Lorg/simpleframework/http/core/Conversation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/core/Entity;Lorg/simpleframework/http/core/Monitor;)V
    .registers 6
    .param p1, "request"    # Lorg/simpleframework/http/Request;
    .param p2, "entity"    # Lorg/simpleframework/http/core/Entity;
    .param p3, "monitor"    # Lorg/simpleframework/http/core/Monitor;

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/simpleframework/http/core/ResponseMessage;-><init>()V

    .line 107
    new-instance v0, Lorg/simpleframework/http/core/Conversation;

    invoke-direct {v0, p1, p0}, Lorg/simpleframework/http/core/Conversation;-><init>(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/Response;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->support:Lorg/simpleframework/http/core/Conversation;

    .line 108
    new-instance v0, Lorg/simpleframework/http/core/Accumulator;

    iget-object v1, p0, Lorg/simpleframework/http/core/ResponseEntity;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-direct {v0, v1, p2, p3}, Lorg/simpleframework/http/core/Accumulator;-><init>(Lorg/simpleframework/http/core/Conversation;Lorg/simpleframework/http/core/Entity;Lorg/simpleframework/http/core/Monitor;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

    .line 109
    invoke-interface {p2}, Lorg/simpleframework/http/core/Entity;->getChannel()Lorg/simpleframework/http/core/Channel;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->channel:Lorg/simpleframework/http/core/Channel;

    .line 110
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->channel:Lorg/simpleframework/http/core/Channel;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Channel;->getSender()Lorg/simpleframework/http/core/Sender;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->sender:Lorg/simpleframework/http/core/Sender;

    .line 111
    invoke-interface {p2}, Lorg/simpleframework/http/core/Entity;->getHeader()Lorg/simpleframework/http/core/Header;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->header:Lorg/simpleframework/http/core/Header;

    .line 112
    return-void
.end method

.method private getCharset()Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/simpleframework/http/core/ResponseEntity;->getContentType()Lorg/simpleframework/http/ContentType;

    move-result-object v0

    .line 174
    .local v0, "type":Lorg/simpleframework/http/ContentType;
    if-nez v0, :cond_9

    .line 175
    const-string v1, "iso-8859-1"

    .line 180
    :goto_8
    return-object v1

    .line 177
    :cond_9
    invoke-interface {v0}, Lorg/simpleframework/http/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    .line 178
    const-string v1, "iso-8859-1"

    goto :goto_8

    .line 180
    :cond_12
    invoke-interface {v0}, Lorg/simpleframework/http/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method private getPrintStream(ILjava/lang/String;)Ljava/io/PrintStream;
    .registers 6
    .param p1, "size"    # I
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    if-lez p1, :cond_7

    .line 280
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Accumulator;->expand(I)V

    .line 282
    :cond_7
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    return-object v0
.end method

.method private setSession(Lorg/simpleframework/http/Cookie;)V
    .registers 5
    .param p1, "session"    # Lorg/simpleframework/http/Cookie;

    .prologue
    .line 375
    invoke-virtual {p1}, Lorg/simpleframework/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/ResponseEntity;->getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    .line 378
    .local v0, "cookie":Lorg/simpleframework/http/Cookie;
    if-nez v0, :cond_b

    .line 379
    move-object v0, p1

    .line 381
    :cond_b
    invoke-virtual {v0}, Lorg/simpleframework/http/Cookie;->isNew()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 382
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/ResponseEntity;->setCookie(Lorg/simpleframework/http/Cookie;)Lorg/simpleframework/http/Cookie;

    .line 384
    :cond_14
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/Accumulator;->close()V

    .line 410
    return-void
.end method

.method public commit()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    iget-boolean v2, p0, Lorg/simpleframework/http/core/ResponseEntity;->committed:Z

    if-nez v2, :cond_1c

    .line 354
    iget-object v2, p0, Lorg/simpleframework/http/core/ResponseEntity;->header:Lorg/simpleframework/http/core/Header;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/simpleframework/http/core/Header;->getSession(Z)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    .line 356
    .local v0, "cookie":Lorg/simpleframework/http/Cookie;
    if-eqz v0, :cond_10

    .line 357
    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/ResponseEntity;->setSession(Lorg/simpleframework/http/Cookie;)V

    .line 359
    :cond_10
    invoke-virtual {p0}, Lorg/simpleframework/http/core/ResponseEntity;->getMessage()[B

    move-result-object v1

    .line 361
    .local v1, "message":[B
    iget-object v2, p0, Lorg/simpleframework/http/core/ResponseEntity;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v2, v1}, Lorg/simpleframework/http/core/Sender;->send([B)V

    .line 362
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/simpleframework/http/core/ResponseEntity;->committed:Z

    .line 364
    .end local v0    # "cookie":Lorg/simpleframework/http/Cookie;
    .end local v1    # "message":[B
    :cond_1c
    return-void
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/simpleframework/http/core/ResponseEntity;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->channel:Lorg/simpleframework/http/core/Channel;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Channel;->getAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getByteChannel()Ljava/nio/channels/WritableByteChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

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
    .line 318
    if-lez p1, :cond_7

    .line 319
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Accumulator;->expand(I)V

    .line 321
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

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
    .line 194
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

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
    .line 216
    if-lez p1, :cond_7

    .line 217
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Accumulator;->expand(I)V

    .line 219
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

    return-object v0
.end method

.method public getPrintStream()Ljava/io/PrintStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/simpleframework/http/core/ResponseEntity;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/core/ResponseEntity;->getPrintStream(ILjava/lang/String;)Ljava/io/PrintStream;

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
    .line 261
    invoke-direct {p0}, Lorg/simpleframework/http/core/ResponseEntity;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/http/core/ResponseEntity;->getPrintStream(ILjava/lang/String;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public isCommitted()Z
    .registers 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->committed:Z

    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lorg/simpleframework/http/core/ResponseEntity;->buffer:Lorg/simpleframework/http/core/Accumulator;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/Accumulator;->reset()V

    .line 398
    return-void
.end method

.method public setContentLength(I)V
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 158
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/http/core/ResponseEntity;->set(Ljava/lang/String;I)V

    .line 159
    return-void
.end method
