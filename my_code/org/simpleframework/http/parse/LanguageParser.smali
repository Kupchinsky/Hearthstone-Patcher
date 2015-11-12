.class public Lorg/simpleframework/http/parse/LanguageParser;
.super Lorg/simpleframework/http/parse/ListParser;
.source "LanguageParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/http/parse/ListParser",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ListParser;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/ListParser;-><init>(Ljava/lang/String;)V

    .line 64
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
    .line 76
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/ListParser;-><init>(Ljava/util/List;)V

    .line 77
    return-void
.end method

.method private country([CII)Ljava/lang/String;
    .registers 8
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 132
    move v0, p3

    .local v0, "size":I
    move v1, p2

    .line 134
    .end local p2    # "start":I
    .local v1, "start":I
    :goto_2
    if-ge v1, p3, :cond_18

    .line 135
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "start":I
    .restart local p2    # "start":I
    aget-char v2, p1, v1

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_14

    .line 136
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, p1, p2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 140
    :goto_13
    return-object v2

    .line 138
    :cond_14
    add-int/lit8 v0, v0, -0x1

    move v1, p2

    .end local p2    # "start":I
    .restart local v1    # "start":I
    goto :goto_2

    .line 140
    :cond_18
    const-string v2, ""

    move p2, v1

    .end local v1    # "start":I
    .restart local p2    # "start":I
    goto :goto_13
.end method

.method private language([CII)Ljava/lang/String;
    .registers 8
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 107
    move v0, p2

    .line 108
    .local v0, "mark":I
    const/4 v2, 0x0

    .line 110
    .local v2, "size":I
    :goto_2
    if-ge p2, p3, :cond_17

    .line 111
    aget-char v1, p1, p2

    .line 113
    .local v1, "next":C
    invoke-direct {p0, v1}, Lorg/simpleframework/http/parse/LanguageParser;->terminal(C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 114
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    .line 119
    .end local v1    # "next":C
    :goto_11
    return-object v3

    .line 116
    .restart local v1    # "next":C
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 117
    add-int/lit8 p2, p2, 0x1

    .line 118
    goto :goto_2

    .line 119
    .end local v1    # "next":C
    :cond_17
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_11
.end method

.method private terminal(C)Z
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 154
    const/16 v0, 0x20

    if-eq p1, v0, :cond_c

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3b

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method protected bridge synthetic create([CII)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # [C
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lorg/simpleframework/http/parse/LanguageParser;->create([CII)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected create([CII)Ljava/util/Locale;
    .registers 7
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/http/parse/LanguageParser;->language([CII)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "language":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/http/parse/LanguageParser;->country([CII)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "country":Ljava/lang/String;
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
