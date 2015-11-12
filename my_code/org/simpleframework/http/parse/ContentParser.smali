.class public Lorg/simpleframework/http/parse/ContentParser;
.super Lorg/simpleframework/util/parse/Parser;
.source "ContentParser.java"

# interfaces
.implements Lorg/simpleframework/http/ContentType;


# instance fields
.field private charset:Lorg/simpleframework/util/parse/ParseBuffer;

.field private map:Lorg/simpleframework/util/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/KeyMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Lorg/simpleframework/util/parse/ParseBuffer;

.field private subtype:Lorg/simpleframework/util/parse/ParseBuffer;

.field private type:Lorg/simpleframework/util/parse/ParseBuffer;

.field private value:Lorg/simpleframework/util/parse/ParseBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/simpleframework/util/parse/Parser;-><init>()V

    .line 80
    new-instance v0, Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->subtype:Lorg/simpleframework/util/parse/ParseBuffer;

    .line 81
    new-instance v0, Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->charset:Lorg/simpleframework/util/parse/ParseBuffer;

    .line 82
    new-instance v0, Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->value:Lorg/simpleframework/util/parse/ParseBuffer;

    .line 83
    new-instance v0, Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->name:Lorg/simpleframework/util/parse/ParseBuffer;

    .line 84
    new-instance v0, Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->type:Lorg/simpleframework/util/parse/ParseBuffer;

    .line 85
    new-instance v0, Lorg/simpleframework/util/KeyMap;

    invoke-direct {v0}, Lorg/simpleframework/util/KeyMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->map:Lorg/simpleframework/util/KeyMap;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;-><init>()V

    .line 99
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/ContentParser;->parse(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private charset()V
    .registers 5

    .prologue
    const/16 v3, 0x22

    .line 447
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_50

    .line 448
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->charset:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0, v3}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    .line 449
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    :cond_15
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->count:I

    if-ge v0, v1, :cond_3e

    .line 450
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->charset:Lorg/simpleframework/util/parse/ParseBuffer;

    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    .line 451
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_15

    .line 452
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v1, v1, -0x2

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_15

    .line 465
    :cond_3e
    :goto_3e
    return-void

    .line 461
    :cond_3f
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->charset:Lorg/simpleframework/util/parse/ParseBuffer;

    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    .line 462
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    .line 457
    :cond_50
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->count:I

    if-ge v0, v1, :cond_3e

    .line 458
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_3f

    goto :goto_3e
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->type:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 225
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->subtype:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 226
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->charset:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 227
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->name:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 228
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->value:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 229
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->map:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v0}, Lorg/simpleframework/util/KeyMap;->clear()V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    .line 231
    return-void
.end method

.method private encode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v0, "text":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->type:Lorg/simpleframework/util/parse/ParseBuffer;

    if-eqz v1, :cond_18

    .line 479
    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->type:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->subtype:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    :cond_18
    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->charset:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v1}, Lorg/simpleframework/util/parse/ParseBuffer;->length()I

    move-result v1

    if-lez v1, :cond_2a

    .line 484
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->charset:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 487
    :cond_2a
    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/ContentParser;->encode(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private encode(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 6
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 501
    iget-object v3, p0, Lorg/simpleframework/http/parse/ContentParser;->map:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v3}, Lorg/simpleframework/util/KeyMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/simpleframework/http/parse/ContentParser;->map:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v3, v1}, Lorg/simpleframework/util/KeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 504
    .local v2, "value":Ljava/lang/String;
    const-string v3, "; "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    if-eqz v2, :cond_6

    .line 508
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 512
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private insert()V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->name:Lorg/simpleframework/util/parse/ParseBuffer;

    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->value:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/ContentParser;->insert(Lorg/simpleframework/util/parse/ParseBuffer;Lorg/simpleframework/util/parse/ParseBuffer;)V

    .line 352
    return-void
.end method

.method private insert(Lorg/simpleframework/util/parse/ParseBuffer;Lorg/simpleframework/util/parse/ParseBuffer;)V
    .registers 6
    .param p1, "name"    # Lorg/simpleframework/util/parse/ParseBuffer;
    .param p2, "value"    # Lorg/simpleframework/util/parse/ParseBuffer;

    .prologue
    .line 364
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->map:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {p1}, Lorg/simpleframework/util/parse/ParseBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/simpleframework/util/parse/ParseBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/simpleframework/util/KeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    return-void
.end method

.method private name()V
    .registers 4

    .prologue
    .line 389
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->count:I

    if-ge v0, v1, :cond_10

    .line 390
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_11

    .line 396
    :cond_10
    return-void

    .line 393
    :cond_11
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->name:Lorg/simpleframework/util/parse/ParseBuffer;

    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    .line 394
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    goto :goto_0
.end method

.method private pack()V
    .registers 12

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x22

    .line 260
    iget-object v7, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    const/4 v8, 0x0

    aget-char v2, v7, v8

    .line 261
    .local v2, "old":C
    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->count:I

    .line 262
    .local v1, "len":I
    const/4 v5, 0x0

    .line 263
    .local v5, "seek":I
    const/4 v3, 0x0

    .local v3, "pos":I
    move v4, v3

    .end local v3    # "pos":I
    .local v4, "pos":I
    move v6, v5

    .line 265
    .end local v5    # "seek":I
    .local v6, "seek":I
    :goto_f
    if-ge v6, v1, :cond_51

    .line 266
    iget-object v7, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "seek":I
    .restart local v5    # "seek":I
    aget-char v0, v7, v6

    .line 268
    .local v0, "ch":C
    if-ne v0, v9, :cond_3e

    if-eq v2, v10, :cond_3e

    .line 269
    iget-object v7, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aput-char v0, v7, v4

    :cond_21
    move v4, v3

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    move v6, v5

    .line 271
    .end local v5    # "seek":I
    .restart local v6    # "seek":I
    if-ge v6, v1, :cond_56

    .line 272
    iget-object v7, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    add-int/lit8 v8, v6, -0x1

    aget-char v2, v7, v8

    .line 273
    iget-object v7, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "seek":I
    .restart local v5    # "seek":I
    aget-char v0, v7, v6

    .line 274
    iget-object v7, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aput-char v0, v7, v4

    .line 276
    if-ne v0, v9, :cond_21

    if-eq v2, v10, :cond_21

    :goto_3b
    move v4, v3

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    move v6, v5

    .line 284
    .end local v5    # "seek":I
    .restart local v6    # "seek":I
    goto :goto_f

    .line 280
    .end local v6    # "seek":I
    .restart local v5    # "seek":I
    :cond_3e
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/ContentParser;->space(C)Z

    move-result v7

    if-nez v7, :cond_54

    .line 281
    iget-object v7, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    add-int/lit8 v8, v5, -0x1

    aget-char v2, v7, v8

    .line 282
    iget-object v7, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aput-char v2, v7, v4

    goto :goto_3b

    .line 285
    .end local v0    # "ch":C
    .end local v3    # "pos":I
    .end local v5    # "seek":I
    .restart local v4    # "pos":I
    .restart local v6    # "seek":I
    :cond_51
    iput v4, p0, Lorg/simpleframework/http/parse/ContentParser;->count:I

    .line 286
    return-void

    .end local v6    # "seek":I
    .restart local v0    # "ch":C
    .restart local v5    # "seek":I
    :cond_54
    move v3, v4

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_3b

    .end local v3    # "pos":I
    .end local v5    # "seek":I
    .restart local v4    # "pos":I
    .restart local v6    # "seek":I
    :cond_56
    move v3, v4

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    move v5, v6

    .end local v6    # "seek":I
    .restart local v5    # "seek":I
    goto :goto_3b
.end method

.method private parameter()V
    .registers 2

    .prologue
    .line 376
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->name()V

    .line 377
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    .line 378
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->value()V

    .line 379
    return-void
.end method

.method private parameters()V
    .registers 2

    .prologue
    .line 333
    :goto_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/ContentParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 334
    const-string v0, "charset="

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/ContentParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 335
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->charset()V

    .line 342
    :cond_13
    return-void

    .line 338
    :cond_14
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->parameter()V

    .line 339
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->insert()V

    goto :goto_0
.end method

.method private quote(C)Z
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 436
    const/16 v0, 0x27

    if-eq p1, v0, :cond_8

    const/16 v0, 0x22

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private subtype()V
    .registers 4

    .prologue
    .line 313
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->count:I

    if-ge v0, v1, :cond_10

    .line 314
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_11

    .line 320
    :cond_10
    return-void

    .line 317
    :cond_11
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->subtype:Lorg/simpleframework/util/parse/ParseBuffer;

    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    .line 318
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    goto :goto_0
.end method

.method private type()V
    .registers 4

    .prologue
    .line 296
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->count:I

    if-ge v0, v1, :cond_10

    .line 297
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_11

    .line 303
    :cond_10
    return-void

    .line 300
    :cond_11
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->type:Lorg/simpleframework/util/parse/ParseBuffer;

    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    .line 301
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    goto :goto_0
.end method

.method private value()V
    .registers 5

    .prologue
    .line 406
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/ContentParser;->quote(C)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 407
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    :goto_12
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->count:I

    if-ge v0, v1, :cond_34

    .line 408
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/ContentParser;->quote(C)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 409
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v1, v1, -0x2

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_35

    .line 424
    :cond_34
    :goto_34
    return-void

    .line 413
    :cond_35
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->value:Lorg/simpleframework/util/parse/ParseBuffer;

    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    goto :goto_12

    .line 420
    :cond_45
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->value:Lorg/simpleframework/util/parse/ParseBuffer;

    iget-object v1, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    .line 421
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    .line 416
    :cond_56
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->count:I

    if-ge v0, v1, :cond_34

    .line 417
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_45

    goto :goto_34
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->charset:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->map:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/KeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->type:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->subtype:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->count:I

    if-lez v0, :cond_7

    .line 212
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->pack()V

    .line 214
    :cond_7
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->clear()V

    .line 215
    return-void
.end method

.method protected parse()V
    .registers 2

    .prologue
    .line 244
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->type()V

    .line 245
    iget v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/ContentParser;->off:I

    .line 246
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->subtype()V

    .line 247
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->parameters()V

    .line 248
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 3
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->charset:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/parse/ParseBuffer;->reset(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->map:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/util/KeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public setPrimary(Ljava/lang/String;)V
    .registers 3
    .param p1, "primary"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->type:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/parse/ParseBuffer;->reset(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setSecondary(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/simpleframework/http/parse/ContentParser;->subtype:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/parse/ParseBuffer;->reset(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 524
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ContentParser;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
