.class public abstract Lorg/simpleframework/util/parse/MapParser;
.super Lorg/simpleframework/util/parse/Parser;
.source "MapParser.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/simpleframework/util/parse/Parser;",
        "Ljava/util/Map",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field protected all:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field protected map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 59
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    invoke-direct {p0}, Lorg/simpleframework/util/parse/Parser;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->all:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    .line 62
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 248
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->all:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 249
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 250
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 75
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 89
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TT;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->all:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 141
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/simpleframework/util/parse/MapParser;->all:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 169
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "first":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1a

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lorg/simpleframework/util/parse/MapParser;->all:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_1a
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    if-nez v0, :cond_26

    .line 178
    iget-object v2, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 180
    :goto_25
    return-object v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TT;+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<+TT;+TT;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 195
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<+TT;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 196
    .local v1, "key":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 198
    .local v3, "value":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_8

    .line 199
    invoke-virtual {p0, v1, v3}, Lorg/simpleframework/util/parse/MapParser;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 202
    .end local v1    # "key":Ljava/lang/Object;, "TT;"
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_1c
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 226
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lorg/simpleframework/util/parse/MapParser;, "Lorg/simpleframework/util/parse/MapParser<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/parse/MapParser;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
