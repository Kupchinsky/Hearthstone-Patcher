.class final Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhonemeBuilder"
.end annotation


# instance fields
.field private final phonemes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "phonemes":Ljava/util/Set;, "Ljava/util/Set<Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public static empty(Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .registers 4
    .param p0, "languages"    # Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 69
    new-instance v0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    new-instance v1, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    const-string v2, ""

    invoke-direct {v1, v2, p0}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .registers 6
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 87
    .local v1, "newPhonemes":Ljava/util/Set;, "Ljava/util/Set<Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    iget-object v3, p0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 88
    .local v2, "ph":Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-virtual {v2, p1}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->append(Ljava/lang/CharSequence;)Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 91
    .end local v2    # "ph":Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    :cond_1f
    new-instance v3, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    invoke-direct {v3, v1}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-object v3
.end method

.method public apply(Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;I)Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .registers 10
    .param p1, "phonemeExpr"    # Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .param p2, "maxPhonemes"    # I

    .prologue
    .line 106
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    .local v4, "newPhonemes":Ljava/util/Set;, "Ljava/util/Set<Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    iget-object v6, p0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 109
    .local v3, "left":Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-interface {p1}, Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;->getPhonemes()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 110
    .local v5, "right":Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-virtual {v3, v5}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->join(Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;)Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v2

    .line 111
    .local v2, "join":Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-virtual {v2}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v6

    invoke-virtual {v6}, Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 112
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-ge v6, p2, :cond_43

    .line 113
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 121
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "join":Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    .end local v3    # "left":Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    .end local v5    # "right":Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    :cond_43
    new-instance v6, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    invoke-direct {v6, v4}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-object v6
.end method

.method public getPhonemes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    return-object v0
.end method

.method public makeString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 144
    .local v1, "ph":Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_22

    .line 145
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_22
    invoke-virtual {v1}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->getPhonemeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 150
    .end local v1    # "ph":Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
