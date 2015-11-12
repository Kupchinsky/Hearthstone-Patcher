.class Lorg/simpleframework/http/core/RequestConsumer;
.super Lorg/simpleframework/http/core/HeaderConsumer;
.source "RequestConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/http/core/RequestConsumer$Token;
    }
.end annotation


# instance fields
.field protected major:I

.field protected method:Ljava/lang/String;

.field protected minor:I

.field protected parser:Lorg/simpleframework/http/parse/AddressParser;

.field protected target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/simpleframework/http/core/HeaderConsumer;-><init>()V

    .line 74
    return-void
.end method

.method private major()V
    .registers 4

    .prologue
    .line 293
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->count:I

    if-ge v0, v1, :cond_12

    .line 294
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->array:[B

    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/RequestConsumer;->digit(B)Z

    move-result v0

    if-nez v0, :cond_13

    .line 302
    :cond_12
    return-void

    .line 297
    :cond_13
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->major:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->major:I

    .line 298
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->major:I

    iget-object v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->array:[B

    iget v2, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->major:I

    .line 299
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->major:I

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->major:I

    .line 300
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    goto :goto_0
.end method

.method private method()V
    .registers 4

    .prologue
    .line 259
    new-instance v0, Lorg/simpleframework/http/core/RequestConsumer$Token;

    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/simpleframework/http/core/RequestConsumer$Token;-><init>(Lorg/simpleframework/http/core/RequestConsumer;II)V

    .line 261
    .local v0, "token":Lorg/simpleframework/http/core/RequestConsumer$Token;
    :goto_8
    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    iget v2, p0, Lorg/simpleframework/http/core/RequestConsumer;->count:I

    if-ge v1, v2, :cond_20

    .line 262
    iget-object v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->array:[B

    iget v2, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/RequestConsumer;->space(B)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 263
    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    .line 269
    :cond_20
    invoke-virtual {v0}, Lorg/simpleframework/http/core/RequestConsumer$Token;->text()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->method:Ljava/lang/String;

    .line 270
    return-void

    .line 266
    :cond_27
    iget v1, v0, Lorg/simpleframework/http/core/RequestConsumer$Token;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/core/RequestConsumer$Token;->size:I

    .line 267
    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    goto :goto_8
.end method

.method private minor()V
    .registers 4

    .prologue
    .line 311
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->count:I

    if-ge v0, v1, :cond_12

    .line 312
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->array:[B

    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/RequestConsumer;->digit(B)Z

    move-result v0

    if-nez v0, :cond_13

    .line 320
    :cond_12
    return-void

    .line 315
    :cond_13
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->minor:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->minor:I

    .line 316
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->minor:I

    iget-object v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->array:[B

    iget v2, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->minor:I

    .line 317
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->minor:I

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->minor:I

    .line 318
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    goto :goto_0
.end method

.method private target()V
    .registers 4

    .prologue
    .line 239
    new-instance v0, Lorg/simpleframework/http/core/RequestConsumer$Token;

    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/simpleframework/http/core/RequestConsumer$Token;-><init>(Lorg/simpleframework/http/core/RequestConsumer;II)V

    .line 241
    .local v0, "token":Lorg/simpleframework/http/core/RequestConsumer$Token;
    :goto_8
    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    iget v2, p0, Lorg/simpleframework/http/core/RequestConsumer;->count:I

    if-ge v1, v2, :cond_20

    .line 242
    iget-object v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->array:[B

    iget v2, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/core/RequestConsumer;->space(B)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 243
    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    .line 249
    :cond_20
    invoke-virtual {v0}, Lorg/simpleframework/http/core/RequestConsumer$Token;->text()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->target:Ljava/lang/String;

    .line 250
    return-void

    .line 246
    :cond_27
    iget v1, v0, Lorg/simpleframework/http/core/RequestConsumer$Token;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/simpleframework/http/core/RequestConsumer$Token;->size:I

    .line 247
    iget v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    goto :goto_8
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Message;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected digit(B)Z
    .registers 3
    .param p1, "octet"    # B

    .prologue
    .line 332
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getAddress()Lorg/simpleframework/http/Address;
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->parser:Lorg/simpleframework/http/parse/AddressParser;

    if-nez v0, :cond_d

    .line 98
    new-instance v0, Lorg/simpleframework/http/parse/AddressParser;

    iget-object v1, p0, Lorg/simpleframework/http/core/RequestConsumer;->target:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/simpleframework/http/parse/AddressParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->parser:Lorg/simpleframework/http/parse/AddressParser;

    .line 100
    :cond_d
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->parser:Lorg/simpleframework/http/parse/AddressParser;

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Message;->getDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Message;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMajor()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->major:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getMinor()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->minor:I

    return v0
.end method

.method public getNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/Message;->getNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lorg/simpleframework/http/Path;
    .registers 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestConsumer;->getAddress()Lorg/simpleframework/http/Address;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/Address;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Lorg/simpleframework/http/Query;
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestConsumer;->getAddress()Lorg/simpleframework/http/Address;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/Address;->getQuery()Lorg/simpleframework/http/Query;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->target:Ljava/lang/String;

    return-object v0
.end method

.method protected process()V
    .registers 1

    .prologue
    .line 225
    invoke-direct {p0}, Lorg/simpleframework/http/core/RequestConsumer;->method()V

    .line 226
    invoke-direct {p0}, Lorg/simpleframework/http/core/RequestConsumer;->target()V

    .line 227
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestConsumer;->version()V

    .line 228
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestConsumer;->adjust()V

    .line 229
    invoke-virtual {p0}, Lorg/simpleframework/http/core/RequestConsumer;->headers()V

    .line 230
    return-void
.end method

.method protected space(B)Z
    .registers 3
    .param p1, "octet"    # B

    .prologue
    .line 345
    sparse-switch p1, :sswitch_data_8

    .line 350
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 348
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 345
    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method protected version()V
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    .line 281
    invoke-direct {p0}, Lorg/simpleframework/http/core/RequestConsumer;->major()V

    .line 282
    iget v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/core/RequestConsumer;->pos:I

    .line 283
    invoke-direct {p0}, Lorg/simpleframework/http/core/RequestConsumer;->minor()V

    .line 284
    return-void
.end method
