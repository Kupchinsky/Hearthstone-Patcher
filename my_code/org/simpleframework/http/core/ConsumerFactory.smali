.class Lorg/simpleframework/http/core/ConsumerFactory;
.super Ljava/lang/Object;
.source "ConsumerFactory.java"


# instance fields
.field protected allocator:Lorg/simpleframework/util/buffer/Allocator;

.field protected segment:Lorg/simpleframework/http/core/Segment;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;)V
    .registers 3
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "segment"    # Lorg/simpleframework/http/core/Segment;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/simpleframework/http/core/ConsumerFactory;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    .line 55
    iput-object p2, p0, Lorg/simpleframework/http/core/ConsumerFactory;->segment:Lorg/simpleframework/http/core/Segment;

    .line 56
    return-void
.end method


# virtual methods
.method protected getBoundary(Lorg/simpleframework/http/core/Segment;)[B
    .registers 5
    .param p1, "header"    # Lorg/simpleframework/http/core/Segment;

    .prologue
    .line 111
    invoke-interface {p1}, Lorg/simpleframework/http/core/Segment;->getContentType()Lorg/simpleframework/http/ContentType;

    move-result-object v1

    .line 113
    .local v1, "type":Lorg/simpleframework/http/ContentType;
    if-eqz v1, :cond_13

    .line 114
    const-string v2, "boundary"

    invoke-interface {v1, v2}, Lorg/simpleframework/http/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 120
    .end local v0    # "token":Ljava/lang/String;
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method protected getContentLength()I
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lorg/simpleframework/http/core/ConsumerFactory;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Segment;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getInstance()Lorg/simpleframework/http/core/BodyConsumer;
    .registers 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/simpleframework/http/core/ConsumerFactory;->getContentLength()I

    move-result v0

    .line 69
    .local v0, "length":I
    if-gez v0, :cond_d

    .line 70
    const/16 v1, 0x2000

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/ConsumerFactory;->getInstance(I)Lorg/simpleframework/http/core/BodyConsumer;

    move-result-object v1

    .line 72
    :goto_c
    return-object v1

    :cond_d
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/ConsumerFactory;->getInstance(I)Lorg/simpleframework/http/core/BodyConsumer;

    move-result-object v1

    goto :goto_c
.end method

.method public getInstance(I)Lorg/simpleframework/http/core/BodyConsumer;
    .registers 5
    .param p1, "length"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lorg/simpleframework/http/core/ConsumerFactory;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/ConsumerFactory;->getBoundary(Lorg/simpleframework/http/core/Segment;)[B

    move-result-object v0

    .line 88
    .local v0, "boundary":[B
    iget-object v1, p0, Lorg/simpleframework/http/core/ConsumerFactory;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/ConsumerFactory;->isPart(Lorg/simpleframework/http/core/Segment;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 89
    new-instance v1, Lorg/simpleframework/http/core/PartListConsumer;

    iget-object v2, p0, Lorg/simpleframework/http/core/ConsumerFactory;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    invoke-direct {v1, v2, v0, p1}, Lorg/simpleframework/http/core/PartListConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;[BI)V

    .line 97
    :goto_15
    return-object v1

    .line 91
    :cond_16
    iget-object v1, p0, Lorg/simpleframework/http/core/ConsumerFactory;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/ConsumerFactory;->isChunked(Lorg/simpleframework/http/core/Segment;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 92
    new-instance v1, Lorg/simpleframework/http/core/ChunkedConsumer;

    iget-object v2, p0, Lorg/simpleframework/http/core/ConsumerFactory;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    invoke-direct {v1, v2}, Lorg/simpleframework/http/core/ChunkedConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;)V

    goto :goto_15

    .line 94
    :cond_26
    iget-object v1, p0, Lorg/simpleframework/http/core/ConsumerFactory;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/ConsumerFactory;->isFixed(Lorg/simpleframework/http/core/Segment;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 95
    new-instance v1, Lorg/simpleframework/http/core/FixedConsumer;

    iget-object v2, p0, Lorg/simpleframework/http/core/ConsumerFactory;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    invoke-direct {v1, v2, p1}, Lorg/simpleframework/http/core/FixedConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;I)V

    goto :goto_15

    .line 97
    :cond_36
    new-instance v1, Lorg/simpleframework/http/core/EmptyConsumer;

    invoke-direct {v1}, Lorg/simpleframework/http/core/EmptyConsumer;-><init>()V

    goto :goto_15
.end method

.method protected isChunked(Lorg/simpleframework/http/core/Segment;)Z
    .registers 4
    .param p1, "segment"    # Lorg/simpleframework/http/core/Segment;

    .prologue
    .line 157
    invoke-interface {p1}, Lorg/simpleframework/http/core/Segment;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 160
    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 161
    const/4 v1, 0x1

    .line 164
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method protected isFixed(Lorg/simpleframework/http/core/Segment;)Z
    .registers 4
    .param p1, "segment"    # Lorg/simpleframework/http/core/Segment;

    .prologue
    .line 178
    invoke-interface {p1}, Lorg/simpleframework/http/core/Segment;->getContentLength()I

    move-result v0

    .line 180
    .local v0, "length":I
    if-lez v0, :cond_8

    .line 181
    const/4 v1, 0x1

    .line 183
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method protected isPart(Lorg/simpleframework/http/core/Segment;)Z
    .registers 5
    .param p1, "segment"    # Lorg/simpleframework/http/core/Segment;

    .prologue
    .line 134
    invoke-interface {p1}, Lorg/simpleframework/http/core/Segment;->getContentType()Lorg/simpleframework/http/ContentType;

    move-result-object v1

    .line 136
    .local v1, "type":Lorg/simpleframework/http/ContentType;
    if-eqz v1, :cond_14

    .line 137
    invoke-interface {v1}, Lorg/simpleframework/http/ContentType;->getPrimary()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "token":Ljava/lang/String;
    const-string v2, "multipart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 140
    const/4 v2, 0x1

    .line 143
    .end local v0    # "token":Ljava/lang/String;
    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method
