.class public final Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;
.super Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/killer666/apache/commons/codec/language/bm/Languages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SomeLanguages"
.end annotation


# instance fields
.field private final languages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;-><init>()V

    .line 85
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lru/killer666/apache/commons/codec/language/bm/Languages$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Lru/killer666/apache/commons/codec/language/bm/Languages$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAny()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguages()Ljava/util/Set;
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
    .line 99
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isSingleton()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public restrictTo(Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;
    .registers 6
    .param p1, "other"    # Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 114
    sget-object v2, Lru/killer666/apache/commons/codec/language/bm/Languages;->NO_LANGUAGES:Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    if-ne p1, v2, :cond_6

    move-object p0, p1

    .line 125
    .end local p0    # "this":Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;
    :cond_5
    :goto_5
    return-object p0

    .line 116
    .restart local p0    # "this":Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;
    :cond_6
    sget-object v2, Lru/killer666/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    if-eq p1, v2, :cond_5

    move-object v1, p1

    .line 119
    check-cast v1, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;

    .line 120
    .local v1, "sl":Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;
    iget-object v2, v1, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    iget-object v3, p0, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 123
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v0, "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, v1, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 125
    invoke-static {v0}, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->from(Ljava/util/Set;)Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object p0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Languages("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/killer666/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
