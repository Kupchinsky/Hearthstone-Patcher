.class public Lorg/simpleframework/http/parse/AddressParser;
.super Lorg/simpleframework/util/parse/Parser;
.source "AddressParser.java"

# interfaces
.implements Lorg/simpleframework/http/Address;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/http/parse/AddressParser$1;,
        Lorg/simpleframework/http/parse/AddressParser$Token;,
        Lorg/simpleframework/http/parse/AddressParser$ParameterMap;
    }
.end annotation


# instance fields
.field private data:Lorg/simpleframework/http/Query;

.field private domain:Lorg/simpleframework/http/parse/AddressParser$Token;

.field private name:Lorg/simpleframework/http/parse/AddressParser$Token;

.field private normal:Lorg/simpleframework/http/Path;

.field private param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

.field private path:Lorg/simpleframework/http/parse/AddressParser$Token;

.field private port:I

.field private query:Lorg/simpleframework/http/parse/AddressParser$Token;

.field private scheme:Lorg/simpleframework/http/parse/AddressParser$Token;

.field private value:Lorg/simpleframework/http/parse/AddressParser$Token;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Lorg/simpleframework/util/parse/Parser;-><init>()V

    .line 127
    new-instance v0, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;-><init>(Lorg/simpleframework/http/parse/AddressParser;Lorg/simpleframework/http/parse/AddressParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    .line 128
    new-instance v0, Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/AddressParser$Token;-><init>(Lorg/simpleframework/http/parse/AddressParser;Lorg/simpleframework/http/parse/AddressParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->path:Lorg/simpleframework/http/parse/AddressParser$Token;

    .line 129
    new-instance v0, Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/AddressParser$Token;-><init>(Lorg/simpleframework/http/parse/AddressParser;Lorg/simpleframework/http/parse/AddressParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->domain:Lorg/simpleframework/http/parse/AddressParser$Token;

    .line 130
    new-instance v0, Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/AddressParser$Token;-><init>(Lorg/simpleframework/http/parse/AddressParser;Lorg/simpleframework/http/parse/AddressParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->query:Lorg/simpleframework/http/parse/AddressParser$Token;

    .line 131
    new-instance v0, Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/AddressParser$Token;-><init>(Lorg/simpleframework/http/parse/AddressParser;Lorg/simpleframework/http/parse/AddressParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->scheme:Lorg/simpleframework/http/parse/AddressParser$Token;

    .line 132
    new-instance v0, Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/AddressParser$Token;-><init>(Lorg/simpleframework/http/parse/AddressParser;Lorg/simpleframework/http/parse/AddressParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->name:Lorg/simpleframework/http/parse/AddressParser$Token;

    .line 133
    new-instance v0, Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/http/parse/AddressParser$Token;-><init>(Lorg/simpleframework/http/parse/AddressParser;Lorg/simpleframework/http/parse/AddressParser$1;)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->value:Lorg/simpleframework/http/parse/AddressParser$Token;

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;-><init>()V

    .line 147
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->parse(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private absoluteURI()V
    .registers 1

    .prologue
    .line 484
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->scheme()V

    .line 485
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->netPath()V

    .line 486
    return-void
.end method

.method static synthetic access$200(Lorg/simpleframework/http/parse/AddressParser;)Lorg/simpleframework/http/parse/AddressParser$ParameterMap;
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/AddressParser;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/simpleframework/http/parse/AddressParser;)[C
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/http/parse/AddressParser;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    return-object v0
.end method

.method private alpha(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 1086
    const/16 v0, 0x7a

    if-gt p1, v0, :cond_8

    const/16 v0, 0x61

    if-le v0, p1, :cond_10

    :cond_8
    const/16 v0, 0x5a

    if-gt p1, v0, :cond_12

    const/16 v0, 0x41

    if-gt v0, p1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private alphanum(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->digit(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->alpha(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private binary(I)Z
    .registers 5
    .param p1, "peek"    # I

    .prologue
    .line 834
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    if-ge v0, v1, :cond_18

    .line 835
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 836
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->bits(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 838
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private bits(I)C
    .registers 3
    .param p1, "data"    # I

    .prologue
    .line 956
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

    .line 999
    const/4 v0, 0x0

    .line 1001
    .local v0, "hex":I
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->hex(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0, p2}, Lorg/simpleframework/http/parse/AddressParser;->hex(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1002
    if-gt v2, p1, :cond_1a

    if-gt p1, v3, :cond_1a

    .line 1003
    add-int/lit8 v1, p1, 0x20

    int-to-char p1, v1

    .line 1005
    :cond_1a
    if-lt p1, v4, :cond_33

    .line 1006
    add-int/lit8 v1, p1, -0x61

    add-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    .line 1010
    :goto_21
    shl-int/lit8 v0, v0, 0x4

    .line 1012
    if-gt v2, p2, :cond_2a

    if-gt p2, v3, :cond_2a

    .line 1013
    add-int/lit8 v1, p2, 0x20

    int-to-char p2, v1

    .line 1015
    :cond_2a
    if-lt p2, v4, :cond_37

    .line 1016
    add-int/lit8 v1, p2, -0x61

    add-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    :goto_31
    move v1, v0

    .line 1022
    :goto_32
    return v1

    .line 1008
    :cond_33
    add-int/lit8 v1, p1, -0x30

    xor-int/2addr v0, v1

    goto :goto_21

    .line 1018
    :cond_37
    add-int/lit8 v1, p2, -0x30

    xor-int/2addr v0, v1

    goto :goto_31

    .line 1022
    :cond_3b
    const/4 v1, -0x1

    goto :goto_32
.end method

.method private domain()V
    .registers 4

    .prologue
    .line 620
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 622
    .local v0, "mark":I
    :goto_2
    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    iget v2, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    if-ge v1, v2, :cond_18

    .line 623
    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_24

    .line 628
    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    goto :goto_2

    .line 631
    :cond_18
    :sswitch_18
    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->domain:Lorg/simpleframework/http/parse/AddressParser$Token;

    iget v2, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    sub-int/2addr v2, v0

    iput v2, v1, Lorg/simpleframework/http/parse/AddressParser$Token;->len:I

    .line 632
    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->domain:Lorg/simpleframework/http/parse/AddressParser$Token;

    iput v0, v1, Lorg/simpleframework/http/parse/AddressParser$Token;->off:I

    .line 633
    return-void

    .line 623
    :sswitch_data_24
    .sparse-switch
        0x2f -> :sswitch_18
        0x3a -> :sswitch_18
        0x3f -> :sswitch_18
    .end sparse-switch
.end method

.method private escape()V
    .registers 3

    .prologue
    .line 814
    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    invoke-direct {p0, v1}, Lorg/simpleframework/http/parse/AddressParser;->peek(I)I

    move-result v0

    .line 816
    .local v0, "peek":I
    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/AddressParser;->unicode(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 817
    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/AddressParser;->binary(I)Z

    .line 819
    :cond_f
    return-void
.end method

.method private hex(C)Z
    .registers 4
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 1037
    const/16 v1, 0x30

    if-lt p1, v1, :cond_a

    const/16 v1, 0x39

    if-gt p1, v1, :cond_a

    .line 1044
    :cond_9
    :goto_9
    return v0

    .line 1039
    :cond_a
    const/16 v1, 0x61

    if-lt p1, v1, :cond_12

    const/16 v1, 0x66

    if-le p1, v1, :cond_9

    .line 1041
    :cond_12
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1a

    const/16 v1, 0x46

    if-le p1, v1, :cond_9

    .line 1044
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private insert()V
    .registers 3

    .prologue
    .line 764
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->value:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 765
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->name:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 766
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->name:Lorg/simpleframework/http/parse/AddressParser$Token;

    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->value:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/AddressParser;->insert(Lorg/simpleframework/http/parse/AddressParser$Token;Lorg/simpleframework/http/parse/AddressParser$Token;)V

    .line 768
    :cond_17
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->name:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->clear()V

    .line 769
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->value:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->clear()V

    .line 770
    return-void
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 797
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    return-void
.end method

.method private insert(Lorg/simpleframework/http/parse/AddressParser$Token;Lorg/simpleframework/http/parse/AddressParser$Token;)V
    .registers 5
    .param p1, "name"    # Lorg/simpleframework/http/parse/AddressParser$Token;
    .param p2, "value"    # Lorg/simpleframework/http/parse/AddressParser$Token;

    .prologue
    .line 783
    invoke-virtual {p1}, Lorg/simpleframework/http/parse/AddressParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/simpleframework/http/parse/AddressParser$Token;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/AddressParser;->insert(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method private mark(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 1101
    sparse-switch p1, :sswitch_data_8

    .line 1107
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1105
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1101
    nop

    :sswitch_data_8
    .sparse-switch
        0x21 -> :sswitch_5
        0x27 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2d -> :sswitch_5
        0x2e -> :sswitch_5
        0x5f -> :sswitch_5
        0x7e -> :sswitch_5
    .end sparse-switch
.end method

.method private name()V
    .registers 8

    .prologue
    .line 714
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 715
    .local v0, "mark":I
    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 717
    .local v1, "pos":I
    :goto_4
    iget v3, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    if-ge v3, v4, :cond_33

    .line 718
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x25

    if-ne v3, v4, :cond_29

    .line 719
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->escape()V

    .line 725
    :cond_17
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    iget-object v4, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v5, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v4, v4, v5

    aput-char v4, v3, v1

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_4

    .line 720
    :cond_29
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3e

    .line 727
    :cond_33
    :goto_33
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->name:Lorg/simpleframework/http/parse/AddressParser$Token;

    sub-int v4, v1, v0

    iput v4, v3, Lorg/simpleframework/http/parse/AddressParser$Token;->len:I

    .line 728
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->name:Lorg/simpleframework/http/parse/AddressParser$Token;

    iput v0, v3, Lorg/simpleframework/http/parse/AddressParser$Token;->off:I

    .line 729
    return-void

    .line 722
    :cond_3e
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/AddressParser;->pchar(C)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_33
.end method

.method private netPath()V
    .registers 2

    .prologue
    .line 567
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->domain()V

    .line 568
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/AddressParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 569
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->port()V

    .line 571
    :cond_e
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->relativeURI()V

    .line 572
    return-void
.end method

.method private param()V
    .registers 2

    .prologue
    .line 699
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->name()V

    .line 700
    const-string v0, "="

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/AddressParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 701
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->value()V

    .line 703
    :cond_e
    return-void
.end method

.method private parsePath(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 382
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    .line 383
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/AddressParser;->ensureCapacity(I)V

    .line 384
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->normal:Lorg/simpleframework/http/Path;

    .line 386
    iput v2, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 387
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->path()V

    .line 388
    return-void
.end method

.method private path()V
    .registers 8

    .prologue
    .line 649
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 650
    .local v0, "mark":I
    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 652
    .local v1, "pos":I
    :cond_4
    :goto_4
    const-string v3, "/"

    invoke-virtual {p0, v3}, Lorg/simpleframework/http/parse/AddressParser;->skip(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 653
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    const/16 v4, 0x2f

    aput-char v4, v3, v1

    move v1, v2

    .line 655
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    :goto_15
    iget v3, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    if-ge v3, v4, :cond_4

    .line 656
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_34

    .line 657
    :goto_25
    const-string v3, ";"

    invoke-virtual {p0, v3}, Lorg/simpleframework/http/parse/AddressParser;->skip(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 658
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->param()V

    .line 659
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->insert()V

    goto :goto_25

    .line 663
    :cond_34
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x25

    if-ne v3, v4, :cond_53

    .line 664
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->escape()V

    .line 668
    :cond_41
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    iget-object v4, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v5, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v4, v4, v5

    aput-char v4, v3, v1

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_15

    .line 665
    :cond_53
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/AddressParser;->pchar(C)Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_4

    .line 671
    :cond_60
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->path:Lorg/simpleframework/http/parse/AddressParser$Token;

    sub-int v4, v1, v0

    iput v4, v3, Lorg/simpleframework/http/parse/AddressParser$Token;->len:I

    .line 672
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->path:Lorg/simpleframework/http/parse/AddressParser$Token;

    iput v0, v3, Lorg/simpleframework/http/parse/AddressParser$Token;->off:I

    .line 673
    return-void
.end method

.method private pchar(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 1125
    sparse-switch p1, :sswitch_data_a

    .line 1131
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->unreserved(C)Z

    move-result v0

    :goto_7
    return v0

    .line 1129
    :sswitch_8
    const/4 v0, 0x1

    goto :goto_7

    .line 1125
    :sswitch_data_a
    .sparse-switch
        0x24 -> :sswitch_8
        0x26 -> :sswitch_8
        0x2b -> :sswitch_8
        0x2c -> :sswitch_8
        0x3a -> :sswitch_8
        0x3d -> :sswitch_8
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method private peek(I)I
    .registers 7
    .param p1, "pos"    # I

    .prologue
    const/4 v2, -0x1

    .line 973
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    aget-char v3, v3, p1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_f

    .line 974
    iget v3, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    add-int/lit8 v4, p1, 0x2

    if-gt v3, v4, :cond_10

    .line 982
    :cond_f
    :goto_f
    return v2

    .line 977
    :cond_10
    iget-object v2, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v0, v2, v3

    .line 978
    .local v0, "high":C
    iget-object v2, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    add-int/lit8 v3, p1, 0x2

    aget-char v1, v2, v3

    .line 980
    .local v1, "low":C
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/AddressParser;->convert(CC)I

    move-result v2

    goto :goto_f
.end method

.method private port()V
    .registers 4

    .prologue
    .line 596
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    if-ge v0, v1, :cond_12

    .line 597
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/AddressParser;->digit(C)Z

    move-result v0

    if-nez v0, :cond_13

    .line 605
    :cond_12
    return-void

    .line 600
    :cond_13
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    .line 601
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    .line 602
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    .line 603
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    goto :goto_0
.end method

.method private query()V
    .registers 4

    .prologue
    .line 685
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->query:Lorg/simpleframework/http/parse/AddressParser$Token;

    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    iget v2, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/simpleframework/http/parse/AddressParser$Token;->len:I

    .line 686
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->query:Lorg/simpleframework/http/parse/AddressParser$Token;

    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    iput v1, v0, Lorg/simpleframework/http/parse/AddressParser$Token;->off:I

    .line 687
    return-void
.end method

.method private relativeURI()V
    .registers 2

    .prologue
    .line 582
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->path()V

    .line 583
    const-string v0, "?"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/AddressParser;->skip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 584
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->query()V

    .line 586
    :cond_e
    return-void
.end method

.method private reserved(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 1146
    sparse-switch p1, :sswitch_data_8

    .line 1153
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1151
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1146
    nop

    :sswitch_data_8
    .sparse-switch
        0x24 -> :sswitch_5
        0x26 -> :sswitch_5
        0x2b -> :sswitch_5
        0x2c -> :sswitch_5
        0x2f -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x3f -> :sswitch_5
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method private scheme()V
    .registers 7

    .prologue
    .line 505
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 506
    .local v0, "mark":I
    iget v2, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 508
    .local v2, "pos":I
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/AddressParser;->alpha(C)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 509
    :goto_10
    iget v3, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    if-ge v3, v4, :cond_38

    .line 510
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v1, v3, v4

    .line 512
    .local v1, "next":C
    invoke-direct {p0, v1}, Lorg/simpleframework/http/parse/AddressParser;->schemeChar(C)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 514
    :cond_29
    const/16 v3, 0x3a

    if-ne v1, v3, :cond_43

    .line 515
    const-string v3, "//"

    invoke-virtual {p0, v3}, Lorg/simpleframework/http/parse/AddressParser;->skip(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 516
    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 517
    move v2, v0

    .line 526
    .end local v1    # "next":C
    :cond_38
    :goto_38
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->scheme:Lorg/simpleframework/http/parse/AddressParser$Token;

    sub-int v4, v2, v0

    iput v4, v3, Lorg/simpleframework/http/parse/AddressParser$Token;->len:I

    .line 527
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->scheme:Lorg/simpleframework/http/parse/AddressParser$Token;

    iput v0, v3, Lorg/simpleframework/http/parse/AddressParser$Token;->off:I

    .line 529
    :cond_42
    return-void

    .line 521
    .restart local v1    # "next":C
    :cond_43
    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 522
    move v2, v0

    .line 523
    goto :goto_38
.end method

.method private schemeChar(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 544
    packed-switch p1, :pswitch_data_a

    .line 549
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->alphanum(C)Z

    move-result v0

    :goto_7
    return v0

    .line 547
    :pswitch_8
    const/4 v0, 0x1

    goto :goto_7

    .line 544
    :pswitch_data_a
    .packed-switch 0x2b
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private unicode(I)Z
    .registers 5
    .param p1, "peek"    # I

    .prologue
    const/4 v0, 0x0

    .line 860
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_a

    .line 861
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/http/parse/AddressParser;->unicode(II)Z

    move-result v0

    .line 878
    :cond_9
    :goto_9
    return v0

    .line 863
    :cond_a
    and-int/lit16 v1, p1, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_18

    .line 864
    and-int/lit8 v0, p1, 0x1f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/AddressParser;->unicode(II)Z

    move-result v0

    goto :goto_9

    .line 866
    :cond_18
    and-int/lit16 v1, p1, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_26

    .line 867
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/AddressParser;->unicode(II)Z

    move-result v0

    goto :goto_9

    .line 869
    :cond_26
    and-int/lit16 v1, p1, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_34

    .line 870
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/AddressParser;->unicode(II)Z

    move-result v0

    goto :goto_9

    .line 872
    :cond_34
    and-int/lit16 v1, p1, 0xfc

    const/16 v2, 0xf8

    if-ne v1, v2, :cond_42

    .line 873
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/AddressParser;->unicode(II)Z

    move-result v0

    goto :goto_9

    .line 875
    :cond_42
    and-int/lit16 v1, p1, 0xfe

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_9

    .line 876
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/http/parse/AddressParser;->unicode(II)Z

    move-result v0

    goto :goto_9
.end method

.method private unicode(II)Z
    .registers 5
    .param p1, "peek"    # I
    .param p2, "more"    # I

    .prologue
    .line 899
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    if-lt v0, v1, :cond_b

    .line 900
    const/4 v0, 0x0

    .line 902
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/http/parse/AddressParser;->unicode(III)Z

    move-result v0

    goto :goto_a
.end method

.method private unicode(III)Z
    .registers 10
    .param p1, "peek"    # I
    .param p2, "more"    # I
    .param p3, "pos"    # I

    .prologue
    .line 924
    move v1, p2

    .end local p2    # "more":I
    .local v1, "more":I
    :goto_1
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "more":I
    .restart local p2    # "more":I
    if-lez v1, :cond_24

    .line 925
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    aget-char v3, v3, p3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_22

    .line 926
    add-int/lit8 v2, p3, 0x3

    .line 927
    .local v2, "next":I
    invoke-direct {p0, v2}, Lorg/simpleframework/http/parse/AddressParser;->peek(I)I

    move-result v0

    .line 929
    .local v0, "hex":I
    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_22

    .line 930
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v4, v0, 0x3f

    or-int p1, v3, v4

    .line 931
    move p3, v2

    move v1, p2

    .line 932
    .end local p2    # "more":I
    .restart local v1    # "more":I
    goto :goto_1

    .line 935
    .end local v0    # "hex":I
    .end local v1    # "more":I
    .end local v2    # "next":I
    .restart local p2    # "more":I
    :cond_22
    const/4 v3, 0x0

    .line 941
    :goto_23
    return v3

    .line 937
    :cond_24
    add-int/lit8 v3, p3, 0x2

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    if-ge v3, v4, :cond_38

    .line 938
    add-int/lit8 v3, p3, 0x2

    iput v3, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 939
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->bits(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 941
    :cond_38
    const/4 v3, 0x1

    goto :goto_23
.end method

.method private unreserved(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 1058
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->mark(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->alphanum(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private value()V
    .registers 8

    .prologue
    .line 739
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 740
    .local v0, "mark":I
    iget v1, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 742
    .local v1, "pos":I
    :goto_4
    iget v3, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    if-ge v3, v4, :cond_35

    .line 743
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v3, v3, v4

    const/16 v4, 0x25

    if-ne v3, v4, :cond_29

    .line 744
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->escape()V

    .line 748
    :cond_17
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    iget-object v4, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v5, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v4, v4, v5

    aput-char v4, v3, v1

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_4

    .line 745
    :cond_29
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    iget v4, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/AddressParser;->pchar(C)Z

    move-result v3

    if-nez v3, :cond_17

    .line 750
    :cond_35
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->value:Lorg/simpleframework/http/parse/AddressParser$Token;

    sub-int v4, v1, v0

    iput v4, v3, Lorg/simpleframework/http/parse/AddressParser$Token;->len:I

    .line 751
    iget-object v3, p0, Lorg/simpleframework/http/parse/AddressParser;->value:Lorg/simpleframework/http/parse/AddressParser$Token;

    iput v0, v3, Lorg/simpleframework/http/parse/AddressParser$Token;->off:I

    .line 752
    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->domain:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lorg/simpleframework/util/KeyMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/util/KeyMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    return-object v0
.end method

.method public getPath()Lorg/simpleframework/http/Path;
    .registers 4

    .prologue
    .line 199
    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->path:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v1}, Lorg/simpleframework/http/parse/AddressParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 202
    new-instance v1, Lorg/simpleframework/http/parse/PathParser;

    const-string v2, "/"

    invoke-direct {v1, v2}, Lorg/simpleframework/http/parse/PathParser;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->normal:Lorg/simpleframework/http/Path;

    .line 204
    :cond_11
    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->normal:Lorg/simpleframework/http/Path;

    if-nez v1, :cond_1c

    .line 205
    new-instance v1, Lorg/simpleframework/http/parse/PathParser;

    invoke-direct {v1, v0}, Lorg/simpleframework/http/parse/PathParser;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->normal:Lorg/simpleframework/http/Path;

    .line 207
    :cond_1c
    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->normal:Lorg/simpleframework/http/Path;

    return-object v1
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    if-gtz v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    goto :goto_5
.end method

.method public getQuery()Lorg/simpleframework/http/Query;
    .registers 3

    .prologue
    .line 228
    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->query:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v1}, Lorg/simpleframework/http/parse/AddressParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 231
    new-instance v1, Lorg/simpleframework/http/parse/QueryParser;

    invoke-direct {v1}, Lorg/simpleframework/http/parse/QueryParser;-><init>()V

    iput-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->data:Lorg/simpleframework/http/Query;

    .line 233
    :cond_f
    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->data:Lorg/simpleframework/http/Query;

    if-nez v1, :cond_1a

    .line 234
    new-instance v1, Lorg/simpleframework/http/parse/QueryParser;

    invoke-direct {v1, v0}, Lorg/simpleframework/http/parse/QueryParser;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->data:Lorg/simpleframework/http/Query;

    .line 236
    :cond_1a
    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->data:Lorg/simpleframework/http/Query;

    return-object v1
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->scheme:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;->clear()V

    .line 455
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->domain:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->clear()V

    .line 456
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->path:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->clear()V

    .line 457
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->query:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->clear()V

    .line 458
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->scheme:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->clear()V

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser;->off:I

    .line 460
    iput-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->normal:Lorg/simpleframework/http/Path;

    .line 461
    iput-object v1, p0, Lorg/simpleframework/http/parse/AddressParser;->data:Lorg/simpleframework/http/Query;

    .line 462
    return-void
.end method

.method protected parse()V
    .registers 3

    .prologue
    .line 434
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->count:I

    if-lez v0, :cond_10

    .line 435
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->buf:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_11

    .line 436
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->relativeURI()V

    .line 441
    :cond_10
    :goto_10
    return-void

    .line 438
    :cond_11
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser;->absoluteURI()V

    goto :goto_10
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->domain:Lorg/simpleframework/http/parse/AddressParser$Token;

    iput-object p1, v0, Lorg/simpleframework/http/parse/AddressParser$Token;->value:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 342
    :cond_1b
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;->clear()V

    .line 343
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->path:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->clear()V

    .line 344
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser;->parsePath(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public setPath(Lorg/simpleframework/http/Path;)V
    .registers 3
    .param p1, "path"    # Lorg/simpleframework/http/Path;

    .prologue
    .line 362
    if-eqz p1, :cond_5

    .line 363
    iput-object p1, p0, Lorg/simpleframework/http/parse/AddressParser;->normal:Lorg/simpleframework/http/Path;

    .line 367
    :goto_4
    return-void

    .line 365
    :cond_5
    const-string v0, "/"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/AddressParser;->setPath(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setPort(I)V
    .registers 2
    .param p1, "port"    # I

    .prologue
    .line 321
    iput p1, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    .line 322
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->query:Lorg/simpleframework/http/parse/AddressParser$Token;

    iput-object p1, v0, Lorg/simpleframework/http/parse/AddressParser$Token;->value:Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->data:Lorg/simpleframework/http/Query;

    .line 405
    return-void
.end method

.method public setQuery(Lorg/simpleframework/http/Query;)V
    .registers 3
    .param p1, "query"    # Lorg/simpleframework/http/Query;

    .prologue
    .line 419
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->value:Lorg/simpleframework/http/parse/AddressParser$Token;

    if-eqz v0, :cond_7

    .line 420
    iput-object p1, p0, Lorg/simpleframework/http/parse/AddressParser;->data:Lorg/simpleframework/http/Query;

    .line 424
    :goto_6
    return-void

    .line 422
    :cond_7
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/AddressParser;->setQuery(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->scheme:Lorg/simpleframework/http/parse/AddressParser$Token;

    iput-object p1, v0, Lorg/simpleframework/http/parse/AddressParser$Token;->value:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->scheme:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->length()I

    move-result v0

    if-lez v0, :cond_9a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/simpleframework/http/parse/AddressParser;->scheme:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->domain:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->length()I

    move-result v0

    if-lez v0, :cond_a0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/simpleframework/http/parse/AddressParser;->domain:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    if-lez v0, :cond_9d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lorg/simpleframework/http/parse/AddressParser;->port:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/simpleframework/http/parse/AddressParser;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;->size()I

    move-result v0

    if-lez v0, :cond_a3

    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    :goto_70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser;->query:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/AddressParser$Token;->length()I

    move-result v0

    if-lez v0, :cond_a6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/http/parse/AddressParser;->query:Lorg/simpleframework/http/parse/AddressParser$Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9a
    const-string v0, ""

    goto :goto_22

    :cond_9d
    const-string v0, ""

    goto :goto_52

    :cond_a0
    const-string v0, ""

    goto :goto_5a

    :cond_a3
    const-string v0, ""

    goto :goto_70

    :cond_a6
    const-string v0, ""

    goto :goto_91
.end method
