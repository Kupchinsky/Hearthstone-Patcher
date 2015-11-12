.class Lorg/simpleframework/http/core/SegmentConsumer;
.super Lorg/simpleframework/http/core/ArrayConsumer;
.source "SegmentConsumer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Segment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/http/core/SegmentConsumer$Token;
    }
.end annotation


# static fields
.field private static final TERMINAL:[B


# instance fields
.field protected cookies:Lorg/simpleframework/http/parse/CookieParser;

.field protected encoding:Ljava/lang/String;

.field protected expect:Z

.field protected header:Lorg/simpleframework/http/core/Message;

.field protected language:Lorg/simpleframework/http/parse/LanguageParser;

.field protected length:I

.field protected name:Ljava/lang/String;

.field protected part:Lorg/simpleframework/http/core/Disposition;

.field protected pos:I

.field protected scan:I

.field protected type:Lorg/simpleframework/http/ContentType;

.field protected value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/simpleframework/http/core/SegmentConsumer;->TERMINAL:[B

    return-void

    nop

    :array_a
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/simpleframework/http/core/ArrayConsumer;-><init>()V

    .line 116
    new-instance v0, Lorg/simpleframework/http/parse/LanguageParser;

    invoke-direct {v0}, Lorg/simpleframework/http/parse/LanguageParser;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->language:Lorg/simpleframework/http/parse/LanguageParser;

    .line 117
    new-instance v0, Lorg/simpleframework/http/parse/CookieParser;

    invoke-direct {v0}, Lorg/simpleframework/http/parse/CookieParser;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->cookies:Lorg/simpleframework/http/parse/CookieParser;

    .line 118
    new-instance v0, Lorg/simpleframework/http/core/Message;

    invoke-direct {v0}, Lorg/simpleframework/http/core/Message;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->header:Lorg/simpleframework/http/core/Message;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->length:I

    .line 120
    return-void
.end method

.method private header()V
    .registers 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lorg/simpleframework/http/core/SegmentConsumer;->adjust()V

    .line 318
    invoke-direct {p0}, Lorg/simpleframework/http/core/SegmentConsumer;->name()V

    .line 319
    invoke-virtual {p0}, Lorg/simpleframework/http/core/SegmentConsumer;->adjust()V

    .line 320
    invoke-direct {p0}, Lorg/simpleframework/http/core/SegmentConsumer;->value()V

    .line 321
    return-void
.end method

.method private name()V
    .registers 4

    .prologue
    .line 449
    new-instance v0, Lorg/simpleframework/http/core/SegmentConsumer$Token;

    iget v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/simpleframework/http/core/SegmentConsumer$Token;-><init>(Lorg/simpleframework/http/core/SegmentConsumer;II)V

    .line 451
    .local v0, "token":Lorg/simpleframework/http/core/SegmentConsumer$Token;
    :goto_8
    iget v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    iget v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->count:I

    if-ge v1, v2, :cond_1e

    .line 452
    iget-object v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->array:[B

    iget v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    aget-byte v1, v1, v2

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_25

    .line 453
    iget v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    .line 459
    :cond_1e
    invoke-virtual {v0}, Lorg/simpleframework/http/core/SegmentConsumer$Token;->text()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->name:Ljava/lang/String;

    .line 460
    return-void

    .line 456
    :cond_25
    iget v1, v0, Lorg/simpleframework/http/core/SegmentConsumer$Token;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/core/SegmentConsumer$Token;->size:I

    .line 457
    iget v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    goto :goto_8
.end method

.method private value()V
    .registers 7

    .prologue
    .line 472
    new-instance v2, Lorg/simpleframework/http/core/SegmentConsumer$Token;

    iget v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lorg/simpleframework/http/core/SegmentConsumer$Token;-><init>(Lorg/simpleframework/http/core/SegmentConsumer;II)V

    .line 474
    .local v2, "token":Lorg/simpleframework/http/core/SegmentConsumer$Token;
    const/4 v1, 0x0

    .local v1, "mark":I
    :cond_9
    :goto_9
    iget v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    iget v4, p0, Lorg/simpleframework/http/core/SegmentConsumer;->count:I

    if-ge v3, v4, :cond_5d

    .line 475
    iget-object v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->array:[B

    iget v4, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    aget-byte v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/simpleframework/http/core/SegmentConsumer;->terminal(B)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    iget v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    iget v4, p0, Lorg/simpleframework/http/core/SegmentConsumer;->count:I

    if-ge v3, v4, :cond_9

    .line 477
    iget-object v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->array:[B

    iget v4, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_40

    .line 478
    iget-object v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->array:[B

    iget v4, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    aget-byte v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/simpleframework/http/core/SegmentConsumer;->space(B)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 479
    add-int/lit8 v3, v0, 0x1

    add-int/2addr v1, v3

    .line 480
    goto :goto_9

    .line 476
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 486
    .end local v0    # "i":I
    :cond_43
    iget-object v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->array:[B

    iget v4, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    aget-byte v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/simpleframework/http/core/SegmentConsumer;->space(B)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 487
    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lorg/simpleframework/http/core/SegmentConsumer$Token;->size:I

    .line 491
    :goto_53
    iget v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    goto :goto_9

    .line 489
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 494
    :cond_5d
    invoke-virtual {v2}, Lorg/simpleframework/http/core/SegmentConsumer$Token;->text()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->value:Ljava/lang/String;

    .line 495
    return-void
.end method


# virtual methods
.method protected add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 334
    const-string v0, "Accept-Language"

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/http/core/SegmentConsumer;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 335
    invoke-virtual {p0, p2}, Lorg/simpleframework/http/core/SegmentConsumer;->language(Ljava/lang/String;)V

    .line 349
    :cond_b
    :goto_b
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/http/core/Message;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 336
    :cond_11
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/http/core/SegmentConsumer;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 337
    invoke-virtual {p0, p2}, Lorg/simpleframework/http/core/SegmentConsumer;->length(Ljava/lang/String;)V

    goto :goto_b

    .line 338
    :cond_1d
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/http/core/SegmentConsumer;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 339
    invoke-virtual {p0, p2}, Lorg/simpleframework/http/core/SegmentConsumer;->type(Ljava/lang/String;)V

    goto :goto_b

    .line 340
    :cond_29
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/http/core/SegmentConsumer;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 341
    invoke-virtual {p0, p2}, Lorg/simpleframework/http/core/SegmentConsumer;->disposition(Ljava/lang/String;)V

    goto :goto_b

    .line 342
    :cond_35
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/http/core/SegmentConsumer;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 343
    invoke-virtual {p0, p2}, Lorg/simpleframework/http/core/SegmentConsumer;->encoding(Ljava/lang/String;)V

    goto :goto_b

    .line 344
    :cond_41
    const-string v0, "Expect"

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/http/core/SegmentConsumer;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 345
    invoke-virtual {p0, p2}, Lorg/simpleframework/http/core/SegmentConsumer;->expect(Ljava/lang/String;)V

    goto :goto_b

    .line 346
    :cond_4d
    const-string v0, "Cookie"

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/http/core/SegmentConsumer;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 347
    invoke-virtual {p0, p2}, Lorg/simpleframework/http/core/SegmentConsumer;->cookie(Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected adjust()V
    .registers 3

    .prologue
    .line 505
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    iget v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->count:I

    if-ge v0, v1, :cond_12

    .line 506
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->array:[B

    iget v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/SegmentConsumer;->space(B)Z

    move-result v0

    if-nez v0, :cond_13

    .line 511
    :cond_12
    return-void

    .line 509
    :cond_13
    iget v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    goto :goto_0
.end method

.method protected cookie(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->cookies:Lorg/simpleframework/http/parse/CookieParser;

    invoke-virtual {v2, p1}, Lorg/simpleframework/http/parse/CookieParser;->parse(Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->cookies:Lorg/simpleframework/http/parse/CookieParser;

    invoke-virtual {v2}, Lorg/simpleframework/http/parse/CookieParser;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/http/Cookie;

    .line 376
    .local v0, "cookie":Lorg/simpleframework/http/Cookie;
    iget-object v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v2, v0}, Lorg/simpleframework/http/core/Message;->setCookie(Lorg/simpleframework/http/Cookie;)Lorg/simpleframework/http/Cookie;

    goto :goto_b

    .line 378
    .end local v0    # "cookie":Lorg/simpleframework/http/Cookie;
    :cond_1d
    return-void
.end method

.method protected disposition(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 413
    new-instance v0, Lorg/simpleframework/http/core/DispositionParser;

    invoke-direct {v0, p1}, Lorg/simpleframework/http/core/DispositionParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->part:Lorg/simpleframework/http/core/Disposition;

    .line 414
    return-void
.end method

.method protected encoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->encoding:Ljava/lang/String;

    .line 425
    return-void
.end method

.method protected equal(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected expect(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->expect:Z

    .line 362
    return-void
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->length:I

    return v0
.end method

.method public getContentType()Lorg/simpleframework/http/ContentType;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->type:Lorg/simpleframework/http/ContentType;

    return-object v0
.end method

.method public getDisposition()Lorg/simpleframework/http/core/Disposition;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->part:Lorg/simpleframework/http/core/Disposition;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->part:Lorg/simpleframework/http/core/Disposition;

    if-nez v0, :cond_6

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->part:Lorg/simpleframework/http/core/Disposition;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Disposition;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getLocales()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->language:Lorg/simpleframework/http/parse/LanguageParser;

    if-eqz v0, :cond_b

    .line 225
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->language:Lorg/simpleframework/http/parse/LanguageParser;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/LanguageParser;->list()Ljava/util/List;

    move-result-object v0

    .line 227
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->part:Lorg/simpleframework/http/core/Disposition;

    if-nez v0, :cond_6

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->part:Lorg/simpleframework/http/core/Disposition;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Disposition;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Message;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Message;->getValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected headers()V
    .registers 3

    .prologue
    .line 303
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    iget v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->count:I

    if-ge v0, v1, :cond_11

    .line 304
    invoke-direct {p0}, Lorg/simpleframework/http/core/SegmentConsumer;->header()V

    .line 305
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->value:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/simpleframework/http/core/SegmentConsumer;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_11
    return-void
.end method

.method public isExpectContinue()Z
    .registers 2

    .prologue
    .line 281
    iget-boolean v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->expect:Z

    return v0
.end method

.method public isFile()Z
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->part:Lorg/simpleframework/http/core/Disposition;

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->part:Lorg/simpleframework/http/core/Disposition;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Disposition;->isFile()Z

    move-result v0

    goto :goto_5
.end method

.method protected language(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 389
    new-instance v0, Lorg/simpleframework/http/parse/LanguageParser;

    invoke-direct {v0, p1}, Lorg/simpleframework/http/parse/LanguageParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->language:Lorg/simpleframework/http/parse/LanguageParser;

    .line 390
    return-void
.end method

.method protected length(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 436
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->length:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 440
    :goto_6
    return-void

    .line 437
    :catch_7
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    iput v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->length:I

    goto :goto_6
.end method

.method protected process()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/simpleframework/http/core/SegmentConsumer;->headers()V

    .line 293
    return-void
.end method

.method protected scan()I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 523
    iget v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->count:I

    .line 525
    .local v0, "length":I
    :cond_3
    iget v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    iget v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->count:I

    if-ge v2, v3, :cond_35

    .line 526
    iget-object v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->array:[B

    iget v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    aget-byte v2, v2, v3

    sget-object v3, Lorg/simpleframework/http/core/SegmentConsumer;->TERMINAL:[B

    iget v4, p0, Lorg/simpleframework/http/core/SegmentConsumer;->scan:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/simpleframework/http/core/SegmentConsumer;->scan:I

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_21

    .line 527
    iput v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->scan:I

    .line 529
    :cond_21
    iget v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->scan:I

    sget-object v3, Lorg/simpleframework/http/core/SegmentConsumer;->TERMINAL:[B

    array-length v3, v3

    if-ne v2, v3, :cond_3

    .line 530
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->done:Z

    .line 531
    iget v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    iput v2, p0, Lorg/simpleframework/http/core/SegmentConsumer;->count:I

    .line 532
    iput v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->pos:I

    .line 533
    iget v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->count:I

    sub-int v1, v0, v1

    .line 536
    :cond_35
    return v1
.end method

.method protected space(B)Z
    .registers 3
    .param p1, "octet"    # B

    .prologue
    .line 563
    const/16 v0, 0x20

    if-eq p1, v0, :cond_8

    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected terminal(B)Z
    .registers 3
    .param p1, "octet"    # B

    .prologue
    .line 575
    const/16 v0, 0xd

    if-eq p1, v0, :cond_8

    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 588
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/http/core/SegmentConsumer;->array:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/simpleframework/http/core/SegmentConsumer;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method protected type(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 401
    new-instance v0, Lorg/simpleframework/http/parse/ContentParser;

    invoke-direct {v0, p1}, Lorg/simpleframework/http/parse/ContentParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/SegmentConsumer;->type:Lorg/simpleframework/http/ContentType;

    .line 402
    return-void
.end method
