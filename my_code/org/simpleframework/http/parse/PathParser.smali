.class public Lorg/simpleframework/http/parse/PathParser;
.super Lorg/simpleframework/util/parse/Parser;
.source "PathParser.java"

# interfaces
.implements Lorg/simpleframework/http/Path;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/http/parse/PathParser$1;,
        Lorg/simpleframework/http/parse/PathParser$TokenList;,
        Lorg/simpleframework/http/parse/PathParser$Token;
    }
.end annotation


# instance fields
.field private dir:Lorg/simpleframework/http/parse/PathParser$Token;

.field private ext:Lorg/simpleframework/http/parse/PathParser$Token;

.field private list:Lorg/simpleframework/http/parse/PathParser$TokenList;

.field private name:Lorg/simpleframework/http/parse/PathParser$Token;

.field private path:Lorg/simpleframework/http/parse/PathParser$Token;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lorg/simpleframework/util/parse/Parser;-><init>()V

    .line 79
    new-instance v0, Lorg/simpleframework/http/parse/PathParser$TokenList;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/PathParser$TokenList;-><init>(Lorg/simpleframework/http/parse/PathParser;Lorg/simpleframework/http/parse/PathParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->list:Lorg/simpleframework/http/parse/PathParser$TokenList;

    .line 80
    new-instance v0, Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/PathParser$Token;-><init>(Lorg/simpleframework/http/parse/PathParser;Lorg/simpleframework/http/parse/PathParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->ext:Lorg/simpleframework/http/parse/PathParser$Token;

    .line 81
    new-instance v0, Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/PathParser$Token;-><init>(Lorg/simpleframework/http/parse/PathParser;Lorg/simpleframework/http/parse/PathParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->dir:Lorg/simpleframework/http/parse/PathParser$Token;

    .line 82
    new-instance v0, Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/PathParser$Token;-><init>(Lorg/simpleframework/http/parse/PathParser;Lorg/simpleframework/http/parse/PathParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->path:Lorg/simpleframework/http/parse/PathParser$Token;

    .line 83
    new-instance v0, Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/PathParser$Token;-><init>(Lorg/simpleframework/http/parse/PathParser;Lorg/simpleframework/http/parse/PathParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->name:Lorg/simpleframework/http/parse/PathParser$Token;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PathParser;-><init>()V

    .line 97
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/PathParser;->parse(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic access$200(Lorg/simpleframework/http/parse/PathParser;)[C
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/PathParser;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    return-object v0
.end method

.method static synthetic access$300(Lorg/simpleframework/http/parse/PathParser;)[C
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/PathParser;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    return-object v0
.end method

.method static synthetic access$400(Lorg/simpleframework/http/parse/PathParser;)[C
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/PathParser;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    return-object v0
.end method

.method private extension()V
    .registers 5

    .prologue
    .line 344
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    iget v3, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int v1, v2, v3

    .line 345
    .local v1, "pos":I
    const/4 v0, 0x0

    .line 347
    .local v0, "len":I
    :goto_7
    add-int/lit8 v2, v1, -0x1

    iget v3, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    if-lt v2, v3, :cond_23

    .line 348
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    add-int/lit8 v1, v1, -0x1

    aget-char v2, v2, v1

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_24

    .line 349
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->ext:Lorg/simpleframework/http/parse/PathParser$Token;

    add-int/lit8 v3, v1, 0x1

    iput v3, v2, Lorg/simpleframework/http/parse/PathParser$Token;->off:I

    .line 350
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->ext:Lorg/simpleframework/http/parse/PathParser$Token;

    iput v0, v2, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    .line 351
    iput v1, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    .line 356
    :cond_23
    return-void

    .line 354
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private getRelative(Lorg/simpleframework/http/parse/PathParser;)Ljava/lang/String;
    .registers 6
    .param p1, "path"    # Lorg/simpleframework/http/parse/PathParser;

    .prologue
    .line 283
    iget-object v2, p1, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    .line 284
    .local v2, "text":[C
    iget-object v3, p1, Lorg/simpleframework/http/parse/PathParser;->dir:Lorg/simpleframework/http/parse/PathParser$Token;

    iget v1, v3, Lorg/simpleframework/http/parse/PathParser$Token;->off:I

    .line 285
    .local v1, "off":I
    iget-object v3, p1, Lorg/simpleframework/http/parse/PathParser;->dir:Lorg/simpleframework/http/parse/PathParser$Token;

    iget v0, v3, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    .line 287
    .local v0, "len":I
    invoke-direct {p0, v2, v1, v0}, Lorg/simpleframework/http/parse/PathParser;->getRelative([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getRelative([CII)Ljava/lang/String;
    .registers 12
    .param p1, "text"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 310
    iget-object v5, p0, Lorg/simpleframework/http/parse/PathParser;->path:Lorg/simpleframework/http/parse/PathParser$Token;

    iget v5, v5, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    sub-int/2addr v5, p3

    add-int/lit8 v3, v5, 0x1

    .line 311
    .local v3, "size":I
    iget-object v5, p0, Lorg/simpleframework/http/parse/PathParser;->path:Lorg/simpleframework/http/parse/PathParser$Token;

    iget v5, v5, Lorg/simpleframework/http/parse/PathParser$Token;->off:I

    add-int/2addr v5, p3

    add-int/lit8 v2, v5, -0x1

    .line 313
    .local v2, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p2

    .end local p2    # "off":I
    .local v1, "off":I
    :goto_11
    if-ge v0, p3, :cond_27

    .line 314
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-char v5, p1, v1

    iget-object v6, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    iget-object v7, p0, Lorg/simpleframework/http/parse/PathParser;->path:Lorg/simpleframework/http/parse/PathParser$Token;

    iget v7, v7, Lorg/simpleframework/http/parse/PathParser$Token;->off:I

    add-int/2addr v7, v0

    aget-char v6, v6, v7

    if-eq v5, v6, :cond_23

    .line 321
    :goto_22
    return-object v4

    .line 313
    :cond_23
    add-int/lit8 v0, v0, 0x1

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_11

    .line 318
    :cond_27
    if-gez v2, :cond_2b

    move p2, v1

    .line 319
    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_22

    .line 321
    .end local p2    # "off":I
    .restart local v1    # "off":I
    :cond_2b
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    invoke-direct {v4, v5, v2, v3}, Ljava/lang/String;-><init>([CII)V

    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_22
.end method

.method private name()V
    .registers 7

    .prologue
    const/16 v5, 0x2f

    .line 468
    iget v1, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    .line 469
    .local v1, "pos":I
    const/4 v0, 0x0

    .line 471
    .local v0, "len":I
    :goto_5
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    iget v3, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    if-le v1, v3, :cond_2b

    .line 472
    iget-object v3, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    aget-char v3, v3, v2

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_1f

    .line 473
    iget-object v3, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    add-int/lit8 v4, v2, -0x1

    aget-char v3, v3, v4

    if-ne v3, v5, :cond_3c

    .line 474
    add-int/lit8 v1, v2, -0x1

    .line 476
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    :goto_1d
    const/4 v0, 0x0

    goto :goto_5

    .line 477
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_1f
    iget-object v3, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    aget-char v3, v3, v2

    if-ne v3, v5, :cond_38

    .line 478
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    .line 479
    iput v0, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    .line 485
    :cond_2b
    iget-object v3, p0, Lorg/simpleframework/http/parse/PathParser;->name:Lorg/simpleframework/http/parse/PathParser$Token;

    iget v4, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    iput v4, v3, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    .line 486
    iget-object v3, p0, Lorg/simpleframework/http/parse/PathParser;->name:Lorg/simpleframework/http/parse/PathParser$Token;

    iget v4, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    iput v4, v3, Lorg/simpleframework/http/parse/PathParser$Token;->off:I

    .line 487
    return-void

    .line 482
    :cond_38
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_5

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_3c
    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_1d
.end method

.method private normalize()V
    .registers 9

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x0

    const/16 v5, 0x2f

    .line 405
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    iget v3, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    add-int v1, v2, v3

    .line 406
    .local v1, "size":I
    iget v0, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    .line 408
    .local v0, "pos":I
    iput v6, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    iput v6, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    :goto_11
    if-ge v0, v1, :cond_ad

    .line 409
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    iget v3, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    iget-object v4, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    aget-char v4, v4, v0

    aput-char v4, v2, v3

    .line 411
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    aget-char v2, v2, v0

    if-ne v2, v5, :cond_40

    .line 412
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_3d

    .line 413
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    iget v3, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v3, v3, -0x2

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_3d

    .line 414
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    .line 408
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 416
    :cond_40
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    aget-char v2, v2, v0

    if-ne v2, v7, :cond_3d

    .line 417
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_56

    .line 418
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    iget v3, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v3, v3, -0x2

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_3d

    .line 421
    :cond_56
    add-int/lit8 v2, v0, 0x2

    if-le v2, v1, :cond_61

    .line 422
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    goto :goto_3d

    .line 424
    :cond_61
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_71

    .line 425
    add-int/lit8 v0, v0, 0x1

    .line 426
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    .line 428
    :cond_71
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    aget-char v2, v2, v0

    if-ne v2, v7, :cond_3d

    .line 431
    add-int/lit8 v2, v0, 0x2

    if-ge v2, v1, :cond_83

    .line 432
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    add-int/lit8 v3, v0, 0x2

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_3d

    .line 435
    :cond_83
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v2, v2, -0x2

    if-lez v2, :cond_a9

    .line 436
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    :goto_8f
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_9f

    .line 437
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    iget v3, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_a2

    .line 447
    :cond_9f
    add-int/lit8 v0, v0, 0x2

    goto :goto_3d

    .line 440
    :cond_a2
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    goto :goto_8f

    .line 443
    :cond_a9
    iput v6, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    .line 444
    iput v6, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    .line 451
    :cond_ad
    return-void
.end method

.method private path()V
    .registers 3

    .prologue
    .line 331
    iget v0, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    if-lez v0, :cond_f

    .line 332
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->path:Lorg/simpleframework/http/parse/PathParser$Token;

    iget v1, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    iput v1, v0, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    .line 333
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->path:Lorg/simpleframework/http/parse/PathParser$Token;

    const/4 v1, 0x0

    iput v1, v0, Lorg/simpleframework/http/parse/PathParser$Token;->off:I

    .line 335
    :cond_f
    return-void
.end method

.method private segments()V
    .registers 8

    .prologue
    const/16 v6, 0x2f

    const/4 v5, 0x0

    .line 367
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    add-int/lit8 v1, v2, -0x1

    .line 368
    .local v1, "pos":I
    const/4 v0, 0x1

    .line 370
    .local v0, "len":I
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->count:I

    if-lez v2, :cond_47

    .line 371
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    aget-char v2, v2, v1

    if-ne v2, v6, :cond_1e

    .line 372
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->dir:Lorg/simpleframework/http/parse/PathParser$Token;

    add-int/lit8 v3, v1, 0x1

    iput v3, v2, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    .line 373
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->dir:Lorg/simpleframework/http/parse/PathParser$Token;

    iput v5, v2, Lorg/simpleframework/http/parse/PathParser$Token;->off:I

    .line 374
    add-int/lit8 v1, v1, -0x1

    .line 376
    :cond_1e
    :goto_1e
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    if-lt v1, v2, :cond_47

    .line 377
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->buf:[C

    aget-char v2, v2, v1

    if-ne v2, v6, :cond_42

    .line 378
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->dir:Lorg/simpleframework/http/parse/PathParser$Token;

    iget v2, v2, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    if-nez v2, :cond_38

    .line 379
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->dir:Lorg/simpleframework/http/parse/PathParser$Token;

    add-int/lit8 v3, v1, 0x1

    iput v3, v2, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    .line 380
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->dir:Lorg/simpleframework/http/parse/PathParser$Token;

    iput v5, v2, Lorg/simpleframework/http/parse/PathParser$Token;->off:I

    .line 382
    :cond_38
    iget-object v2, p0, Lorg/simpleframework/http/parse/PathParser;->list:Lorg/simpleframework/http/parse/PathParser$TokenList;

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/simpleframework/http/parse/PathParser$TokenList;->add(II)V

    .line 383
    const/4 v0, 0x0

    .line 385
    :cond_42
    add-int/lit8 v0, v0, 0x1

    .line 386
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 389
    :cond_47
    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->dir:Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/PathParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->ext:Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/PathParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->name:Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/PathParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->path:Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/PathParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(I)Ljava/lang/String;
    .registers 3
    .param p1, "from"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->list:Lorg/simpleframework/http/parse/PathParser$TokenList;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/parse/PathParser$TokenList;->segment(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(II)Ljava/lang/String;
    .registers 4
    .param p1, "from"    # I
    .param p2, "count"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->list:Lorg/simpleframework/http/parse/PathParser$TokenList;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/http/parse/PathParser$TokenList;->segment(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelative(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Lorg/simpleframework/http/parse/PathParser;

    invoke-direct {v0, p1}, Lorg/simpleframework/http/parse/PathParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/PathParser;->getRelative(Lorg/simpleframework/http/parse/PathParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegments()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->list:Lorg/simpleframework/http/parse/PathParser$TokenList;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/PathParser$TokenList;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->list:Lorg/simpleframework/http/parse/PathParser$TokenList;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/PathParser$TokenList;->clear()V

    .line 131
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->ext:Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/PathParser$Token;->clear()V

    .line 132
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->dir:Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/PathParser$Token;->clear()V

    .line 133
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->name:Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/PathParser$Token;->clear()V

    .line 134
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser;->path:Lorg/simpleframework/http/parse/PathParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/PathParser$Token;->clear()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/parse/PathParser;->off:I

    .line 136
    return-void
.end method

.method protected parse()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PathParser;->normalize()V

    .line 116
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PathParser;->path()V

    .line 117
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PathParser;->segments()V

    .line 118
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PathParser;->name()V

    .line 119
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PathParser;->extension()V

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lorg/simpleframework/http/parse/PathParser;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
