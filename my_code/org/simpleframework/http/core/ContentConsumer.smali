.class Lorg/simpleframework/http/core/ContentConsumer;
.super Lorg/simpleframework/http/core/UpdateConsumer;
.source "ContentConsumer.java"

# interfaces
.implements Lorg/simpleframework/http/Part;


# static fields
.field private static final START:[B


# instance fields
.field private allocator:Lorg/simpleframework/util/buffer/Allocator;

.field private boundary:[B

.field private buffer:Lorg/simpleframework/util/buffer/Buffer;

.field private list:Lorg/simpleframework/http/core/PartList;

.field private seek:I

.field private segment:Lorg/simpleframework/http/core/Segment;

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/simpleframework/http/core/ContentConsumer;->START:[B

    return-void

    nop

    :array_a
    .array-data 1
        0xdt
        0xat
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;Lorg/simpleframework/http/core/PartList;[B)V
    .registers 5
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "segment"    # Lorg/simpleframework/http/core/Segment;
    .param p3, "list"    # Lorg/simpleframework/http/core/PartList;
    .param p4, "boundary"    # [B

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/simpleframework/http/core/UpdateConsumer;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/simpleframework/http/core/ContentConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    .line 97
    iput-object p4, p0, Lorg/simpleframework/http/core/ContentConsumer;->boundary:[B

    .line 98
    iput-object p2, p0, Lorg/simpleframework/http/core/ContentConsumer;->segment:Lorg/simpleframework/http/core/Segment;

    .line 99
    iput-object p3, p0, Lorg/simpleframework/http/core/ContentConsumer;->list:Lorg/simpleframework/http/core/PartList;

    .line 100
    return-void
.end method


# virtual methods
.method protected allocate()Lorg/simpleframework/util/buffer/Buffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_c

    .line 299
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Allocator;->allocate()Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    .line 301
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    return-object v0
.end method

.method protected commit(Lorg/simpleframework/transport/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Lorg/simpleframework/transport/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->boundary:[B

    invoke-interface {p1, v0}, Lorg/simpleframework/transport/Cursor;->push([B)V

    .line 219
    sget-object v0, Lorg/simpleframework/http/core/ContentConsumer;->START:[B

    invoke-interface {p1, v0}, Lorg/simpleframework/transport/Cursor;->push([B)V

    .line 220
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/ContentConsumer;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_a

    .line 186
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 188
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0, p1}, Lorg/simpleframework/util/buffer/Buffer;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getContentType()Lorg/simpleframework/http/ContentType;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Segment;->getContentType()Lorg/simpleframework/http/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Segment;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Segment;->getValue(Ljava/lang/String;)Ljava/lang/String;

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
    .line 201
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    if-nez v0, :cond_a

    .line 202
    new-instance v0, Lorg/simpleframework/http/core/EmptyInputStream;

    invoke-direct {v0}, Lorg/simpleframework/http/core/EmptyInputStream;-><init>()V

    .line 204
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->buffer:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0}, Lorg/simpleframework/util/buffer/Buffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_9
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Segment;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFile()Z
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Segment;->isFile()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/simpleframework/http/core/ContentConsumer;->segment:Lorg/simpleframework/http/core/Segment;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected update([BII)I
    .registers 17
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget v9, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    iget v10, p0, Lorg/simpleframework/http/core/ContentConsumer;->seek:I

    add-int v6, v9, v10

    .line 237
    .local v6, "skip":I
    add-int v1, p2, p3

    .line 238
    .local v1, "last":I
    iget v3, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    .line 239
    .local v3, "next":I
    move v2, p2

    .local v2, "mark":I
    move v5, p2

    .line 241
    .end local p2    # "off":I
    .local v5, "off":I
    :goto_c
    if-ge v5, v1, :cond_85

    .line 242
    iget v9, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    sget-object v10, Lorg/simpleframework/http/core/ContentConsumer;->START:[B

    array-length v10, v10

    if-ne v9, v10, :cond_5b

    .line 243
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "off":I
    .restart local p2    # "off":I
    aget-byte v9, p1, v5

    iget-object v10, p0, Lorg/simpleframework/http/core/ContentConsumer;->boundary:[B

    iget v11, p0, Lorg/simpleframework/http/core/ContentConsumer;->seek:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/simpleframework/http/core/ContentConsumer;->seek:I

    aget-byte v10, v10, v11

    if-eq v9, v10, :cond_3a

    .line 244
    if-lez v6, :cond_35

    .line 245
    sget-object v9, Lorg/simpleframework/http/core/ContentConsumer;->START:[B

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v3}, Lorg/simpleframework/http/core/ContentConsumer;->append([BII)V

    .line 246
    iget-object v9, p0, Lorg/simpleframework/http/core/ContentConsumer;->boundary:[B

    const/4 v10, 0x0

    sub-int v11, v6, v3

    invoke-virtual {p0, v9, v10, v11}, Lorg/simpleframework/http/core/ContentConsumer;->append([BII)V

    .line 248
    :cond_35
    const/4 v6, 0x0

    iput v6, p0, Lorg/simpleframework/http/core/ContentConsumer;->seek:I

    .end local v6    # "skip":I
    iput v6, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    .line 250
    .restart local v6    # "skip":I
    :cond_3a
    iget v9, p0, Lorg/simpleframework/http/core/ContentConsumer;->seek:I

    iget-object v10, p0, Lorg/simpleframework/http/core/ContentConsumer;->boundary:[B

    array-length v10, v10

    if-ne v9, v10, :cond_97

    .line 251
    iget v9, p0, Lorg/simpleframework/http/core/ContentConsumer;->seek:I

    iget v10, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    add-int v0, v9, v10

    .line 252
    .local v0, "excess":I
    sub-int v7, p2, v2

    .line 253
    .local v7, "total":I
    sub-int v8, v7, v0

    .line 255
    .local v8, "valid":I
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/simpleframework/http/core/ContentConsumer;->finished:Z

    .line 256
    iget-object v9, p0, Lorg/simpleframework/http/core/ContentConsumer;->list:Lorg/simpleframework/http/core/PartList;

    invoke-virtual {v9, p0}, Lorg/simpleframework/http/core/PartList;->add(Lorg/simpleframework/http/Part;)Z

    .line 258
    if-lez v8, :cond_58

    .line 259
    invoke-virtual {p0, p1, v2, v8}, Lorg/simpleframework/http/core/ContentConsumer;->append([BII)V

    .line 261
    :cond_58
    sub-int v9, p3, v7

    .line 285
    :goto_5a
    return v9

    .line 264
    .end local v0    # "excess":I
    .end local v7    # "total":I
    .end local v8    # "valid":I
    .end local p2    # "off":I
    .restart local v5    # "off":I
    :cond_5b
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v5

    .line 266
    .local v4, "octet":B
    sget-object v9, Lorg/simpleframework/http/core/ContentConsumer;->START:[B

    iget v10, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    aget-byte v9, v9, v10

    if-eq v4, v9, :cond_83

    .line 267
    if-lez v6, :cond_73

    .line 268
    sget-object v9, Lorg/simpleframework/http/core/ContentConsumer;->START:[B

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v3}, Lorg/simpleframework/http/core/ContentConsumer;->append([BII)V

    .line 270
    :cond_73
    const/4 v6, 0x0

    iput v6, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    .line 272
    sget-object v9, Lorg/simpleframework/http/core/ContentConsumer;->START:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    if-ne v4, v9, :cond_83

    .line 273
    iget v9, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    :cond_83
    move v5, p2

    .line 276
    .end local p2    # "off":I
    .restart local v5    # "off":I
    goto :goto_c

    .line 278
    .end local v4    # "octet":B
    :cond_85
    iget v9, p0, Lorg/simpleframework/http/core/ContentConsumer;->seek:I

    iget v10, p0, Lorg/simpleframework/http/core/ContentConsumer;->start:I

    add-int v0, v9, v10

    .line 279
    .restart local v0    # "excess":I
    sub-int v7, v5, v2

    .line 280
    .restart local v7    # "total":I
    sub-int v8, v7, v0

    .line 282
    .restart local v8    # "valid":I
    if-lez v8, :cond_94

    .line 283
    invoke-virtual {p0, p1, v2, v8}, Lorg/simpleframework/http/core/ContentConsumer;->append([BII)V

    .line 285
    :cond_94
    const/4 v9, 0x0

    move p2, v5

    .end local v5    # "off":I
    .restart local p2    # "off":I
    goto :goto_5a

    .end local v0    # "excess":I
    .end local v7    # "total":I
    .end local v8    # "valid":I
    :cond_97
    move v5, p2

    .end local p2    # "off":I
    .restart local v5    # "off":I
    goto/16 :goto_c
.end method
