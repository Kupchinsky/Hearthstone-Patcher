.class public final Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/killer666/apache/commons/codec/language/bm/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phoneme"
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final languages:Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

.field private final phonemeText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme$1;

    invoke-direct {v0}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme$1;-><init>()V

    sput-object v0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)V
    .registers 3
    .param p1, "phonemeText"    # Ljava/lang/CharSequence;
    .param p2, "languages"    # Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    .line 109
    iput-object p2, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    .prologue
    .line 82
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    .registers 5
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    new-instance v0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v0, v1, v2}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    return-object v0
.end method

.method public getLanguages()Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    return-object v0
.end method

.method public getPhonemeText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhonemes()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public join(Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;)Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    .registers 6
    .param p1, "right"    # Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    .prologue
    .line 130
    new-instance v0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    iget-object v3, p1, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {v2, v3}, Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;->restrictTo(Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    return-object v0
.end method
