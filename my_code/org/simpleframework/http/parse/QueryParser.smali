.class public Lorg/simpleframework/http/parse/QueryParser;
.super Lorg/simpleframework/util/parse/MapParser;
.source "QueryParser.java"

# interfaces
.implements Lorg/simpleframework/http/Query;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/http/parse/QueryParser$1;,
        Lorg/simpleframework/http/parse/QueryParser$Token;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/util/parse/MapParser",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/simpleframework/http/Query;"
    }
.end annotation


# instance fields
.field private name:Lorg/simpleframework/http/parse/QueryParser$Token;

.field private value:Lorg/simpleframework/http/parse/QueryParser$Token;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lorg/simpleframework/util/parse/MapParser;-><init>()V

    .line 73
    new-instance v0, Lorg/simpleframework/http/parse/QueryParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/QueryParser$Token;-><init>(Lorg/simpleframework/http/parse/QueryParser;Lorg/simpleframework/http/parse/QueryParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->name:Lorg/simpleframework/http/parse/QueryParser$Token;

    .line 74
    new-instance v0, Lorg/simpleframework/http/parse/QueryParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/QueryParser$Token;-><init>(Lorg/simpleframework/http/parse/QueryParser;Lorg/simpleframework/http/parse/QueryParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->value:Lorg/simpleframework/http/parse/QueryParser$Token;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/QueryParser;->parse(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method static synthetic access$100(Lorg/simpleframework/http/parse/QueryParser;)[C
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/QueryParser;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    return-object v0
.end method

.method private binary(I)Z
    .registers 5
    .param p1, "peek"    # I

    .prologue
    .line 308
    iget v0, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/simpleframework/http/parse/QueryParser;->count:I

    if-ge v0, v1, :cond_18

    .line 309
    iget v0, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    .line 310
    iget-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/QueryParser;->bits(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 312
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private bits(I)C
    .registers 3
    .param p1, "data"    # I

    .prologue
    .line 430
    int-to-char v0, p1

    return v0
.end method

.method private convert(CC)I
    .registers 8
    .param p1, "high"    # C
    .param p2, "low"    # C

    .prologue
    const/16 v4, 0x61

    const/16 v3, 0x46

    const/16 v2, 0x41

    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, "hex":I
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/QueryParser;->hex(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0, p2}, Lorg/simpleframework/http/parse/QueryParser;->hex(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 476
    if-gt v2, p1, :cond_1a

    if-gt p1, v3, :cond_1a

    .line 477
    add-int/lit8 v1, p1, 0x20

    int-to-char p1, v1

    .line 479
    :cond_1a
    if-lt p1, v4, :cond_33

    .line 480
    add-int/lit8 v1, p1, -0x61

    add-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    .line 484
    :goto_21
    shl-int/lit8 v0, v0, 0x4

    .line 486
    if-gt v2, p2, :cond_2a

    if-gt p2, v3, :cond_2a

    .line 487
    add-int/lit8 v1, p2, 0x20

    int-to-char p2, v1

    .line 489
    :cond_2a
    if-lt p2, v4, :cond_37

    .line 490
    add-int/lit8 v1, p2, -0x61

    add-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    :goto_31
    move v1, v0

    .line 496
    :goto_32
    return v1

    .line 482
    :cond_33
    add-int/lit8 v1, p1, -0x30

    xor-int/2addr v0, v1

    goto :goto_21

    .line 492
    :cond_37
    add-int/lit8 v1, p2, -0x30

    xor-int/2addr v0, v1

    goto :goto_31

    .line 496
    :cond_3b
    const/4 v1, -0x1

    goto :goto_32
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 533
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p1

    .line 535
    .end local p1    # "text":Ljava/lang/String;
    :goto_6
    return-object p1

    .line 534
    .restart local p1    # "text":Ljava/lang/String;
    :catch_7
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_6
.end method

.method private encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/QueryParser;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/simpleframework/http/parse/QueryParser;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private escape()V
    .registers 3

    .prologue
    .line 288
    iget v1, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    invoke-direct {p0, v1}, Lorg/simpleframework/http/parse/QueryParser;->peek(I)I

    move-result v0

    .line 290
    .local v0, "peek":I
    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/QueryParser;->unicode(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 291
    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/QueryParser;->binary(I)Z

    .line 293
    :cond_f
    return-void
.end method

.method private hex(C)Z
    .registers 4
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 511
    const/16 v1, 0x30

    if-lt p1, v1, :cond_a

    const/16 v1, 0x39

    if-gt p1, v1, :cond_a

    .line 518
    :cond_9
    :goto_9
    return v0

    .line 513
    :cond_a
    const/16 v1, 0x61

    if-lt p1, v1, :cond_12

    const/16 v1, 0x66

    if-le p1, v1, :cond_9

    .line 515
    :cond_12
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1a

    const/16 v1, 0x46

    if-le p1, v1, :cond_9

    .line 518
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private insert()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->name:Lorg/simpleframework/http/parse/QueryParser$Token;

    iget v0, v0, Lorg/simpleframework/http/parse/QueryParser$Token;->len:I

    if-lez v0, :cond_e

    .line 188
    iget-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->name:Lorg/simpleframework/http/parse/QueryParser$Token;

    iget-object v1, p0, Lorg/simpleframework/http/parse/QueryParser;->value:Lorg/simpleframework/http/parse/QueryParser$Token;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/QueryParser;->insert(Lorg/simpleframework/http/parse/QueryParser$Token;Lorg/simpleframework/http/parse/QueryParser$Token;)V

    .line 190
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->name:Lorg/simpleframework/http/parse/QueryParser$Token;

    iput v2, v0, Lorg/simpleframework/http/parse/QueryParser$Token;->len:I

    .line 191
    iget-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->value:Lorg/simpleframework/http/parse/QueryParser$Token;

    iput v2, v0, Lorg/simpleframework/http/parse/QueryParser$Token;->len:I

    .line 192
    return-void
.end method

.method private insert(Lorg/simpleframework/http/parse/QueryParser$Token;Lorg/simpleframework/http/parse/QueryParser$Token;)V
    .registers 5
    .param p1, "name"    # Lorg/simpleframework/http/parse/QueryParser$Token;
    .param p2, "value"    # Lorg/simpleframework/http/parse/QueryParser$Token;

    .prologue
    .line 204
    invoke-virtual {p1}, Lorg/simpleframework/http/parse/QueryParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/simpleframework/http/parse/QueryParser$Token;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/simpleframework/http/parse/QueryParser;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method private name()V
    .registers 8

    .prologue
    .line 232
    iget v0, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    .line 233
    .local v0, "mark":I
    iget v1, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    .line 235
    .local v1, "pos":I
    :goto_4
    iget v3, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->count:I

    if-ge v3, v4, :cond_33

    .line 236
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x25

    if-ne v3, v4, :cond_29

    .line 237
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;->escape()V

    .line 243
    :cond_17
    :goto_17
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    iget-object v4, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v5, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    aget-char v4, v4, v5

    aput-char v4, v3, v1

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_4

    .line 238
    :cond_29
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3e

    .line 245
    :cond_33
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->name:Lorg/simpleframework/http/parse/QueryParser$Token;

    sub-int v4, v1, v0

    iput v4, v3, Lorg/simpleframework/http/parse/QueryParser$Token;->len:I

    .line 246
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->name:Lorg/simpleframework/http/parse/QueryParser$Token;

    iput v0, v3, Lorg/simpleframework/http/parse/QueryParser$Token;->off:I

    .line 247
    return-void

    .line 240
    :cond_3e
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_17

    .line 241
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    const/16 v5, 0x20

    aput-char v5, v3, v4

    goto :goto_17
.end method

.method private param()V
    .registers 2

    .prologue
    .line 217
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;->name()V

    .line 218
    const-string v0, "="

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/QueryParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 219
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;->value()V

    .line 221
    :cond_e
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;->insert()V

    .line 222
    return-void
.end method

.method private peek(I)I
    .registers 7
    .param p1, "pos"    # I

    .prologue
    const/4 v2, -0x1

    .line 447
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    aget-char v3, v3, p1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_f

    .line 448
    iget v3, p0, Lorg/simpleframework/http/parse/QueryParser;->count:I

    add-int/lit8 v4, p1, 0x2

    if-gt v3, v4, :cond_10

    .line 456
    :cond_f
    :goto_f
    return v2

    .line 451
    :cond_10
    iget-object v2, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v0, v2, v3

    .line 452
    .local v0, "high":C
    iget-object v2, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    add-int/lit8 v3, p1, 0x2

    aget-char v1, v2, v3

    .line 454
    .local v1, "low":C
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/QueryParser;->convert(CC)I

    move-result v2

    goto :goto_f
.end method

.method private unicode(I)Z
    .registers 5
    .param p1, "peek"    # I

    .prologue
    const/4 v0, 0x0

    .line 334
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_a

    .line 335
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/http/parse/QueryParser;->unicode(II)Z

    move-result v0

    .line 352
    :cond_9
    :goto_9
    return v0

    .line 337
    :cond_a
    and-int/lit16 v1, p1, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_18

    .line 338
    and-int/lit8 v0, p1, 0x1f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/QueryParser;->unicode(II)Z

    move-result v0

    goto :goto_9

    .line 340
    :cond_18
    and-int/lit16 v1, p1, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_26

    .line 341
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/QueryParser;->unicode(II)Z

    move-result v0

    goto :goto_9

    .line 343
    :cond_26
    and-int/lit16 v1, p1, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_34

    .line 344
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/QueryParser;->unicode(II)Z

    move-result v0

    goto :goto_9

    .line 346
    :cond_34
    and-int/lit16 v1, p1, 0xfc

    const/16 v2, 0xf8

    if-ne v1, v2, :cond_42

    .line 347
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/QueryParser;->unicode(II)Z

    move-result v0

    goto :goto_9

    .line 349
    :cond_42
    and-int/lit16 v1, p1, 0xfe

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_9

    .line 350
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/QueryParser;->unicode(II)Z

    move-result v0

    goto :goto_9
.end method

.method private unicode(II)Z
    .registers 5
    .param p1, "peek"    # I
    .param p2, "more"    # I

    .prologue
    .line 373
    iget v0, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Lorg/simpleframework/http/parse/QueryParser;->count:I

    if-lt v0, v1, :cond_b

    .line 374
    const/4 v0, 0x0

    .line 376
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/http/parse/QueryParser;->unicode(III)Z

    move-result v0

    goto :goto_a
.end method

.method private unicode(III)Z
    .registers 10
    .param p1, "peek"    # I
    .param p2, "more"    # I
    .param p3, "pos"    # I

    .prologue
    .line 398
    move v1, p2

    .end local p2    # "more":I
    .local v1, "more":I
    :goto_1
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "more":I
    .restart local p2    # "more":I
    if-lez v1, :cond_24

    .line 399
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    aget-char v3, v3, p3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_22

    .line 400
    add-int/lit8 v2, p3, 0x3

    .line 401
    .local v2, "next":I
    invoke-direct {p0, v2}, Lorg/simpleframework/http/parse/QueryParser;->peek(I)I

    move-result v0

    .line 403
    .local v0, "hex":I
    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_22

    .line 404
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v4, v0, 0x3f

    or-int p1, v3, v4

    .line 405
    move p3, v2

    move v1, p2

    .line 406
    .end local p2    # "more":I
    .restart local v1    # "more":I
    goto :goto_1

    .line 409
    .end local v0    # "hex":I
    .end local v1    # "more":I
    .end local v2    # "next":I
    .restart local p2    # "more":I
    :cond_22
    const/4 v3, 0x0

    .line 415
    :goto_23
    return v3

    .line 411
    :cond_24
    add-int/lit8 v3, p3, 0x2

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->count:I

    if-ge v3, v4, :cond_38

    .line 412
    add-int/lit8 v3, p3, 0x2

    iput v3, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    .line 413
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/QueryParser;->bits(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 415
    :cond_38
    const/4 v3, 0x1

    goto :goto_23
.end method

.method private value()V
    .registers 8

    .prologue
    .line 257
    iget v0, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    .line 258
    .local v0, "mark":I
    iget v1, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    .line 260
    .local v1, "pos":I
    :goto_4
    iget v3, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->count:I

    if-ge v3, v4, :cond_46

    .line 261
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x25

    if-ne v3, v4, :cond_29

    .line 262
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;->escape()V

    .line 268
    :cond_17
    :goto_17
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    iget-object v4, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v5, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    aget-char v4, v4, v5

    aput-char v4, v3, v1

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_4

    .line 263
    :cond_29
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_3c

    .line 264
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    const/16 v5, 0x20

    aput-char v5, v3, v4

    goto :goto_17

    .line 265
    :cond_3c
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x26

    if-ne v3, v4, :cond_17

    .line 270
    :cond_46
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->value:Lorg/simpleframework/http/parse/QueryParser$Token;

    sub-int v4, v1, v0

    iput v4, v3, Lorg/simpleframework/http/parse/QueryParser$Token;->len:I

    .line 271
    iget-object v3, p0, Lorg/simpleframework/http/parse/QueryParser;->value:Lorg/simpleframework/http/parse/QueryParser$Token;

    iput v0, v3, Lorg/simpleframework/http/parse/QueryParser$Token;->off:I

    .line 272
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 140
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 141
    .local v0, "flag":Ljava/lang/Boolean;
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/QueryParser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 146
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public getFloat(Ljava/lang/Object;)F
    .registers 4
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/QueryParser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 124
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 126
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getInteger(Ljava/lang/Object;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/QueryParser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 107
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->all:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 158
    iget-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 159
    iget-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->name:Lorg/simpleframework/http/parse/QueryParser$Token;

    iput v1, v0, Lorg/simpleframework/http/parse/QueryParser$Token;->len:I

    .line 160
    iget-object v0, p0, Lorg/simpleframework/http/parse/QueryParser;->value:Lorg/simpleframework/http/parse/QueryParser$Token;

    iput v1, v0, Lorg/simpleframework/http/parse/QueryParser$Token;->len:I

    .line 161
    iput v1, p0, Lorg/simpleframework/http/parse/QueryParser;->off:I

    .line 162
    return-void
.end method

.method protected parse()V
    .registers 2

    .prologue
    .line 171
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;->param()V

    .line 172
    :goto_3
    const-string v0, "&"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/QueryParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 173
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;->param()V

    goto :goto_3

    .line 175
    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 594
    iget-object v1, p0, Lorg/simpleframework/http/parse/QueryParser;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 596
    .local v0, "set":Ljava/util/Set;
    iget-object v1, p0, Lorg/simpleframework/http/parse/QueryParser;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 597
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/QueryParser;->toString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 599
    :goto_12
    return-object v1

    :cond_13
    const-string v1, ""

    goto :goto_12
.end method

.method public toString(Ljava/util/Set;)Ljava/lang/String;
    .registers 9
    .param p1, "set"    # Ljava/util/Set;

    .prologue
    .line 567
    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 568
    .local v1, "list":[Ljava/lang/Object;
    const-string v3, ""

    .line 570
    .local v3, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v5, v1

    if-ge v0, v5, :cond_43

    .line 571
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/simpleframework/http/parse/QueryParser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 574
    .local v4, "value":Ljava/lang/String;
    if-lez v0, :cond_2b

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2, v4}, Lorg/simpleframework/http/parse/QueryParser;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 579
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_43
    return-object v3
.end method
