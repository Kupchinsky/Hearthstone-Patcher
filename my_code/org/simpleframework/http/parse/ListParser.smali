.class public abstract Lorg/simpleframework/http/parse/ListParser;
.super Lorg/simpleframework/util/parse/Parser;
.source "ListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/http/parse/ListParser$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/simpleframework/util/parse/Parser;"
    }
.end annotation


# instance fields
.field private build:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private order:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lorg/simpleframework/http/parse/ListParser",
            "<TT;>.Entry;>;"
        }
    .end annotation
.end field

.field private pos:I

.field private qvalue:J

.field private text:[C


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 100
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    invoke-direct {p0}, Lorg/simpleframework/util/parse/Parser;-><init>()V

    .line 101
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/parse/ListParser;->order:Ljava/util/PriorityQueue;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/parse/ListParser;->list:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/simpleframework/http/parse/ListParser;->text:[C

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 116
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ListParser;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/ListParser;->parse(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ListParser;-><init>()V

    .line 131
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/ListParser;->parse(Ljava/util/List;)V

    .line 132
    return-void
.end method

.method private build()V
    .registers 4

    .prologue
    .line 173
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    :goto_0
    iget-object v2, p0, Lorg/simpleframework/http/parse/ListParser;->order:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 174
    iget-object v2, p0, Lorg/simpleframework/http/parse/ListParser;->order:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/http/parse/ListParser$Entry;

    .line 175
    .local v0, "entry":Lorg/simpleframework/http/parse/ListParser$Entry;, "Lorg/simpleframework/http/parse/ListParser<TT;>.Entry;"
    invoke-virtual {v0}, Lorg/simpleframework/http/parse/ListParser$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/simpleframework/http/parse/ListParser;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local v0    # "entry":Lorg/simpleframework/http/parse/ListParser$Entry;, "Lorg/simpleframework/http/parse/ListParser<TT;>.Entry;"
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1a
    return-void
.end method

.method private clear()V
    .registers 3

    .prologue
    .line 231
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/simpleframework/http/parse/ListParser;->qvalue:J

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/parse/ListParser;->pos:I

    .line 233
    return-void
.end method

.method private qvalue()V
    .registers 7

    .prologue
    .line 351
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    const-string v1, "q="

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/parse/ListParser;->skip(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, "digit":C
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/simpleframework/http/parse/ListParser;->qvalue:J

    :goto_d
    iget v1, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->count:I

    if-ge v1, v2, :cond_30

    .line 355
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    aget-char v1, v1, v2

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_24

    .line 356
    iget v1, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    goto :goto_d

    .line 359
    :cond_24
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/parse/ListParser;->digit(C)Z

    move-result v1

    if-nez v1, :cond_31

    .line 369
    .end local v0    # "digit":C
    :cond_30
    return-void

    .line 362
    .restart local v0    # "digit":C
    :cond_31
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    aget-char v0, v1, v2

    .line 363
    add-int/lit8 v1, v0, -0x30

    int-to-char v0, v1

    .line 364
    iget-wide v2, p0, Lorg/simpleframework/http/parse/ListParser;->qvalue:J

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/simpleframework/http/parse/ListParser;->qvalue:J

    .line 365
    iget-wide v2, p0, Lorg/simpleframework/http/parse/ListParser;->qvalue:J

    const/4 v1, 0x4

    shl-long/2addr v2, v1

    iput-wide v2, p0, Lorg/simpleframework/http/parse/ListParser;->qvalue:J

    .line 366
    iget v1, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    goto :goto_d
.end method

.method private save()V
    .registers 6

    .prologue
    .line 300
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    iget v0, p0, Lorg/simpleframework/http/parse/ListParser;->pos:I

    .line 301
    .local v0, "size":I
    const/4 v1, 0x0

    .line 303
    .local v1, "start":I
    :goto_3
    if-lez v0, :cond_11

    .line 304
    iget-object v3, p0, Lorg/simpleframework/http/parse/ListParser;->text:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/simpleframework/http/parse/ListParser;->space(C)Z

    move-result v3

    if-nez v3, :cond_24

    .line 309
    :cond_11
    :goto_11
    iget v3, p0, Lorg/simpleframework/http/parse/ListParser;->pos:I

    if-ge v1, v3, :cond_27

    .line 310
    iget-object v3, p0, Lorg/simpleframework/http/parse/ListParser;->text:[C

    aget-char v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/simpleframework/http/parse/ListParser;->space(C)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 311
    add-int/lit8 v1, v1, 0x1

    .line 312
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 307
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 317
    :cond_27
    if-lez v0, :cond_34

    .line 318
    iget-object v3, p0, Lorg/simpleframework/http/parse/ListParser;->text:[C

    invoke-virtual {p0, v3, v1, v0}, Lorg/simpleframework/http/parse/ListParser;->create([CII)Ljava/lang/Object;

    move-result-object v2

    .line 320
    .local v2, "value":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_34

    .line 321
    invoke-direct {p0, v2}, Lorg/simpleframework/http/parse/ListParser;->save(Ljava/lang/Object;)V

    .line 324
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_34
    return-void
.end method

.method private save(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/simpleframework/http/parse/ListParser;->order:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v6

    .line 337
    .local v6, "size":I
    iget-wide v0, p0, Lorg/simpleframework/http/parse/ListParser;->qvalue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 338
    iget-object v0, p0, Lorg/simpleframework/http/parse/ListParser;->order:Ljava/util/PriorityQueue;

    new-instance v1, Lorg/simpleframework/http/parse/ListParser$Entry;

    iget-wide v4, p0, Lorg/simpleframework/http/parse/ListParser;->qvalue:J

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/simpleframework/http/parse/ListParser$Entry;-><init>(Lorg/simpleframework/http/parse/ListParser;Ljava/lang/Object;JI)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 340
    :cond_1c
    return-void
.end method

.method private value()V
    .registers 7

    .prologue
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    const/16 v5, 0x22

    .line 257
    :goto_2
    iget v1, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->count:I

    if-ge v1, v2, :cond_52

    .line 258
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_66

    .line 259
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->text:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/ListParser;->pos:I

    iget-object v3, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    .line 260
    :goto_26
    iget v1, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->count:I

    if-ge v1, v2, :cond_46

    .line 261
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_53

    .line 262
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v2, v2, -0x2

    aget-char v1, v1, v2

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_53

    .line 282
    :cond_46
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_a0

    .line 287
    :cond_52
    return-void

    .line 265
    :cond_53
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->text:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/ListParser;->pos:I

    iget-object v3, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    goto :goto_26

    .line 267
    :cond_66
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_46

    .line 268
    iget v0, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    .local v0, "seek":I
    :goto_74
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->count:I

    if-ge v1, v2, :cond_46

    .line 269
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    aget-char v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/parse/ListParser;->space(C)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 270
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    aget-char v1, v1, v0

    const/16 v2, 0x71

    if-ne v1, v2, :cond_46

    .line 271
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_46

    .line 272
    iput v0, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    .line 273
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ListParser;->qvalue()V

    goto/16 :goto_2

    .line 279
    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 285
    .end local v0    # "seek":I
    :cond_a0
    iget-object v1, p0, Lorg/simpleframework/http/parse/ListParser;->text:[C

    iget v2, p0, Lorg/simpleframework/http/parse/ListParser;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/http/parse/ListParser;->pos:I

    iget-object v3, p0, Lorg/simpleframework/http/parse/ListParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    goto/16 :goto_2
.end method


# virtual methods
.method protected abstract create([CII)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)TT;"
        }
    .end annotation
.end method

.method protected init()V
    .registers 3

    .prologue
    .line 209
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/http/parse/ListParser;->text:[C

    array-length v0, v0

    iget v1, p0, Lorg/simpleframework/http/parse/ListParser;->count:I

    if-ge v0, v1, :cond_d

    .line 210
    iget v0, p0, Lorg/simpleframework/http/parse/ListParser;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/simpleframework/http/parse/ListParser;->text:[C

    .line 212
    :cond_d
    iget-boolean v0, p0, Lorg/simpleframework/http/parse/ListParser;->build:Z

    if-nez v0, :cond_16

    .line 213
    iget-object v0, p0, Lorg/simpleframework/http/parse/ListParser;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    iput v0, p0, Lorg/simpleframework/http/parse/ListParser;->pos:I

    .line 216
    iget-object v0, p0, Lorg/simpleframework/http/parse/ListParser;->order:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 217
    return-void
.end method

.method public list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/http/parse/ListParser;->list:Ljava/util/List;

    return-object v0
.end method

.method protected parse()V
    .registers 3

    .prologue
    .line 188
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/parse/ListParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/ListParser;->count:I

    if-ge v0, v1, :cond_10

    .line 189
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ListParser;->clear()V

    .line 190
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ListParser;->value()V

    .line 191
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ListParser;->save()V

    goto :goto_0

    .line 193
    :cond_10
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ListParser;->build()V

    .line 194
    return-void
.end method

.method public parse(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser;, "Lorg/simpleframework/http/parse/ListParser<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/simpleframework/http/parse/ListParser;->parse(Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/simpleframework/http/parse/ListParser;->build:Z

    goto :goto_4

    .line 150
    .end local v1    # "value":Ljava/lang/String;
    :cond_17
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/simpleframework/http/parse/ListParser;->build:Z

    .line 151
    return-void
.end method
