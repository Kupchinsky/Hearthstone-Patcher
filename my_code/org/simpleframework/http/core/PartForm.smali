.class Lorg/simpleframework/http/core/PartForm;
.super Ljava/lang/Object;
.source "PartForm.java"

# interfaces
.implements Lorg/simpleframework/http/Form;


# instance fields
.field private final body:Lorg/simpleframework/http/core/Body;

.field private final query:Lorg/simpleframework/http/Query;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Body;Lorg/simpleframework/http/Query;)V
    .registers 3
    .param p1, "body"    # Lorg/simpleframework/http/core/Body;
    .param p2, "query"    # Lorg/simpleframework/http/Query;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    .line 62
    iput-object p1, p0, Lorg/simpleframework/http/core/PartForm;->body:Lorg/simpleframework/http/core/Body;

    .line 63
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0}, Lorg/simpleframework/http/Query;->clear()V

    .line 299
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 145
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Query;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Query;->containsValue(Ljava/lang/Object;)Z

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
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0}, Lorg/simpleframework/http/Query;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/PartForm;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 185
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Query;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Query;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Query;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/Object;)F
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Query;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/Object;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Query;->getInteger(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->body:Lorg/simpleframework/http/core/Body;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Body;->getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;

    move-result-object v0

    return-object v0
.end method

.method public getParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/http/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->body:Lorg/simpleframework/http/core/Body;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Body;->getParts()Lorg/simpleframework/http/core/PartList;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0}, Lorg/simpleframework/http/Query;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0}, Lorg/simpleframework/http/Query;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/http/core/PartForm;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/http/Query;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Query;->putAll(Ljava/util/Map;)V

    .line 252
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/PartForm;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 265
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/Query;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0}, Lorg/simpleframework/http/Query;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lorg/simpleframework/http/core/PartForm;->query:Lorg/simpleframework/http/Query;

    invoke-interface {v0}, Lorg/simpleframework/http/Query;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
