.class Lorg/simpleframework/http/core/QueryForm;
.super Lorg/simpleframework/http/parse/QueryParser;
.source "QueryForm.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/Query;Lorg/simpleframework/http/Query;)V
    .registers 3
    .param p1, "query"    # Lorg/simpleframework/http/Query;
    .param p2, "post"    # Lorg/simpleframework/http/Query;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;-><init>()V

    .line 82
    invoke-direct {p0, p1}, Lorg/simpleframework/http/core/QueryForm;->add(Lorg/simpleframework/http/Query;)V

    .line 83
    invoke-direct {p0, p2}, Lorg/simpleframework/http/core/QueryForm;->add(Lorg/simpleframework/http/Query;)V

    .line 84
    return-void
.end method

.method public varargs constructor <init>(Lorg/simpleframework/http/Query;[Ljava/lang/String;)V
    .registers 3
    .param p1, "query"    # Lorg/simpleframework/http/Query;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;-><init>()V

    .line 68
    invoke-direct {p0, p1}, Lorg/simpleframework/http/core/QueryForm;->add(Lorg/simpleframework/http/Query;)V

    .line 69
    invoke-virtual {p0, p2}, Lorg/simpleframework/http/core/QueryForm;->parse([Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/simpleframework/http/parse/QueryParser;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/QueryForm;->parse([Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private add(Lorg/simpleframework/http/Query;)V
    .registers 8
    .param p1, "query"    # Lorg/simpleframework/http/Query;

    .prologue
    .line 136
    invoke-interface {p1}, Lorg/simpleframework/http/Query;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 138
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Lorg/simpleframework/http/Query;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 140
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, v2}, Lorg/simpleframework/http/Query;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "first":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 143
    iget-object v5, p0, Lorg/simpleframework/http/core/QueryForm;->all:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v5, p0, Lorg/simpleframework/http/core/QueryForm;->map:Ljava/util/Map;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 147
    .end local v0    # "first":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    return-void
.end method

.method private parse(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 118
    if-eqz p1, :cond_1a

    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/QueryForm;->ensureCapacity(I)V

    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/http/core/QueryForm;->count:I

    .line 121
    iget v0, p0, Lorg/simpleframework/http/core/QueryForm;->count:I

    iget-object v1, p0, Lorg/simpleframework/http/core/QueryForm;->buf:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 122
    invoke-virtual {p0}, Lorg/simpleframework/http/core/QueryForm;->parse()V

    .line 124
    :cond_1a
    return-void
.end method


# virtual methods
.method public parse([Ljava/lang/String;)V
    .registers 5
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v1, "text":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_29

    .line 98
    aget-object v2, p1, v0

    if-nez v2, :cond_10

    .line 97
    :cond_d
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 100
    :cond_10
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_23

    .line 103
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_23
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 107
    :cond_29
    invoke-direct {p0, v1}, Lorg/simpleframework/http/core/QueryForm;->parse(Ljava/lang/StringBuilder;)V

    .line 108
    return-void
.end method
