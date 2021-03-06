.class public Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;
.super Ljava/lang/Object;
.source "BeiderMorseEncoder.java"

# interfaces
.implements Lru/killer666/apache/commons/codec/StringEncoder;


# instance fields
.field private engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    sget-object v1, Lru/killer666/apache/commons/codec/language/bm/NameType;->GENERIC:Lru/killer666/apache/commons/codec/language/bm/NameType;

    sget-object v2, Lru/killer666/apache/commons/codec/language/bm/RuleType;->APPROX:Lru/killer666/apache/commons/codec/language/bm/RuleType;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Z)V

    iput-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/killer666/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 80
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 81
    new-instance v0, Lru/killer666/apache/commons/codec/EncoderException;

    const-string v1, "BeiderMorseEncoder encode parameter is not of type String"

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_c
    check-cast p1, Ljava/lang/String;

    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/killer666/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_4

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0, p1}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public getNameType()Lru/killer666/apache/commons/codec/language/bm/NameType;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lru/killer666/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    return-object v0
.end method

.method public getRuleType()Lru/killer666/apache/commons/codec/language/bm/RuleType;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lru/killer666/apache/commons/codec/language/bm/RuleType;

    move-result-object v0

    return-object v0
.end method

.method public isConcat()Z
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v0

    return v0
.end method

.method public setConcat(Z)V
    .registers 6
    .param p1, "concat"    # Z

    .prologue
    .line 129
    new-instance v0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lru/killer666/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lru/killer666/apache/commons/codec/language/bm/RuleType;

    move-result-object v2

    iget-object v3, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    .line 133
    return-void
.end method

.method public setMaxPhonemes(I)V
    .registers 6
    .param p1, "maxPhonemes"    # I

    .prologue
    .line 170
    new-instance v0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lru/killer666/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lru/killer666/apache/commons/codec/language/bm/RuleType;

    move-result-object v2

    iget-object v3, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    .line 174
    return-void
.end method

.method public setNameType(Lru/killer666/apache/commons/codec/language/bm/NameType;)V
    .registers 6
    .param p1, "nameType"    # Lru/killer666/apache/commons/codec/language/bm/NameType;

    .prologue
    .line 143
    new-instance v0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lru/killer666/apache/commons/codec/language/bm/RuleType;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v2

    iget-object v3, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    .line 147
    return-void
.end method

.method public setRuleType(Lru/killer666/apache/commons/codec/language/bm/RuleType;)V
    .registers 6
    .param p1, "ruleType"    # Lru/killer666/apache/commons/codec/language/bm/RuleType;

    .prologue
    .line 156
    new-instance v0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lru/killer666/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v2

    iget-object v3, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;

    .line 160
    return-void
.end method
