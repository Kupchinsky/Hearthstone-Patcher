.class public abstract Lorg/simpleframework/util/parse/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field protected buf:[C

.field protected count:I

.field protected off:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/simpleframework/util/parse/Parser;->buf:[C

    .line 57
    return-void
.end method


# virtual methods
.method protected digit(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 129
    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    const/16 v0, 0x30

    if-gt v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected ensureCapacity(I)V
    .registers 6
    .param p1, "min"    # I

    .prologue
    .line 92
    iget-object v3, p0, Lorg/simpleframework/util/parse/Parser;->buf:[C

    array-length v3, v3

    if-ge v3, p1, :cond_12

    .line 93
    iget-object v3, p0, Lorg/simpleframework/util/parse/Parser;->buf:[C

    array-length v3, v3

    mul-int/lit8 v1, v3, 0x2

    .line 94
    .local v1, "size":I
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 95
    .local v0, "max":I
    new-array v2, v0, [C

    .line 96
    .local v2, "temp":[C
    iput-object v2, p0, Lorg/simpleframework/util/parse/Parser;->buf:[C

    .line 98
    .end local v0    # "max":I
    .end local v1    # "size":I
    .end local v2    # "temp":[C
    :cond_12
    return-void
.end method

.method protected abstract init()V
.end method

.method protected abstract parse()V
.end method

.method public parse(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 74
    if-eqz p1, :cond_1d

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/parse/Parser;->ensureCapacity(I)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/util/parse/Parser;->count:I

    .line 77
    iget v0, p0, Lorg/simpleframework/util/parse/Parser;->count:I

    iget-object v1, p0, Lorg/simpleframework/util/parse/Parser;->buf:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 78
    invoke-virtual {p0}, Lorg/simpleframework/util/parse/Parser;->init()V

    .line 79
    invoke-virtual {p0}, Lorg/simpleframework/util/parse/Parser;->parse()V

    .line 81
    :cond_1d
    return-void
.end method

.method protected skip(Ljava/lang/String;)Z
    .registers 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 163
    .local v4, "size":I
    const/4 v2, 0x0

    .line 165
    .local v2, "read":I
    iget v6, p0, Lorg/simpleframework/util/parse/Parser;->off:I

    add-int/2addr v6, v4

    iget v7, p0, Lorg/simpleframework/util/parse/Parser;->count:I

    if-le v6, v7, :cond_31

    .line 177
    :goto_d
    return v5

    .local v0, "a":C
    .local v1, "b":C
    :cond_e
    move v3, v2

    .line 168
    .end local v0    # "a":C
    .end local v1    # "b":C
    .end local v2    # "read":I
    .local v3, "read":I
    :goto_f
    if-ge v3, v4, :cond_29

    .line 169
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 170
    .restart local v0    # "a":C
    iget-object v6, p0, Lorg/simpleframework/util/parse/Parser;->buf:[C

    iget v7, p0, Lorg/simpleframework/util/parse/Parser;->off:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "read":I
    .restart local v2    # "read":I
    add-int/2addr v7, v3

    aget-char v1, v6, v7

    .line 172
    .restart local v1    # "b":C
    invoke-virtual {p0, v0}, Lorg/simpleframework/util/parse/Parser;->toLower(C)C

    move-result v6

    invoke-virtual {p0, v1}, Lorg/simpleframework/util/parse/Parser;->toLower(C)C

    move-result v7

    if-eq v6, v7, :cond_e

    goto :goto_d

    .line 176
    .end local v0    # "a":C
    .end local v1    # "b":C
    .end local v2    # "read":I
    .restart local v3    # "read":I
    :cond_29
    iget v5, p0, Lorg/simpleframework/util/parse/Parser;->off:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/simpleframework/util/parse/Parser;->off:I

    .line 177
    const/4 v5, 0x1

    move v2, v3

    .end local v3    # "read":I
    .restart local v2    # "read":I
    goto :goto_d

    :cond_31
    move v3, v2

    .end local v2    # "read":I
    .restart local v3    # "read":I
    goto :goto_f
.end method

.method protected space(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 111
    sparse-switch p1, :sswitch_data_8

    .line 116
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 114
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 111
    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method protected toLower(C)C
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 143
    const/16 v0, 0x41

    if-lt p1, v0, :cond_d

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_d

    .line 144
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0x61

    int-to-char p1, v0

    .line 146
    .end local p1    # "c":C
    :cond_d
    return p1
.end method
