.class public Lorg/simpleframework/http/parse/CookieParser;
.super Lorg/simpleframework/util/parse/Parser;
.source "CookieParser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/http/parse/CookieParser$1;,
        Lorg/simpleframework/http/parse/CookieParser$Token;,
        Lorg/simpleframework/http/parse/CookieParser$Sequence;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/util/parse/Parser;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/simpleframework/http/Cookie;",
        ">;"
    }
.end annotation


# instance fields
.field private domain:Lorg/simpleframework/http/parse/CookieParser$Token;

.field private finished:Z

.field private name:Lorg/simpleframework/http/parse/CookieParser$Token;

.field private parsed:Z

.field private path:Lorg/simpleframework/http/parse/CookieParser$Token;

.field private value:Lorg/simpleframework/http/parse/CookieParser$Token;

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lorg/simpleframework/util/parse/Parser;-><init>()V

    .line 100
    new-instance v0, Lorg/simpleframework/http/parse/CookieParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/CookieParser$Token;-><init>(Lorg/simpleframework/http/parse/CookieParser;Lorg/simpleframework/http/parse/CookieParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->path:Lorg/simpleframework/http/parse/CookieParser$Token;

    .line 101
    new-instance v0, Lorg/simpleframework/http/parse/CookieParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/CookieParser$Token;-><init>(Lorg/simpleframework/http/parse/CookieParser;Lorg/simpleframework/http/parse/CookieParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->domain:Lorg/simpleframework/http/parse/CookieParser$Token;

    .line 102
    new-instance v0, Lorg/simpleframework/http/parse/CookieParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/CookieParser$Token;-><init>(Lorg/simpleframework/http/parse/CookieParser;Lorg/simpleframework/http/parse/CookieParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->name:Lorg/simpleframework/http/parse/CookieParser$Token;

    .line 103
    new-instance v0, Lorg/simpleframework/http/parse/CookieParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/CookieParser$Token;-><init>(Lorg/simpleframework/http/parse/CookieParser;Lorg/simpleframework/http/parse/CookieParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->value:Lorg/simpleframework/http/parse/CookieParser$Token;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/http/parse/CookieParser;->finished:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/simpleframework/http/parse/CookieParser;-><init>()V

    .line 118
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/CookieParser;->parse(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method static synthetic access$200(Lorg/simpleframework/http/parse/CookieParser;)Z
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/CookieParser;

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/simpleframework/http/parse/CookieParser;->parsed:Z

    return v0
.end method

.method static synthetic access$202(Lorg/simpleframework/http/parse/CookieParser;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/CookieParser;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/simpleframework/http/parse/CookieParser;->parsed:Z

    return p1
.end method

.method static synthetic access$300(Lorg/simpleframework/http/parse/CookieParser;)Lorg/simpleframework/http/Cookie;
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/CookieParser;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/simpleframework/http/parse/CookieParser;->getCookie()Lorg/simpleframework/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/simpleframework/http/parse/CookieParser;)Z
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/CookieParser;

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/simpleframework/http/parse/CookieParser;->finished:Z

    return v0
.end method

.method static synthetic access$402(Lorg/simpleframework/http/parse/CookieParser;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/CookieParser;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/simpleframework/http/parse/CookieParser;->finished:Z

    return p1
.end method

.method static synthetic access$500(Lorg/simpleframework/http/parse/CookieParser;)Lorg/simpleframework/http/parse/CookieParser$Token;
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/CookieParser;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->name:Lorg/simpleframework/http/parse/CookieParser$Token;

    return-object v0
.end method

.method static synthetic access$600(Lorg/simpleframework/http/parse/CookieParser;)[C
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/CookieParser;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    return-object v0
.end method

.method private cookie()V
    .registers 2

    .prologue
    .line 282
    const-string v0, ","

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 283
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->skip(Ljava/lang/String;)Z

    .line 285
    :cond_d
    invoke-direct {p0}, Lorg/simpleframework/http/parse/CookieParser;->name()V

    .line 286
    const-string v0, "="

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->skip(Ljava/lang/String;)Z

    .line 287
    invoke-direct {p0}, Lorg/simpleframework/http/parse/CookieParser;->value()V

    .line 288
    return-void
.end method

.method private data()V
    .registers 5

    .prologue
    const/16 v3, 0x22

    .line 339
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->value:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    .line 340
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->value:Lorg/simpleframework/http/parse/CookieParser$Token;

    const/4 v1, 0x0

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 341
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-ge v0, v1, :cond_6e

    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_6e

    .line 342
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->value:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 343
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    :cond_29
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-ge v0, v1, :cond_4f

    .line 344
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->value:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 345
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_29

    .line 346
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v1, v1, -0x2

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_29

    .line 350
    :cond_4f
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->value:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 351
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->value:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    .line 360
    :cond_5f
    :goto_5f
    return-void

    .line 356
    :cond_60
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->value:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 357
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    .line 353
    :cond_6e
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-ge v0, v1, :cond_5f

    .line 354
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->terminal(C)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_5f
.end method

.method private domain()V
    .registers 5

    .prologue
    const/16 v3, 0x22

    .line 417
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->domain:Lorg/simpleframework/http/parse/CookieParser$Token;

    const/4 v1, 0x0

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 418
    const-string v0, ";$Domain="

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 419
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->domain:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    .line 420
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_70

    .line 421
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->domain:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 422
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    :cond_2b
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-ge v0, v1, :cond_51

    .line 423
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->domain:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 424
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_2b

    .line 425
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v1, v1, -0x2

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_2b

    .line 429
    :cond_51
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->domain:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 430
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->domain:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    .line 440
    :cond_61
    :goto_61
    return-void

    .line 435
    :cond_62
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->domain:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 436
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    .line 432
    :cond_70
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-ge v0, v1, :cond_61

    .line 433
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->terminal(C)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_61
.end method

.method private getCookie()Lorg/simpleframework/http/Cookie;
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->name:Lorg/simpleframework/http/parse/CookieParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/CookieParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/http/parse/CookieParser;->value:Lorg/simpleframework/http/parse/CookieParser$Token;

    invoke-virtual {v1}, Lorg/simpleframework/http/parse/CookieParser$Token;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/CookieParser;->getCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method private getCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v0, Lorg/simpleframework/http/Cookie;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/simpleframework/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    .local v0, "cookie":Lorg/simpleframework/http/Cookie;
    iget-object v1, p0, Lorg/simpleframework/http/parse/CookieParser;->domain:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v1, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    if-lez v1, :cond_15

    .line 263
    iget-object v1, p0, Lorg/simpleframework/http/parse/CookieParser;->domain:Lorg/simpleframework/http/parse/CookieParser$Token;

    invoke-virtual {v1}, Lorg/simpleframework/http/parse/CookieParser$Token;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/simpleframework/http/Cookie;->setDomain(Ljava/lang/String;)V

    .line 265
    :cond_15
    iget-object v1, p0, Lorg/simpleframework/http/parse/CookieParser;->path:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v1, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    if-lez v1, :cond_24

    .line 266
    iget-object v1, p0, Lorg/simpleframework/http/parse/CookieParser;->path:Lorg/simpleframework/http/parse/CookieParser$Token;

    invoke-virtual {v1}, Lorg/simpleframework/http/parse/CookieParser$Token;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/simpleframework/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 268
    :cond_24
    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->version:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/http/Cookie;->setVersion(I)V

    .line 269
    return-object v0
.end method

.method private name()V
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->name:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    .line 299
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->name:Lorg/simpleframework/http/parse/CookieParser$Token;

    const/4 v1, 0x0

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 300
    :goto_b
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-ge v0, v1, :cond_1b

    .line 301
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1c

    .line 307
    :cond_1b
    return-void

    .line 304
    :cond_1c
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->name:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 305
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    goto :goto_b
.end method

.method private path()V
    .registers 5

    .prologue
    const/16 v3, 0x22

    .line 377
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->path:Lorg/simpleframework/http/parse/CookieParser$Token;

    const/4 v1, 0x0

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 378
    const-string v0, ";$Path="

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 379
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->path:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    .line 380
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_70

    .line 381
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->path:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 382
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    :cond_2b
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-ge v0, v1, :cond_51

    .line 383
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->path:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 384
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_2b

    .line 385
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v1, v1, -0x2

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_2b

    .line 389
    :cond_51
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->path:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 390
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->path:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    .line 400
    :cond_61
    :goto_61
    return-void

    .line 395
    :cond_62
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->path:Lorg/simpleframework/http/parse/CookieParser$Token;

    iget v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    .line 396
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    .line 392
    :cond_70
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-ge v0, v1, :cond_61

    .line 393
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->terminal(C)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_61
.end method

.method private terminal(C)Z
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 486
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private value()V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Lorg/simpleframework/http/parse/CookieParser;->data()V

    .line 324
    invoke-direct {p0}, Lorg/simpleframework/http/parse/CookieParser;->path()V

    .line 325
    invoke-direct {p0}, Lorg/simpleframework/http/parse/CookieParser;->domain()V

    .line 326
    return-void
.end method

.method private version()V
    .registers 5

    .prologue
    const/16 v3, 0x22

    .line 454
    const-string v0, "$Version="

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 455
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_18

    .line 456
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    .line 458
    :cond_18
    :goto_18
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-ge v0, v1, :cond_2a

    .line 459
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->digit(C)Z

    move-result v0

    if-nez v0, :cond_39

    .line 467
    :cond_2a
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_38

    .line 468
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    .line 473
    :cond_38
    :goto_38
    return-void

    .line 462
    :cond_39
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->version:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->version:I

    .line 463
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->version:I

    iget-object v1, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->version:I

    .line 464
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->version:I

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->version:I

    .line 465
    iget v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    goto :goto_18

    .line 471
    :cond_57
    const/4 v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->version:I

    goto :goto_38
.end method


# virtual methods
.method protected init()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lorg/simpleframework/http/parse/CookieParser;->finished:Z

    .line 128
    iput-boolean v0, p0, Lorg/simpleframework/http/parse/CookieParser;->parsed:Z

    .line 129
    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->version:I

    .line 130
    iput v0, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    .line 131
    invoke-direct {p0}, Lorg/simpleframework/http/parse/CookieParser;->version()V

    .line 132
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/http/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lorg/simpleframework/http/parse/CookieParser$Sequence;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/CookieParser$Sequence;-><init>(Lorg/simpleframework/http/parse/CookieParser;Lorg/simpleframework/http/parse/CookieParser$1;)V

    return-object v0
.end method

.method protected parse()V
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/simpleframework/http/parse/CookieParser;->finished:Z

    if-nez v0, :cond_a

    .line 143
    invoke-direct {p0}, Lorg/simpleframework/http/parse/CookieParser;->cookie()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/http/parse/CookieParser;->parsed:Z

    .line 146
    :cond_a
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/simpleframework/http/parse/CookieParser;->init()V

    .line 224
    invoke-virtual {p0}, Lorg/simpleframework/http/parse/CookieParser;->parse()V

    .line 225
    return-void
.end method

.method protected skip(Ljava/lang/String;)Z
    .registers 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 170
    .local v4, "size":I
    iget v3, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    .line 171
    .local v3, "seek":I
    const/4 v2, 0x0

    .line 173
    .local v2, "read":I
    iget v6, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/2addr v6, v4

    iget v7, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-le v6, v7, :cond_1a

    .line 200
    :cond_f
    :goto_f
    return v5

    .line 184
    .local v0, "a":C
    .local v1, "b":C
    :cond_10
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->space(C)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 185
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_1a

    .line 176
    .end local v0    # "a":C
    .end local v1    # "b":C
    :cond_1a
    :goto_1a
    if-ge v2, v4, :cond_40

    .line 177
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .restart local v0    # "a":C
    iget-object v6, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    aget-char v1, v6, v3

    .line 180
    .restart local v1    # "b":C
    invoke-virtual {p0, v1}, Lorg/simpleframework/http/parse/CookieParser;->space(C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 181
    add-int/lit8 v3, v3, 0x1

    iget v6, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-lt v3, v6, :cond_1a

    goto :goto_f

    .line 189
    :cond_31
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/CookieParser;->toLower(C)C

    move-result v6

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/parse/CookieParser;->toLower(C)C

    move-result v7

    if-ne v6, v7, :cond_f

    .line 192
    add-int/lit8 v2, v2, 0x1

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 196
    .end local v0    # "a":C
    .end local v1    # "b":C
    :cond_40
    iput v3, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    :goto_42
    iget v5, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    iget v6, p0, Lorg/simpleframework/http/parse/CookieParser;->count:I

    if-ge v5, v6, :cond_54

    .line 197
    iget-object v5, p0, Lorg/simpleframework/http/parse/CookieParser;->buf:[C

    iget v6, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Lorg/simpleframework/http/parse/CookieParser;->space(C)Z

    move-result v5

    if-nez v5, :cond_56

    .line 200
    :cond_54
    const/4 v5, 0x1

    goto :goto_f

    .line 196
    :cond_56
    iget v5, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/simpleframework/http/parse/CookieParser;->off:I

    goto :goto_42
.end method
