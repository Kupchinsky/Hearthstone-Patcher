.class public Lcom/turn/ttorrent/bcodec/BDecoder;
.super Ljava/lang/Object;
.source "BDecoder.java"


# instance fields
.field private final in:Ljava/io/InputStream;

.field private indicator:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    .line 74
    iput-object p1, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->in:Ljava/io/InputStream;

    .line 75
    return-void
.end method

.method public static bdecode(Ljava/io/InputStream;)Lcom/turn/ttorrent/bcodec/BEValue;
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/turn/ttorrent/bcodec/BDecoder;

    invoke-direct {v0, p0}, Lcom/turn/ttorrent/bcodec/BDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecode()Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v0

    return-object v0
.end method

.method public static bdecode(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/bcodec/BEValue;
    .registers 4
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lru/killer666/apache/commons/io/input/AutoCloseInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/input/AutoCloseInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecode(Ljava/io/InputStream;)Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v0

    return-object v0
.end method

.method private getNextIndicator()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget v0, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    if-nez v0, :cond_c

    .line 119
    iget-object v0, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    .line 121
    :cond_c
    iget v0, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    return v0
.end method

.method private read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v1, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 297
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 298
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 299
    :cond_f
    return v0
.end method

.method private read(I)[B
    .registers 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    new-array v2, p1, [B

    .line 313
    .local v2, "result":[B
    const/4 v1, 0x0

    .line 314
    .local v1, "read":I
    :goto_3
    if-ge v1, p1, :cond_18

    .line 316
    iget-object v3, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->in:Ljava/io/InputStream;

    sub-int v4, p1, v1

    invoke-virtual {v3, v2, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 317
    .local v0, "i":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_16

    .line 318
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 319
    :cond_16
    add-int/2addr v1, v0

    .line 320
    goto :goto_3

    .line 322
    .end local v0    # "i":I
    :cond_18
    return-object v2
.end method


# virtual methods
.method public bdecode()Lcom/turn/ttorrent/bcodec/BEValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->getNextIndicator()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 131
    const/4 v0, 0x0

    .line 140
    :goto_8
    return-object v0

    .line 133
    :cond_9
    iget v0, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1a

    iget v0, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1a

    .line 134
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecodeBytes()Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v0

    goto :goto_8

    .line 135
    :cond_1a
    iget v0, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_25

    .line 136
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecodeNumber()Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v0

    goto :goto_8

    .line 137
    :cond_25
    iget v0, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_30

    .line 138
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecodeList()Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v0

    goto :goto_8

    .line 139
    :cond_30
    iget v0, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3b

    .line 140
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecodeMap()Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v0

    goto :goto_8

    .line 142
    :cond_3b
    new-instance v0, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown indicator \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bdecodeBytes()Lcom/turn/ttorrent/bcodec/BEValue;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x9

    .line 153
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->getNextIndicator()I

    move-result v0

    .line 154
    .local v0, "c":I
    add-int/lit8 v2, v0, -0x30

    .line 155
    .local v2, "num":I
    if-ltz v2, :cond_c

    if-le v2, v4, :cond_2c

    .line 156
    :cond_c
    new-instance v3, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number expected, not \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_2c
    const/4 v3, 0x0

    iput v3, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    .line 160
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->read()I

    move-result v0

    .line 161
    add-int/lit8 v1, v0, -0x30

    .line 162
    .local v1, "i":I
    :goto_35
    if-ltz v1, :cond_44

    if-gt v1, v4, :cond_44

    .line 164
    mul-int/lit8 v3, v2, 0xa

    add-int v2, v3, v1

    .line 165
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->read()I

    move-result v0

    .line 166
    add-int/lit8 v1, v0, -0x30

    goto :goto_35

    .line 169
    :cond_44
    const/16 v3, 0x3a

    if-eq v0, v3, :cond_68

    .line 170
    new-instance v3, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Colon expected, not \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_68
    new-instance v3, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-direct {p0, v2}, Lcom/turn/ttorrent/bcodec/BDecoder;->read(I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>([B)V

    return-object v3
.end method

.method public bdecodeList()Lcom/turn/ttorrent/bcodec/BEValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->getNextIndicator()I

    move-result v0

    .line 243
    .local v0, "c":I
    const/16 v2, 0x6c

    if-eq v0, v2, :cond_29

    .line 244
    new-instance v2, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'l\', not \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_29
    iput v3, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->getNextIndicator()I

    move-result v0

    .line 251
    :goto_34
    const/16 v2, 0x65

    if-eq v0, v2, :cond_44

    .line 252
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecode()Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->getNextIndicator()I

    move-result v0

    goto :goto_34

    .line 255
    :cond_44
    iput v3, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    .line 257
    new-instance v2, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-direct {v2, v1}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public bdecodeMap()Lcom/turn/ttorrent/bcodec/BEValue;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 267
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->getNextIndicator()I

    move-result v0

    .line 268
    .local v0, "c":I
    const/16 v4, 0x64

    if-eq v0, v4, :cond_29

    .line 269
    new-instance v4, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected \'d\', not \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    :cond_29
    iput v5, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    .line 274
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->getNextIndicator()I

    move-result v0

    .line 276
    :goto_34
    const/16 v4, 0x65

    if-eq v0, v4, :cond_4c

    .line 278
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecode()Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/turn/ttorrent/bcodec/BEValue;->getString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecode()Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v3

    .line 281
    .local v3, "value":Lcom/turn/ttorrent/bcodec/BEValue;
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->getNextIndicator()I

    move-result v0

    .line 284
    goto :goto_34

    .line 285
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/turn/ttorrent/bcodec/BEValue;
    :cond_4c
    iput v5, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    .line 287
    new-instance v4, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-direct {v4, v2}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/util/Map;)V

    return-object v4
.end method

.method public bdecodeNumber()Lcom/turn/ttorrent/bcodec/BEValue;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x65

    const/16 v8, 0x30

    const/16 v7, 0x2d

    const/4 v6, 0x0

    .line 184
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->getNextIndicator()I

    move-result v0

    .line 185
    .local v0, "c":I
    const/16 v5, 0x69

    if-eq v0, v5, :cond_2f

    .line 186
    new-instance v5, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected \'i\', not \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 189
    :cond_2f
    iput v6, p0, Lcom/turn/ttorrent/bcodec/BDecoder;->indicator:I

    .line 191
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->read()I

    move-result v0

    .line 192
    if-ne v0, v8, :cond_65

    .line 193
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->read()I

    move-result v0

    .line 194
    if-ne v0, v9, :cond_45

    .line 195
    new-instance v5, Lcom/turn/ttorrent/bcodec/BEValue;

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v5, v6}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/Number;)V

    .line 232
    :goto_44
    return-object v5

    .line 197
    :cond_45
    new-instance v5, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'e\' expected after zero, not \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    :cond_65
    const/16 v5, 0x100

    new-array v1, v5, [C

    .line 203
    .local v1, "chars":[C
    const/4 v3, 0x0

    .line 205
    .local v3, "off":I
    if-ne v0, v7, :cond_7e

    .line 206
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->read()I

    move-result v0

    .line 207
    if-ne v0, v8, :cond_7a

    .line 208
    new-instance v5, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    const-string v6, "Negative zero not allowed"

    invoke-direct {v5, v6}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 209
    :cond_7a
    aput-char v7, v1, v3

    .line 210
    add-int/lit8 v3, v3, 0x1

    .line 213
    :cond_7e
    const/16 v5, 0x31

    if-lt v0, v5, :cond_86

    const/16 v5, 0x39

    if-le v0, v5, :cond_a6

    .line 214
    :cond_86
    new-instance v5, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Integer start \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 216
    :cond_a6
    int-to-char v5, v0

    aput-char v5, v1, v3

    .line 217
    add-int/lit8 v3, v3, 0x1

    .line 219
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->read()I

    move-result v0

    .line 220
    add-int/lit8 v2, v0, -0x30

    .line 221
    .local v2, "i":I
    :goto_b1
    if-ltz v2, :cond_c3

    const/16 v5, 0x9

    if-gt v2, v5, :cond_c3

    .line 222
    int-to-char v5, v0

    aput-char v5, v1, v3

    .line 223
    add-int/lit8 v3, v3, 0x1

    .line 224
    invoke-direct {p0}, Lcom/turn/ttorrent/bcodec/BDecoder;->read()I

    move-result v0

    .line 225
    add-int/lit8 v2, v0, -0x30

    goto :goto_b1

    .line 228
    :cond_c3
    if-eq v0, v9, :cond_cd

    .line 229
    new-instance v5, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    const-string v6, "Integer should end with \'e\'"

    invoke-direct {v5, v6}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 231
    :cond_cd
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v6, v3}, Ljava/lang/String;-><init>([CII)V

    .line 232
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Lcom/turn/ttorrent/bcodec/BEValue;

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/Number;)V

    goto/16 :goto_44
.end method
