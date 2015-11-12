.class public Lorg/simpleframework/http/parse/PrincipalParser;
.super Lorg/simpleframework/util/parse/Parser;
.source "PrincipalParser.java"

# interfaces
.implements Lorg/simpleframework/http/Principal;


# instance fields
.field private four:[B

.field private password:Lorg/simpleframework/util/parse/ParseBuffer;

.field private read:I

.field private ready:I

.field private user:Lorg/simpleframework/util/parse/ParseBuffer;

.field private write:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/simpleframework/util/parse/Parser;-><init>()V

    .line 80
    new-instance v0, Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->password:Lorg/simpleframework/util/parse/ParseBuffer;

    .line 81
    new-instance v0, Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->user:Lorg/simpleframework/util/parse/ParseBuffer;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->four:[B

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PrincipalParser;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/PrincipalParser;->parse(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private decode()V
    .registers 6

    .prologue
    const/16 v4, 0x41

    .line 249
    iget v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    iput v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->read:I

    iput v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    :goto_8
    iget v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->read:I

    add-int/lit8 v1, v1, 0x3

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->count:I

    if-ge v1, v2, :cond_48

    .line 250
    :cond_10
    :goto_10
    iget v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->ready:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_31

    .line 251
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->read:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->read:I

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lorg/simpleframework/http/parse/PrincipalParser;->translate(I)I

    move-result v0

    .line 252
    .local v0, "ch":I
    if-ltz v0, :cond_10

    .line 253
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->four:[B

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->ready:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->ready:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_10

    .line 256
    .end local v0    # "ch":I
    :cond_31
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->four:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_4d

    .line 257
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    iget-object v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->four:[B

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/PrincipalParser;->first([B)C

    move-result v3

    aput-char v3, v1, v2

    .line 270
    :cond_48
    :goto_48
    iget v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    iput v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->count:I

    .line 271
    return-void

    .line 259
    :cond_4d
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->four:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_75

    .line 260
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    iget-object v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->four:[B

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/PrincipalParser;->first([B)C

    move-result v3

    aput-char v3, v1, v2

    .line 261
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    iget-object v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->four:[B

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/PrincipalParser;->second([B)C

    move-result v3

    aput-char v3, v1, v2

    goto :goto_48

    .line 264
    :cond_75
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    iget-object v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->four:[B

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/PrincipalParser;->first([B)C

    move-result v3

    aput-char v3, v1, v2

    .line 265
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    iget-object v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->four:[B

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/PrincipalParser;->second([B)C

    move-result v3

    aput-char v3, v1, v2

    .line 266
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    iget-object v3, p0, Lorg/simpleframework/http/parse/PrincipalParser;->four:[B

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/PrincipalParser;->third([B)C

    move-result v3

    aput-char v3, v1, v2

    .line 268
    const/4 v1, 0x0

    iput v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->ready:I

    goto/16 :goto_8
.end method

.method private first([B)C
    .registers 4
    .param p1, "four"    # [B

    .prologue
    .line 315
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x30

    ushr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private pack()V
    .registers 8

    .prologue
    .line 165
    iget v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->count:I

    .line 166
    .local v1, "len":I
    const/4 v4, 0x0

    .line 167
    .local v4, "seek":I
    const/4 v2, 0x0

    .line 168
    .local v2, "pos":I
    const/4 v0, 0x0

    .line 170
    .local v0, "ch":C
    :goto_5
    if-ge v4, v1, :cond_49

    .line 171
    iget-object v6, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    aget-char v6, v6, v4

    invoke-virtual {p0, v6}, Lorg/simpleframework/http/parse/PrincipalParser;->space(C)Z

    move-result v6

    if-nez v6, :cond_36

    move v3, v2

    .end local v2    # "pos":I
    .local v3, "pos":I
    move v5, v4

    .line 176
    .end local v4    # "seek":I
    .local v5, "seek":I
    :goto_13
    if-ge v5, v1, :cond_3c

    .line 177
    iget-object v6, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "seek":I
    .restart local v4    # "seek":I
    aget-char v0, v6, v5

    .line 178
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/PrincipalParser;->space(C)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 179
    :goto_21
    if-ge v4, v1, :cond_2d

    .line 180
    iget-object v6, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    aget-char v6, v6, v4

    invoke-virtual {p0, v6}, Lorg/simpleframework/http/parse/PrincipalParser;->space(C)Z

    move-result v6

    if-nez v6, :cond_39

    .line 186
    :cond_2d
    iget-object v6, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aput-char v0, v6, v3

    move v3, v2

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    move v5, v4

    .end local v4    # "seek":I
    .restart local v5    # "seek":I
    goto :goto_13

    .line 174
    .end local v3    # "pos":I
    .end local v5    # "seek":I
    .restart local v2    # "pos":I
    .restart local v4    # "seek":I
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 183
    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 188
    .end local v4    # "seek":I
    .restart local v5    # "seek":I
    :cond_3c
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/PrincipalParser;->space(C)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 189
    add-int/lit8 v2, v3, -0x1

    .line 191
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :goto_44
    iput v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->count:I

    .line 192
    return-void

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    :cond_47
    move v2, v3

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_44

    .end local v5    # "seek":I
    .restart local v4    # "seek":I
    :cond_49
    move v3, v2

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    move v5, v4

    .end local v4    # "seek":I
    .restart local v5    # "seek":I
    goto :goto_13
.end method

.method private password()V
    .registers 4

    .prologue
    .line 230
    :goto_0
    iget v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->count:I

    if-ge v1, v2, :cond_12

    .line 231
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    aget-char v0, v1, v2

    .line 232
    .local v0, "ch":C
    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/PrincipalParser;->text(C)Z

    move-result v1

    if-nez v1, :cond_13

    .line 238
    .end local v0    # "ch":C
    :cond_12
    return-void

    .line 235
    .restart local v0    # "ch":C
    :cond_13
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->password:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v1, v0}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    .line 236
    iget v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    goto :goto_0
.end method

.method private second([B)C
    .registers 4
    .param p1, "four"    # [B

    .prologue
    .line 331
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3c

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private text(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 360
    const/16 v0, 0x1f

    if-le p1, v0, :cond_f

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_f

    const v0, 0xffff

    if-gt p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private third([B)C
    .registers 4
    .param p1, "four"    # [B

    .prologue
    .line 346
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private translate(I)I
    .registers 3
    .param p1, "octet"    # I

    .prologue
    .line 285
    const/16 v0, 0x41

    if-lt p1, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_b

    .line 286
    add-int/lit8 p1, p1, -0x41

    .line 300
    :goto_a
    return p1

    .line 287
    :cond_b
    const/16 v0, 0x61

    if-lt p1, v0, :cond_18

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_18

    .line 288
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 p1, v0, 0x1a

    goto :goto_a

    .line 289
    :cond_18
    const/16 v0, 0x30

    if-lt p1, v0, :cond_25

    const/16 v0, 0x39

    if-gt p1, v0, :cond_25

    .line 290
    add-int/lit8 v0, p1, -0x30

    add-int/lit8 p1, v0, 0x34

    goto :goto_a

    .line 291
    :cond_25
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_2c

    .line 292
    const/16 p1, 0x3e

    goto :goto_a

    .line 293
    :cond_2c
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_33

    .line 294
    const/16 p1, 0x3f

    goto :goto_a

    .line 295
    :cond_33
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_3a

    .line 296
    const/16 p1, 0x41

    goto :goto_a

    .line 298
    :cond_3a
    const/4 p1, -0x1

    goto :goto_a
.end method

.method private userid()V
    .registers 4

    .prologue
    .line 213
    :goto_0
    iget v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->count:I

    if-ge v1, v2, :cond_16

    .line 214
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    aget-char v0, v1, v2

    .line 215
    .local v0, "ch":C
    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/PrincipalParser;->text(C)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_17

    .line 222
    .end local v0    # "ch":C
    :cond_16
    return-void

    .line 218
    .restart local v0    # "ch":C
    :cond_17
    iget-object v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->user:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v1, v0}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    .line 219
    iget v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    goto :goto_0
.end method

.method private userpass()V
    .registers 2

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PrincipalParser;->userid()V

    .line 203
    iget v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    .line 204
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PrincipalParser;->password()V

    .line 205
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->user:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->user:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->password:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->password:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method protected init()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->password:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 149
    iget-object v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->user:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->off:I

    iput v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->read:I

    iput v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->ready:I

    iput v0, p0, Lorg/simpleframework/http/parse/PrincipalParser;->write:I

    .line 152
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PrincipalParser;->pack()V

    .line 153
    return-void
.end method

.method protected parse()V
    .registers 2

    .prologue
    .line 134
    const-string v0, "Basic "

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/PrincipalParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 135
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PrincipalParser;->decode()V

    .line 136
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PrincipalParser;->userpass()V

    .line 138
    :cond_e
    return-void
.end method
