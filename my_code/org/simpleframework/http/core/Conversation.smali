.class Lorg/simpleframework/http/core/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# instance fields
.field private final request:Lorg/simpleframework/http/Request;

.field private final response:Lorg/simpleframework/http/Response;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/Response;)V
    .registers 3
    .param p1, "request"    # Lorg/simpleframework/http/Request;
    .param p2, "response"    # Lorg/simpleframework/http/Response;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    .line 61
    iput-object p1, p0, Lorg/simpleframework/http/core/Conversation;->request:Lorg/simpleframework/http/Request;

    .line 62
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v0}, Lorg/simpleframework/http/Response;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getRequest()Lorg/simpleframework/http/Request;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/simpleframework/http/core/Conversation;->request:Lorg/simpleframework/http/Request;

    return-object v0
.end method

.method public getResponse()Lorg/simpleframework/http/Response;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    return-object v0
.end method

.method public isChunkable()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 210
    iget-object v4, p0, Lorg/simpleframework/http/core/Conversation;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v4}, Lorg/simpleframework/http/Request;->getMajor()I

    move-result v0

    .line 211
    .local v0, "major":I
    iget-object v4, p0, Lorg/simpleframework/http/core/Conversation;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v4}, Lorg/simpleframework/http/Request;->getMinor()I

    move-result v1

    .line 213
    .local v1, "minor":I
    if-lt v0, v2, :cond_15

    .line 214
    if-lt v1, v2, :cond_13

    .line 216
    :goto_12
    return v2

    :cond_13
    move v2, v3

    .line 214
    goto :goto_12

    :cond_15
    move v2, v3

    .line 216
    goto :goto_12
.end method

.method public isChunkedEncoded()Z
    .registers 4

    .prologue
    .line 258
    iget-object v1, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    const-string v2, "Transfer-Encoding"

    invoke-interface {v1, v2}, Lorg/simpleframework/http/Response;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 261
    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 263
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public isEmpty()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-object v2, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v2}, Lorg/simpleframework/http/Response;->getCode()I

    move-result v0

    .line 113
    .local v0, "code":I
    const/16 v2, 0xcc

    if-ne v0, v2, :cond_c

    .line 119
    :cond_b
    :goto_b
    return v1

    .line 116
    :cond_c
    const/16 v2, 0x130

    if-eq v0, v2, :cond_b

    .line 119
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isHead()Z
    .registers 3

    .prologue
    .line 132
    iget-object v1, p0, Lorg/simpleframework/http/core/Conversation;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v1}, Lorg/simpleframework/http/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "method":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 135
    const/4 v1, 0x0

    .line 137
    :goto_9
    return v1

    :cond_a
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method public isKeepAlive()Z
    .registers 4

    .prologue
    .line 193
    iget-object v1, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    const-string v2, "Connection"

    invoke-interface {v1, v2}, Lorg/simpleframework/http/Response;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 196
    const-string v1, "keep-alive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 198
    :goto_10
    return v1

    :cond_11
    invoke-virtual {p0}, Lorg/simpleframework/http/core/Conversation;->isPersistent()Z

    move-result v1

    goto :goto_10
.end method

.method public isPersistent()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 169
    iget-object v5, p0, Lorg/simpleframework/http/core/Conversation;->request:Lorg/simpleframework/http/Request;

    const-string v6, "Connection"

    invoke-interface {v5, v6}, Lorg/simpleframework/http/Request;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 172
    const-string v3, "keep-alive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 180
    :cond_12
    :goto_12
    return v3

    .line 174
    :cond_13
    iget-object v5, p0, Lorg/simpleframework/http/core/Conversation;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v5}, Lorg/simpleframework/http/Request;->getMajor()I

    move-result v0

    .line 175
    .local v0, "major":I
    iget-object v5, p0, Lorg/simpleframework/http/core/Conversation;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v5}, Lorg/simpleframework/http/Request;->getMinor()I

    move-result v1

    .line 177
    .local v1, "minor":I
    if-lt v0, v3, :cond_25

    .line 178
    if-ge v1, v3, :cond_12

    move v3, v4

    goto :goto_12

    :cond_25
    move v3, v4

    .line 180
    goto :goto_12
.end method

.method public setChunkedEncoded()V
    .registers 6

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/simpleframework/http/core/Conversation;->isKeepAlive()Z

    move-result v1

    .line 227
    .local v1, "keepAlive":Z
    invoke-virtual {p0}, Lorg/simpleframework/http/core/Conversation;->isChunkable()Z

    move-result v0

    .line 229
    .local v0, "chunkable":Z
    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 230
    iget-object v2, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    const-string v3, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-interface {v2, v3, v4}, Lorg/simpleframework/http/Response;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    const-string v3, "Connection"

    const-string v4, "keep-alive"

    invoke-interface {v2, v3, v4}, Lorg/simpleframework/http/Response;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_1e
    return-void

    .line 233
    :cond_1f
    iget-object v2, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    const-string v3, "Connection"

    const-string v4, "close"

    invoke-interface {v2, v3, v4}, Lorg/simpleframework/http/Response;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public setContentLength(I)V
    .registers 6
    .param p1, "length"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/simpleframework/http/core/Conversation;->isKeepAlive()Z

    move-result v0

    .line 151
    .local v0, "keepAlive":Z
    if-eqz v0, :cond_17

    .line 152
    iget-object v1, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    const-string v2, "Connection"

    const-string v3, "keep-alive"

    invoke-interface {v1, v2, v3}, Lorg/simpleframework/http/Response;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_f
    iget-object v1, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    const-string v2, "Content-Length"

    invoke-interface {v1, v2, p1}, Lorg/simpleframework/http/Response;->set(Ljava/lang/String;I)V

    .line 157
    return-void

    .line 154
    :cond_17
    iget-object v1, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-interface {v1, v2, v3}, Lorg/simpleframework/http/Response;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public setIdentityEncoded()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lorg/simpleframework/http/core/Conversation;->response:Lorg/simpleframework/http/Response;

    const-string v1, "Transfer-Encoding"

    invoke-interface {v0, v1}, Lorg/simpleframework/http/Response;->remove(Ljava/lang/String;)V

    .line 246
    return-void
.end method
