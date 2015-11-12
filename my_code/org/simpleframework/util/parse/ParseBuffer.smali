.class public Lorg/simpleframework/util/parse/ParseBuffer;
.super Ljava/lang/Object;
.source "ParseBuffer.java"


# instance fields
.field protected buf:[C

.field protected cache:Ljava/lang/String;

.field protected count:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    .line 69
    return-void
.end method


# virtual methods
.method public append(C)V
    .registers 5
    .param p1, "c"    # C

    .prologue
    .line 81
    iget v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/parse/ParseBuffer;->ensureCapacity(I)V

    .line 82
    iget-object v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    iget v1, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    aput-char p1, v0, v1

    .line 83
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 95
    iget v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/parse/ParseBuffer;->ensureCapacity(I)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    iget v3, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 97
    iget v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    .line 98
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 167
    iget v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/parse/ParseBuffer;->ensureCapacity(I)V

    .line 168
    iget-object v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    iget v1, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 169
    iget v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    .line 170
    return-void
.end method

.method public append(Lorg/simpleframework/util/parse/ParseBuffer;)V
    .registers 5
    .param p1, "text"    # Lorg/simpleframework/util/parse/ParseBuffer;

    .prologue
    .line 123
    iget-object v0, p1, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    const/4 v1, 0x0

    iget v2, p1, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/simpleframework/util/parse/ParseBuffer;->append([CII)V

    .line 124
    return-void
.end method

.method public append(Lorg/simpleframework/util/parse/ParseBuffer;II)V
    .registers 5
    .param p1, "text"    # Lorg/simpleframework/util/parse/ParseBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 185
    iget-object v0, p1, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    invoke-virtual {p0, v0, p2, p3}, Lorg/simpleframework/util/parse/ParseBuffer;->append([CII)V

    .line 186
    return-void
.end method

.method public append([CII)V
    .registers 6
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 150
    iget v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/parse/ParseBuffer;->ensureCapacity(I)V

    .line 151
    iget-object v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    iget v1, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    .line 153
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->cache:Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    .line 215
    return-void
.end method

.method protected ensureCapacity(I)V
    .registers 8
    .param p1, "min"    # I

    .prologue
    const/4 v5, 0x0

    .line 197
    iget-object v3, p0, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    array-length v3, v3

    if-ge v3, p1, :cond_1a

    .line 198
    iget-object v3, p0, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    array-length v3, v3

    mul-int/lit8 v1, v3, 0x2

    .line 199
    .local v1, "size":I
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 200
    .local v0, "max":I
    new-array v2, v0, [C

    .line 201
    .local v2, "temp":[C
    iget-object v3, p0, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    iget v4, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v2, p0, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    .line 204
    .end local v0    # "max":I
    .end local v1    # "size":I
    .end local v2    # "temp":[C
    :cond_1a
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    return v0
.end method

.method public reset(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 110
    invoke-virtual {p0, p1}, Lorg/simpleframework/util/parse/ParseBuffer;->append(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public reset(Lorg/simpleframework/util/parse/ParseBuffer;)V
    .registers 2
    .param p1, "text"    # Lorg/simpleframework/util/parse/ParseBuffer;

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 136
    invoke-virtual {p0, p1}, Lorg/simpleframework/util/parse/ParseBuffer;->append(Lorg/simpleframework/util/parse/ParseBuffer;)V

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 238
    iget v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    if-gtz v0, :cond_6

    .line 239
    const/4 v0, 0x0

    .line 245
    :goto_5
    return-object v0

    .line 241
    :cond_6
    iget-object v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->cache:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 242
    iget-object v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->cache:Ljava/lang/String;

    goto :goto_5

    .line 244
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/util/parse/ParseBuffer;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/simpleframework/util/parse/ParseBuffer;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->cache:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lorg/simpleframework/util/parse/ParseBuffer;->cache:Ljava/lang/String;

    goto :goto_5
.end method
