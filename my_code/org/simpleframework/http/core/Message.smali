.class Lorg/simpleframework/http/core/Message;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/http/core/Message$Entry;
    }
.end annotation


# instance fields
.field private final cookies:Lorg/simpleframework/util/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/KeyMap",
            "<",
            "Lorg/simpleframework/http/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private final names:Lorg/simpleframework/util/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/KeyMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parser:Lorg/simpleframework/http/parse/DateParser;

.field private final values:Lorg/simpleframework/util/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/KeyMap",
            "<",
            "Lorg/simpleframework/http/core/Message$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/simpleframework/util/KeyMap;

    invoke-direct {v0}, Lorg/simpleframework/util/KeyMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/Message;->cookies:Lorg/simpleframework/util/KeyMap;

    .line 69
    new-instance v0, Lorg/simpleframework/util/KeyMap;

    invoke-direct {v0}, Lorg/simpleframework/util/KeyMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/Message;->values:Lorg/simpleframework/util/KeyMap;

    .line 70
    new-instance v0, Lorg/simpleframework/util/KeyMap;

    invoke-direct {v0}, Lorg/simpleframework/util/KeyMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/Message;->names:Lorg/simpleframework/util/KeyMap;

    .line 71
    new-instance v0, Lorg/simpleframework/http/parse/DateParser;

    invoke-direct {v0}, Lorg/simpleframework/http/parse/DateParser;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/Message;->parser:Lorg/simpleframework/http/parse/DateParser;

    .line 72
    return-void
.end method

.method private getAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lorg/simpleframework/http/core/Message$Entry;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/http/core/Message$Entry;-><init>(Lorg/simpleframework/http/core/Message;Ljava/lang/String;)V

    .line 380
    .local v0, "entry":Lorg/simpleframework/http/core/Message$Entry;
    iget-object v2, p0, Lorg/simpleframework/http/core/Message;->names:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v2, p2}, Lorg/simpleframework/util/KeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_14

    .line 383
    iget-object v2, p0, Lorg/simpleframework/http/core/Message;->names:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v2, p2, p1}, Lorg/simpleframework/util/KeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_14
    iget-object v2, p0, Lorg/simpleframework/http/core/Message;->values:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v2, p2, v0}, Lorg/simpleframework/util/KeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual {v0}, Lorg/simpleframework/http/core/Message$Entry;->getValues()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 162
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/http/core/Message;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/Message;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_9

    .line 148
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_9
    return-void
.end method

.method public addDate(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 174
    iget-object v0, p0, Lorg/simpleframework/http/core/Message;->parser:Lorg/simpleframework/http/parse/DateParser;

    invoke-virtual {v0, p2, p3}, Lorg/simpleframework/http/parse/DateParser;->convert(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/http/core/Message;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/Message;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "token":Ljava/lang/String;
    iget-object v2, p0, Lorg/simpleframework/http/core/Message;->values:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v2, v1}, Lorg/simpleframework/util/KeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/http/core/Message$Entry;

    .line 361
    .local v0, "entry":Lorg/simpleframework/http/core/Message$Entry;
    if-nez v0, :cond_13

    .line 362
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/http/core/Message;->getAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 364
    :goto_12
    return-object v2

    :cond_13
    invoke-virtual {v0}, Lorg/simpleframework/http/core/Message$Entry;->getValues()Ljava/util/List;

    move-result-object v2

    goto :goto_12
.end method

.method public getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/simpleframework/http/core/Message;->cookies:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/KeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/http/Cookie;

    return-object v0
.end method

.method public getCookies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/http/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lorg/simpleframework/http/core/Message;->cookies:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v0}, Lorg/simpleframework/util/KeyMap;->getValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)J
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/Message;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 229
    const-wide/16 v2, -0x1

    .line 231
    :goto_8
    return-wide v2

    :cond_9
    iget-object v1, p0, Lorg/simpleframework/http/core/Message;->parser:Lorg/simpleframework/http/parse/DateParser;

    invoke-virtual {v1, v0}, Lorg/simpleframework/http/parse/DateParser;->convert(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_8
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/Message;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 210
    const/4 v1, -0x1

    .line 212
    :goto_7
    return v1

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_7
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
    .line 83
    iget-object v0, p0, Lorg/simpleframework/http/core/Message;->names:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v0}, Lorg/simpleframework/util/KeyMap;->getValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/Message;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 191
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getValues(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/Message;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/Message;->getValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/simpleframework/http/parse/ValueParser;

    invoke-direct {v0, p1}, Lorg/simpleframework/http/parse/ValueParser;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/simpleframework/http/parse/ValueParser;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "token":Ljava/lang/String;
    iget-object v2, p0, Lorg/simpleframework/http/core/Message;->names:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v2, v0}, Lorg/simpleframework/util/KeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 403
    iget-object v2, p0, Lorg/simpleframework/http/core/Message;->names:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v2, v0}, Lorg/simpleframework/util/KeyMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_13
    iget-object v2, p0, Lorg/simpleframework/http/core/Message;->values:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v2, v0}, Lorg/simpleframework/util/KeyMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 118
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/http/core/Message;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/Message;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_c

    .line 101
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_c
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 273
    new-instance v0, Lorg/simpleframework/http/Cookie;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/simpleframework/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/Message;->setCookie(Lorg/simpleframework/http/Cookie;)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public setCookie(Lorg/simpleframework/http/Cookie;)Lorg/simpleframework/http/Cookie;
    .registers 4
    .param p1, "cookie"    # Lorg/simpleframework/http/Cookie;

    .prologue
    .line 287
    invoke-virtual {p1}, Lorg/simpleframework/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 290
    iget-object v1, p0, Lorg/simpleframework/http/core/Message;->cookies:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v1, v0, p1}, Lorg/simpleframework/util/KeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_b
    return-object p1
.end method

.method public setDate(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 132
    iget-object v0, p0, Lorg/simpleframework/http/core/Message;->parser:Lorg/simpleframework/http/parse/DateParser;

    invoke-virtual {v0, p2, p3}, Lorg/simpleframework/http/parse/DateParser;->convert(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/http/core/Message;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method
