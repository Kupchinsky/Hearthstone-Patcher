.class Lorg/simpleframework/http/core/FormCreator;
.super Ljava/lang/Object;
.source "FormCreator.java"


# instance fields
.field private final body:Lorg/simpleframework/http/core/Body;

.field private final request:Lorg/simpleframework/http/Request;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/core/Entity;)V
    .registers 4
    .param p1, "request"    # Lorg/simpleframework/http/Request;
    .param p2, "entity"    # Lorg/simpleframework/http/core/Entity;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p2}, Lorg/simpleframework/http/core/Entity;->getBody()Lorg/simpleframework/http/core/Body;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/FormCreator;->body:Lorg/simpleframework/http/core/Body;

    .line 63
    iput-object p1, p0, Lorg/simpleframework/http/core/FormCreator;->request:Lorg/simpleframework/http/Request;

    .line 64
    return-void
.end method

.method private getParts()Lorg/simpleframework/http/core/PartList;
    .registers 3

    .prologue
    .line 131
    iget-object v1, p0, Lorg/simpleframework/http/core/FormCreator;->body:Lorg/simpleframework/http/core/Body;

    invoke-interface {v1}, Lorg/simpleframework/http/core/Body;->getParts()Lorg/simpleframework/http/core/PartList;

    move-result-object v0

    .line 133
    .local v0, "list":Lorg/simpleframework/http/core/PartList;
    invoke-virtual {v0}, Lorg/simpleframework/http/core/PartList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 136
    .end local v0    # "list":Lorg/simpleframework/http/core/PartList;
    :goto_c
    return-object v0

    .restart local v0    # "list":Lorg/simpleframework/http/core/PartList;
    :cond_d
    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/FormCreator;->getParts(Lorg/simpleframework/http/core/PartList;)Lorg/simpleframework/http/core/PartList;

    move-result-object v0

    goto :goto_c
.end method

.method private getParts(Lorg/simpleframework/http/core/PartList;)Lorg/simpleframework/http/core/PartList;
    .registers 6
    .param p1, "body"    # Lorg/simpleframework/http/core/PartList;

    .prologue
    .line 150
    new-instance v1, Lorg/simpleframework/http/core/PartList;

    invoke-direct {v1}, Lorg/simpleframework/http/core/PartList;-><init>()V

    .line 152
    .local v1, "list":Lorg/simpleframework/http/core/PartList;
    invoke-virtual {p1}, Lorg/simpleframework/http/core/PartList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/http/Part;

    .line 153
    .local v2, "part":Lorg/simpleframework/http/Part;
    invoke-interface {v2}, Lorg/simpleframework/http/Part;->isFile()Z

    move-result v3

    if-nez v3, :cond_9

    .line 154
    invoke-virtual {v1, v2}, Lorg/simpleframework/http/core/PartList;->add(Lorg/simpleframework/http/Part;)Z

    goto :goto_9

    .line 157
    .end local v2    # "part":Lorg/simpleframework/http/Part;
    :cond_1f
    return-object v1
.end method

.method private getQuery()Lorg/simpleframework/http/Query;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lorg/simpleframework/http/core/FormCreator;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v1}, Lorg/simpleframework/http/Request;->getQuery()Lorg/simpleframework/http/Query;

    move-result-object v0

    .line 98
    .local v0, "query":Lorg/simpleframework/http/Query;
    invoke-direct {p0}, Lorg/simpleframework/http/core/FormCreator;->isFormPost()Z

    move-result v1

    if-nez v1, :cond_d

    .line 101
    .end local v0    # "query":Lorg/simpleframework/http/Query;
    :goto_c
    return-object v0

    .restart local v0    # "query":Lorg/simpleframework/http/Query;
    :cond_d
    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/FormCreator;->getQuery(Lorg/simpleframework/http/Query;)Lorg/simpleframework/http/Query;

    move-result-object v0

    goto :goto_c
.end method

.method private getQuery(Lorg/simpleframework/http/Query;)Lorg/simpleframework/http/Query;
    .registers 6
    .param p1, "query"    # Lorg/simpleframework/http/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lorg/simpleframework/http/core/FormCreator;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v1}, Lorg/simpleframework/http/Request;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "body":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 119
    .end local p1    # "query":Lorg/simpleframework/http/Query;
    :goto_8
    return-object p1

    .restart local p1    # "query":Lorg/simpleframework/http/Query;
    :cond_9
    new-instance v1, Lorg/simpleframework/http/core/QueryForm;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, p1, v2}, Lorg/simpleframework/http/core/QueryForm;-><init>(Lorg/simpleframework/http/Query;[Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_8
.end method

.method private isFormPost()Z
    .registers 3

    .prologue
    .line 168
    iget-object v1, p0, Lorg/simpleframework/http/core/FormCreator;->request:Lorg/simpleframework/http/Request;

    invoke-interface {v1}, Lorg/simpleframework/http/Request;->getContentType()Lorg/simpleframework/http/ContentType;

    move-result-object v0

    .line 170
    .local v0, "type":Lorg/simpleframework/http/ContentType;
    if-nez v0, :cond_a

    .line 171
    const/4 v1, 0x0

    .line 173
    :goto_9
    return v1

    :cond_a
    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/FormCreator;->isFormPost(Lorg/simpleframework/http/ContentType;)Z

    move-result v1

    goto :goto_9
.end method

.method private isFormPost(Lorg/simpleframework/http/ContentType;)Z
    .registers 5
    .param p1, "type"    # Lorg/simpleframework/http/ContentType;

    .prologue
    .line 186
    invoke-interface {p1}, Lorg/simpleframework/http/ContentType;->getPrimary()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "primary":Ljava/lang/String;
    invoke-interface {p1}, Lorg/simpleframework/http/ContentType;->getSecondary()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "secondary":Ljava/lang/String;
    const-string v2, "application"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 190
    const/4 v2, 0x0

    .line 192
    :goto_11
    return v2

    :cond_12
    const-string v2, "x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_11
.end method


# virtual methods
.method public getInstance()Lorg/simpleframework/http/Form;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/simpleframework/http/core/FormCreator;->getParts()Lorg/simpleframework/http/core/PartList;

    move-result-object v2

    .line 76
    .local v2, "list":Lorg/simpleframework/http/core/PartList;
    invoke-direct {p0}, Lorg/simpleframework/http/core/FormCreator;->getQuery()Lorg/simpleframework/http/Query;

    move-result-object v0

    .line 78
    .local v0, "form":Lorg/simpleframework/http/Query;
    invoke-virtual {v2}, Lorg/simpleframework/http/core/PartList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/http/Part;

    .line 79
    .local v4, "part":Lorg/simpleframework/http/Part;
    invoke-interface {v4}, Lorg/simpleframework/http/Part;->getName()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v4}, Lorg/simpleframework/http/Part;->getContent()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v0, v3, v5}, Lorg/simpleframework/http/Query;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 84
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "part":Lorg/simpleframework/http/Part;
    .end local v5    # "value":Ljava/lang/String;
    :cond_24
    new-instance v6, Lorg/simpleframework/http/core/PartForm;

    iget-object v7, p0, Lorg/simpleframework/http/core/FormCreator;->body:Lorg/simpleframework/http/core/Body;

    invoke-direct {v6, v7, v0}, Lorg/simpleframework/http/core/PartForm;-><init>(Lorg/simpleframework/http/core/Body;Lorg/simpleframework/http/Query;)V

    return-object v6
.end method
