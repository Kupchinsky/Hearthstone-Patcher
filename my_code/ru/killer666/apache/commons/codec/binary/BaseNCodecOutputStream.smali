.class public Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BaseNCodecOutputStream.java"


# instance fields
.field private final baseNCodec:Lru/killer666/apache/commons/codec/binary/BaseNCodec;

.field private final context:Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lru/killer666/apache/commons/codec/binary/BaseNCodec;Z)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "basedCodec"    # Lru/killer666/apache/commons/codec/binary/BaseNCodec;
    .param p3, "doEncode"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    .line 42
    new-instance v0, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    iput-object v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    .line 47
    iput-object p2, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lru/killer666/apache/commons/codec/binary/BaseNCodec;

    .line 48
    iput-boolean p3, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    .line 49
    return-void
.end method

.method private flush(Z)V
    .registers 8
    .param p1, "propogate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v3, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lru/killer666/apache/commons/codec/binary/BaseNCodec;

    iget-object v4, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v4}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->available(Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    .line 112
    .local v0, "avail":I
    if-lez v0, :cond_1c

    .line 113
    new-array v1, v0, [B

    .line 114
    .local v1, "buf":[B
    iget-object v3, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lru/killer666/apache/commons/codec/binary/BaseNCodec;

    iget-object v4, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v1, v5, v0, v4}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->readResults([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v2

    .line 115
    .local v2, "c":I
    if-lez v2, :cond_1c

    .line 116
    iget-object v3, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    .end local v1    # "buf":[B
    .end local v2    # "c":I
    :cond_1c
    if-eqz p1, :cond_23

    .line 120
    iget-object v3, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 122
    :cond_23
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 144
    iget-boolean v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_18

    .line 145
    iget-object v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lru/killer666/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    iget-object v2, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, v1, v4, v3, v2}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->encode([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 149
    :goto_f
    invoke-virtual {p0}, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->flush()V

    .line 150
    iget-object v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 151
    return-void

    .line 147
    :cond_18
    iget-object v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lru/killer666/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    iget-object v2, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, v1, v4, v3, v2}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->decode([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_f
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->flush(Z)V

    .line 133
    return-void
.end method

.method public write(I)V
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 62
    iget-object v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->write([BII)V

    .line 63
    return-void
.end method

.method public write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_8

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_8
    if-ltz p2, :cond_c

    if-gez p3, :cond_12

    .line 88
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 89
    :cond_12
    array-length v0, p1

    if-gt p2, v0, :cond_1a

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_20

    .line 90
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 91
    :cond_20
    if-lez p3, :cond_31

    .line 92
    iget-boolean v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_32

    .line 93
    iget-object v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lru/killer666/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, p1, p2, p3, v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->encode([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 97
    :goto_2d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->flush(Z)V

    .line 99
    :cond_31
    return-void

    .line 95
    :cond_32
    iget-object v0, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lru/killer666/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lru/killer666/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, p1, p2, p3, v1}, Lru/killer666/apache/commons/codec/binary/BaseNCodec;->decode([BIILru/killer666/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_2d
.end method
