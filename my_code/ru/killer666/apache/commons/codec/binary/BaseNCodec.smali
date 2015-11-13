.class public abstract Lru/killer666/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"

# interfaces
.implements Lru/killer666/apache/commons/codec/BinaryDecoder;
.implements Lru/killer666/apache/commons/codec/BinaryEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field static final EOF:I = -0x1

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40


# instance fields
.field protected final PAD:B

.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .registers 8
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/16 v2, 0x3d

    iput-byte v2, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->PAD:B

    .line 186
    iput p1, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 187
    iput p2, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    .line 188
    if-lez p3, :cond_1b

    if-lez p4, :cond_1b

    const/4 v0, 0x1

    .line 189
    .local v0, "useChunking":Z
    :goto_11
    if-eqz v0, :cond_16

    div-int v1, p3, p2

    mul-int/2addr v1, p2

    :cond_16
    iput v1, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 190
    iput p4, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    .line 191
    return-void

    .end local v0    # "useChunking":Z
    :cond_1b
    move v0, v1

    .line 188
    goto :goto_11
.end method

.method protected static isWhiteSpace(B)Z
    .registers 2
    .param p0, "byteToCheck"    # B

    .prologue
    .line 289
    sparse-switch p0, :sswitch_data_8

    .line 296
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 294
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 289
    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method private resizeBuffer(Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .registers 6
    .param p1, "context"    # Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v1, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-nez v1, :cond_14

    .line 228
    invoke-virtual {p0}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 229
    iput v3, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 230
    iput v3, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 236
    :goto_11
    iget-object v1, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object v1

    .line 232
    :cond_14
    iget-object v1, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 233
    .local v0, "b":[B
    iget-object v1, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget-object v2, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iput-object v0, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_11
.end method


# virtual methods
.method available(Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)I
    .registers 4
    .param p1, "context"    # Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 210
    iget-object v0, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_a

    iget v0, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v1, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected containsAlphabetOrPad([B)Z
    .registers 8
    .param p1, "arrayOctet"    # [B

    .prologue
    const/4 v4, 0x0

    .line 473
    if-nez p1, :cond_4

    .line 481
    :cond_3
    :goto_3
    return v4

    .line 476
    :cond_4
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_3

    aget-byte v1, v0, v2

    .line 477
    .local v1, "element":B
    const/16 v5, 0x3d

    if-eq v5, v1, :cond_15

    invoke-virtual {p0, v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 478
    :cond_15
    const/4 v4, 0x1

    goto :goto_3

    .line 476
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/killer666/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 354
    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    .line 355
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    .line 357
    :goto_c
    return-object v0

    .line 356
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_d
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 357
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_c

    .line 359
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_18
    new-instance v0, Lru/killer666/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract decode([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public decode(Ljava/lang/String;)[B
    .registers 3
    .param p1, "pArray"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-static {p1}, Lru/killer666/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .registers 6
    .param p1, "pArray"    # [B

    .prologue
    const/4 v3, 0x0

    .line 383
    if-eqz p1, :cond_6

    array-length v2, p1

    if-nez v2, :cond_8

    :cond_6
    move-object v1, p1

    .line 391
    :goto_7
    return-object v1

    .line 386
    :cond_8
    new-instance v0, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 387
    .local v0, "context":Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;
    array-length v2, p1

    invoke-virtual {p0, p1, v3, v2, v0}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->decode([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 388
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v3, v2, v0}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->decode([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 389
    iget v2, v0, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    new-array v1, v2, [B

    .line 390
    .local v1, "result":[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2, v0}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->readResults([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)I

    goto :goto_7
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/killer666/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 312
    instance-of v0, p1, [B

    if-nez v0, :cond_c

    .line 313
    new-instance v0, Lru/killer666/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_c
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method abstract encode([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .registers 7
    .param p1, "pArray"    # [B

    .prologue
    const/4 v4, 0x0

    .line 403
    if-eqz p1, :cond_6

    array-length v2, p1

    if-nez v2, :cond_8

    :cond_6
    move-object v0, p1

    .line 411
    :goto_7
    return-object v0

    .line 406
    :cond_8
    new-instance v1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 407
    .local v1, "context":Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;
    array-length v2, p1

    invoke-virtual {p0, p1, v4, v2, v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->encode([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 408
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v4, v2, v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->encode([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 409
    iget v2, v1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v3, v1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v2, v3

    new-array v0, v2, [B

    .line 410
    .local v0, "buf":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2, v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->readResults([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)I

    goto :goto_7
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .registers 3
    .param p1, "pArray"    # [B

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lru/killer666/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .registers 3
    .param p1, "pArray"    # [B

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lru/killer666/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ensureBufferSize(ILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .registers 5
    .param p1, "size"    # I
    .param p2, "context"    # Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 246
    iget-object v0, p2, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_c

    iget-object v0, p2, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    iget v1, p2, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_11

    .line 247
    :cond_c
    invoke-direct {p0, p2}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->resizeBuffer(Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    .line 249
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p2, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_10
.end method

.method protected getDefaultBufferSize()I
    .registers 2

    .prologue
    .line 219
    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .registers 8
    .param p1, "pArray"    # [B

    .prologue
    .line 495
    array-length v2, p1

    iget v3, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 496
    .local v0, "len":J
    iget v2, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v2, :cond_23

    .line 498
    iget v2, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 500
    :cond_23
    return-wide v0
.end method

.method hasData(Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)Z
    .registers 3
    .param p1, "context"    # Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 200
    iget-object v0, p1, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .registers 4
    .param p1, "basen"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-static {p1}, Lru/killer666/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result v0

    return v0
.end method

.method public isInAlphabet([BZ)Z
    .registers 6
    .param p1, "arrayOctet"    # [B
    .param p2, "allowWSPad"    # Z

    .prologue
    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_21

    .line 442
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v1

    if-nez v1, :cond_1e

    if-eqz p2, :cond_1c

    aget-byte v1, p1, v0

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1e

    aget-byte v1, p1, v0

    invoke-static {v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 444
    :cond_1c
    const/4 v1, 0x0

    .line 447
    :goto_1d
    return v1

    .line 441
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    :cond_21
    const/4 v1, 0x1

    goto :goto_1d
.end method

.method readResults([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I
    .param p4, "context"    # Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 269
    iget-object v1, p4, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v1, :cond_22

    .line 270
    invoke-virtual {p0, p4}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->available(Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 271
    .local v0, "len":I
    iget-object v1, p4, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget v2, p4, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget v1, p4, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    add-int/2addr v1, v0

    iput v1, p4, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 273
    iget v1, p4, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    iget v2, p4, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    if-lt v1, v2, :cond_21

    .line 274
    const/4 v1, 0x0

    iput-object v1, p4, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 278
    .end local v0    # "len":I
    :cond_21
    :goto_21
    return v0

    :cond_22
    iget-boolean v1, p4, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v1, :cond_29

    const/4 v1, -0x1

    :goto_27
    move v0, v1

    goto :goto_21

    :cond_29
    const/4 v1, 0x0

    goto :goto_27
.end method
