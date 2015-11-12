.class Lorg/simpleframework/http/core/DispositionParser;
.super Lorg/simpleframework/util/parse/Parser;
.source "DispositionParser.java"

# interfaces
.implements Lorg/simpleframework/http/core/Disposition;


# instance fields
.field private file:Lorg/simpleframework/util/parse/ParseBuffer;

.field private form:Z

.field private name:Lorg/simpleframework/util/parse/ParseBuffer;

.field private skip:Lorg/simpleframework/util/parse/ParseBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/simpleframework/util/parse/Parser;-><init>()V

    .line 61
    new-instance v0, Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->file:Lorg/simpleframework/util/parse/ParseBuffer;

    .line 62
    new-instance v0, Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->name:Lorg/simpleframework/util/parse/ParseBuffer;

    .line 63
    new-instance v0, Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {v0}, Lorg/simpleframework/util/parse/ParseBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->skip:Lorg/simpleframework/util/parse/ParseBuffer;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/simpleframework/http/core/DispositionParser;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/DispositionParser;->parse(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private name()V
    .registers 3

    .prologue
    .line 241
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->count:I

    if-ge v0, v1, :cond_10

    .line 242
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_11

    .line 247
    :cond_10
    return-void

    .line 245
    :cond_11
    iget v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    goto :goto_0
.end method

.method private pack()V
    .registers 12

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x22

    .line 159
    iget-object v7, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    const/4 v8, 0x0

    aget-char v2, v7, v8

    .line 160
    .local v2, "old":C
    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->count:I

    .line 161
    .local v1, "len":I
    const/4 v5, 0x0

    .line 162
    .local v5, "seek":I
    const/4 v3, 0x0

    .local v3, "pos":I
    move v4, v3

    .end local v3    # "pos":I
    .local v4, "pos":I
    move v6, v5

    .line 164
    .end local v5    # "seek":I
    .local v6, "seek":I
    :goto_f
    if-ge v6, v1, :cond_51

    .line 165
    iget-object v7, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "seek":I
    .restart local v5    # "seek":I
    aget-char v0, v7, v6

    .line 167
    .local v0, "ch":C
    if-ne v0, v9, :cond_3e

    if-eq v2, v10, :cond_3e

    .line 168
    iget-object v7, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aput-char v0, v7, v4

    :cond_21
    move v4, v3

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    move v6, v5

    .line 170
    .end local v5    # "seek":I
    .restart local v6    # "seek":I
    if-ge v6, v1, :cond_56

    .line 171
    iget-object v7, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    add-int/lit8 v8, v6, -0x1

    aget-char v2, v7, v8

    .line 172
    iget-object v7, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "seek":I
    .restart local v5    # "seek":I
    aget-char v0, v7, v6

    .line 173
    iget-object v7, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aput-char v0, v7, v4

    .line 175
    if-ne v0, v9, :cond_21

    if-eq v2, v10, :cond_21

    :goto_3b
    move v4, v3

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    move v6, v5

    .line 183
    .end local v5    # "seek":I
    .restart local v6    # "seek":I
    goto :goto_f

    .line 179
    .end local v6    # "seek":I
    .restart local v5    # "seek":I
    :cond_3e
    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->space(C)Z

    move-result v7

    if-nez v7, :cond_54

    .line 180
    iget-object v7, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    add-int/lit8 v8, v5, -0x1

    aget-char v2, v7, v8

    .line 181
    iget-object v7, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aput-char v2, v7, v4

    goto :goto_3b

    .line 184
    .end local v0    # "ch":C
    .end local v3    # "pos":I
    .end local v5    # "seek":I
    .restart local v4    # "pos":I
    .restart local v6    # "seek":I
    :cond_51
    iput v4, p0, Lorg/simpleframework/http/core/DispositionParser;->count:I

    .line 185
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
    .line 228
    invoke-direct {p0}, Lorg/simpleframework/http/core/DispositionParser;->name()V

    .line 229
    iget v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    .line 230
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->skip:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->value(Lorg/simpleframework/util/parse/ParseBuffer;)V

    .line 231
    return-void
.end method

.method private parameters()V
    .registers 2

    .prologue
    .line 208
    :goto_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 209
    const-string v0, "filename="

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 210
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->file:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->value(Lorg/simpleframework/util/parse/ParseBuffer;)V

    goto :goto_0

    .line 212
    :cond_16
    const-string v0, "name="

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 213
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->name:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->value(Lorg/simpleframework/util/parse/ParseBuffer;)V

    goto :goto_0

    .line 215
    :cond_24
    invoke-direct {p0}, Lorg/simpleframework/http/core/DispositionParser;->parameter()V

    goto :goto_0

    .line 219
    :cond_28
    return-void
.end method

.method private quote(C)Z
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 287
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

.method private type()V
    .registers 2

    .prologue
    .line 194
    const-string v0, "form-data"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/http/core/DispositionParser;->form:Z

    .line 199
    :cond_b
    :goto_b
    return-void

    .line 196
    :cond_c
    const-string v0, "file"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/simpleframework/http/core/DispositionParser;->form:Z

    goto :goto_b
.end method

.method private value(Lorg/simpleframework/util/parse/ParseBuffer;)V
    .registers 5
    .param p1, "value"    # Lorg/simpleframework/util/parse/ParseBuffer;

    .prologue
    .line 257
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->quote(C)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 258
    iget v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    :goto_12
    iget v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->count:I

    if-ge v0, v1, :cond_34

    .line 259
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/DispositionParser;->quote(C)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 260
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    add-int/lit8 v1, v1, -0x2

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_35

    .line 275
    :cond_34
    :goto_34
    return-void

    .line 264
    :cond_35
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    goto :goto_12

    .line 271
    :cond_43
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/simpleframework/util/parse/ParseBuffer;->append(C)V

    .line 272
    iget v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    .line 267
    :cond_52
    iget v0, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->count:I

    if-ge v0, v1, :cond_34

    .line 268
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_43

    goto :goto_34
.end method


# virtual methods
.method protected clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->file:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 133
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->name:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->clear()V

    .line 134
    iput-boolean v1, p0, Lorg/simpleframework/http/core/DispositionParser;->form:Z

    .line 135
    iput v1, p0, Lorg/simpleframework/http/core/DispositionParser;->off:I

    .line 136
    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->file:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->name:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lorg/simpleframework/http/core/DispositionParser;->count:I

    if-lez v0, :cond_7

    .line 121
    invoke-direct {p0}, Lorg/simpleframework/http/core/DispositionParser;->pack()V

    .line 123
    :cond_7
    invoke-virtual {p0}, Lorg/simpleframework/http/core/DispositionParser;->clear()V

    .line 124
    return-void
.end method

.method public isFile()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/simpleframework/http/core/DispositionParser;->form:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/simpleframework/http/core/DispositionParser;->file:Lorg/simpleframework/util/parse/ParseBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/util/parse/ParseBuffer;->length()I

    move-result v0

    if-lez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected parse()V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/simpleframework/http/core/DispositionParser;->type()V

    .line 146
    invoke-direct {p0}, Lorg/simpleframework/http/core/DispositionParser;->parameters()V

    .line 147
    return-void
.end method
