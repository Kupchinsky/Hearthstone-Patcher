.class public Lru/killer666/apache/commons/codec/language/bm/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;,
        Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeList;,
        Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;,
        Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "ALL"

.field public static final ALL_STRINGS_RMATCHER:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

.field private static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field private static final HASH_INCLUDE:Ljava/lang/String; = "#include"

.field private static final RULES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/NameType;",
            "Ljava/util/Map",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/RuleType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/Rule;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final lContext:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

.field private final pattern:Ljava/lang/String;

.field private final phoneme:Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;

.field private final rContext:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .prologue
    .line 159
    new-instance v15, Lru/killer666/apache/commons/codec/language/bm/Rule$1;

    invoke-direct {v15}, Lru/killer666/apache/commons/codec/language/bm/Rule$1;-><init>()V

    sput-object v15, Lru/killer666/apache/commons/codec/language/bm/Rule;->ALL_STRINGS_RMATCHER:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

    .line 172
    new-instance v15, Ljava/util/EnumMap;

    const-class v16, Lru/killer666/apache/commons/codec/language/bm/NameType;

    invoke-direct/range {v15 .. v16}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v15, Lru/killer666/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    .line 176
    invoke-static {}, Lru/killer666/apache/commons/codec/language/bm/NameType;->values()[Lru/killer666/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    .local v1, "arr$":[Lru/killer666/apache/commons/codec/language/bm/NameType;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v6, v4

    .end local v1    # "arr$":[Lru/killer666/apache/commons/codec/language/bm/NameType;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .local v6, "i$":I
    :goto_17
    if-ge v6, v8, :cond_b8

    aget-object v14, v1, v6

    .line 177
    .local v14, "s":Lru/killer666/apache/commons/codec/language/bm/NameType;
    new-instance v13, Ljava/util/EnumMap;

    const-class v15, Lru/killer666/apache/commons/codec/language/bm/RuleType;

    invoke-direct {v13, v15}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 180
    .local v13, "rts":Ljava/util/Map;, "Ljava/util/Map<Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lru/killer666/apache/commons/codec/language/bm/Rule;>;>;>;"
    invoke-static {}, Lru/killer666/apache/commons/codec/language/bm/RuleType;->values()[Lru/killer666/apache/commons/codec/language/bm/RuleType;

    move-result-object v2

    .local v2, "arr$":[Lru/killer666/apache/commons/codec/language/bm/RuleType;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v4, 0x0

    .end local v6    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .local v5, "i$":I
    :goto_29
    if-ge v5, v9, :cond_a8

    aget-object v12, v2, v5

    .line 181
    .local v12, "rt":Lru/killer666/apache/commons/codec/language/bm/RuleType;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v11, "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lru/killer666/apache/commons/codec/language/bm/Rule;>;>;"
    invoke-static {v14}, Lru/killer666/apache/commons/codec/language/bm/Languages;->getInstance(Lru/killer666/apache/commons/codec/language/bm/NameType;)Lru/killer666/apache/commons/codec/language/bm/Languages;

    move-result-object v10

    .line 184
    .local v10, "ls":Lru/killer666/apache/commons/codec/language/bm/Languages;
    invoke-virtual {v10}, Lru/killer666/apache/commons/codec/language/bm/Languages;->getLanguages()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 186
    .local v7, "l":Ljava/lang/String;
    :try_start_4a
    invoke-static {v14, v12, v7}, Lru/killer666/apache/commons/codec/language/bm/Rule;->createScanner(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v15

    invoke-static {v14, v12, v7}, Lru/killer666/apache/commons/codec/language/bm/Rule;->createResourceName(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lru/killer666/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v11, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/IllegalStateException; {:try_start_4a .. :try_end_59} :catch_5a

    goto :goto_3e

    .line 187
    :catch_5a
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Problem processing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v14, v12, v7}, Lru/killer666/apache/commons/codec/language/bm/Rule;->createResourceName(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 191
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "l":Ljava/lang/String;
    :cond_7a
    sget-object v15, Lru/killer666/apache/commons/codec/language/bm/RuleType;->RULES:Lru/killer666/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {v12, v15}, Lru/killer666/apache/commons/codec/language/bm/RuleType;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9d

    .line 192
    const-string v15, "common"

    const-string v16, "common"

    move-object/from16 v0, v16

    invoke-static {v14, v12, v0}, Lru/killer666/apache/commons/codec/language/bm/Rule;->createScanner(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v16

    const-string v17, "common"

    move-object/from16 v0, v17

    invoke-static {v14, v12, v0}, Lru/killer666/apache/commons/codec/language/bm/Rule;->createResourceName(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lru/killer666/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_9d
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v13, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    add-int/lit8 v4, v5, 0x1

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_29

    .line 198
    .end local v10    # "ls":Lru/killer666/apache/commons/codec/language/bm/Languages;
    .end local v11    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lru/killer666/apache/commons/codec/language/bm/Rule;>;>;"
    .end local v12    # "rt":Lru/killer666/apache/commons/codec/language/bm/RuleType;
    :cond_a8
    sget-object v15, Lru/killer666/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    add-int/lit8 v4, v6, 0x1

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v6, v4

    .end local v4    # "i$":I
    .restart local v6    # "i$":I
    goto/16 :goto_17

    .line 200
    .end local v2    # "arr$":[Lru/killer666/apache/commons/codec/language/bm/RuleType;
    .end local v9    # "len$":I
    .end local v13    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lru/killer666/apache/commons/codec/language/bm/Rule;>;>;>;"
    .end local v14    # "s":Lru/killer666/apache/commons/codec/language/bm/NameType;
    :cond_b8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;)V
    .registers 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "lContext"    # Ljava/lang/String;
    .param p3, "rContext"    # Ljava/lang/String;
    .param p4, "phoneme"    # Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/killer666/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

    move-result-object v0

    iput-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->lContext:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/killer666/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

    move-result-object v0

    iput-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->rContext:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

    .line 563
    iput-object p4, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->phoneme:Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    .line 564
    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 80
    invoke-static {p0, p1}, Lru/killer666/apache/commons/codec/language/bm/Rule;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 80
    invoke-static {p0, p1}, Lru/killer666/apache/commons/codec/language/bm/Rule;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;C)Z
    .registers 3
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # C

    .prologue
    .line 80
    invoke-static {p0, p1}, Lru/killer666/apache/commons/codec/language/bm/Rule;->contains(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/CharSequence;C)Z
    .registers 4
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "input"    # C

    .prologue
    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 204
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_f

    .line 205
    const/4 v1, 0x1

    .line 208
    :goto_e
    return v1

    .line 203
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private static createResourceName(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "nameType"    # Lru/killer666/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lru/killer666/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string v0, "ru/killer666/apache/commons/codec/language/bm/%s_%s_%s.txt"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lru/killer666/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lru/killer666/apache/commons/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createScanner(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 6
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v2, "ru/killer666/apache/commons/codec/language/bm/%s.txt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "resName":Ljava/lang/String;
    const-class v2, Lru/killer666/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 231
    .local v1, "rulesIS":Ljava/io/InputStream;
    if-nez v1, :cond_31

    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_31
    new-instance v2, Ljava/util/Scanner;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2
.end method

.method private static createScanner(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;
    .registers 8
    .param p0, "nameType"    # Lru/killer666/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lru/killer666/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p0, p1, p2}, Lru/killer666/apache/commons/codec/language/bm/Rule;->createResourceName(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "resName":Ljava/lang/String;
    const-class v2, Lru/killer666/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 220
    .local v1, "rulesIS":Ljava/io/InputStream;
    if-nez v1, :cond_29

    .line 221
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_29
    new-instance v2, Ljava/util/Scanner;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_c

    .line 247
    :cond_b
    :goto_b
    return v2

    .line 242
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_18
    if-ltz v1, :cond_29

    .line 243
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_b

    .line 242
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 247
    :cond_29
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public static getInstance(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p0, "nameType"    # Lru/killer666/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lru/killer666/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/killer666/apache/commons/codec/language/bm/NameType;",
            "Lru/killer666/apache/commons/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    sget-object v1, Lru/killer666/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 281
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Lru/killer666/apache/commons/codec/language/bm/Rule;>;"
    if-nez v0, :cond_36

    .line 282
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No rules found for %s, %s, %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lru/killer666/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lru/killer666/apache/commons/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_36
    return-object v0
.end method

.method public static getInstance(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;
    .registers 4
    .param p0, "nameType"    # Lru/killer666/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lru/killer666/apache/commons/codec/language/bm/RuleType;
    .param p2, "langs"    # Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/killer666/apache/commons/codec/language/bm/NameType;",
            "Lru/killer666/apache/commons/codec/language/bm/RuleType;",
            "Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p2}, Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;->getAny()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lru/killer666/apache/commons/codec/language/bm/Rule;->getInstance(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "any"

    invoke-static {p0, p1, v0}, Lru/killer666/apache/commons/codec/language/bm/Rule;->getInstance(Lru/killer666/apache/commons/codec/language/bm/NameType;Lru/killer666/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_e
.end method

.method private static parsePhoneme(Ljava/lang/String;)Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;
    .registers 7
    .param p0, "ph"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 291
    .local v3, "open":I
    if-ltz v3, :cond_42

    .line 292
    const-string v4, "]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 293
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Phoneme expression contains a \'[\' but does not end in \']\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 295
    :cond_18
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "before":Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "in":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    const-string v4, "[+]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 299
    .local v2, "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    invoke-static {v2}, Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    .line 301
    .end local v0    # "before":Ljava/lang/String;
    .end local v1    # "in":Ljava/lang/String;
    .end local v2    # "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_41
    return-object v4

    :cond_42
    new-instance v4, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    sget-object v5, Lru/killer666/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v4, p0, v5}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    goto :goto_41
.end method

.method private static parsePhonemeExpr(Ljava/lang/String;)Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .registers 10
    .param p0, "ph"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v6, "("

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 307
    const-string v6, ")"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 308
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Phoneme starts with \'(\' so must end with \')\'"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 311
    :cond_18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v5, "phs":Ljava/util/List;, "Ljava/util/List<Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "body":Ljava/lang/String;
    const-string v6, "[|]"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_30
    if-ge v2, v3, :cond_3e

    aget-object v4, v0, v2

    .line 314
    .local v4, "part":Ljava/lang/String;
    invoke-static {v4}, Lru/killer666/apache/commons/codec/language/bm/Rule;->parsePhoneme(Ljava/lang/String;)Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 316
    .end local v4    # "part":Ljava/lang/String;
    :cond_3e
    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4e

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 317
    :cond_4e
    new-instance v6, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    const-string v7, ""

    sget-object v8, Lru/killer666/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v6, v7, v8}, Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lru/killer666/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_5a
    new-instance v6, Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeList;

    invoke-direct {v6, v5}, Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeList;-><init>(Ljava/util/List;)V

    .line 322
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "phs":Ljava/util/List;, "Ljava/util/List<Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    :goto_5f
    return-object v6

    :cond_60
    invoke-static {p0}, Lru/killer666/apache/commons/codec/language/bm/Rule;->parsePhoneme(Ljava/lang/String;)Lru/killer666/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v6

    goto :goto_5f
.end method

.method private static parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/List;
    .registers 22
    .param p0, "scanner"    # Ljava/util/Scanner;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lru/killer666/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v15, "lines":Ljava/util/List;, "Ljava/util/List<Lru/killer666/apache/commons/codec/language/bm/Rule;>;"
    const/4 v10, 0x0

    .line 330
    .local v10, "currentLine":I
    const/4 v12, 0x0

    .line 331
    .local v12, "inMultilineComment":Z
    :cond_7
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v8

    if-eqz v8, :cond_15d

    .line 332
    add-int/lit8 v10, v10, 0x1

    .line 333
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v17

    .line 334
    .local v17, "rawLine":Ljava/lang/String;
    move-object/from16 v14, v17

    .line 336
    .local v14, "line":Ljava/lang/String;
    if-eqz v12, :cond_21

    .line 337
    const-string v8, "*/"

    invoke-virtual {v14, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 338
    const/4 v12, 0x0

    goto :goto_7

    .line 341
    :cond_21
    const-string v8, "/*"

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 342
    const/4 v12, 0x1

    goto :goto_7

    .line 345
    :cond_2b
    const-string v8, "//"

    invoke-virtual {v14, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 346
    .local v9, "cmtI":I
    if-ltz v9, :cond_38

    .line 347
    const/4 v8, 0x0

    invoke-virtual {v14, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 351
    :cond_38
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 353
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7

    .line 357
    const-string v8, "#include"

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 359
    const-string v8, "#include"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v14, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 360
    .local v13, "incl":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 361
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Malformed import statement \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 364
    :cond_8d
    invoke-static {v13}, Lru/killer666/apache/commons/codec/language/bm/Rule;->createScanner(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v8

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lru/killer666/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    .line 368
    .end local v13    # "incl":Ljava/lang/String;
    :cond_b9
    const-string v8, "\\s+"

    invoke-virtual {v14, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 369
    .local v16, "parts":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v8, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v8, v0, :cond_104

    .line 370
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Malformed rule statement split into "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " parts: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 374
    :cond_104
    const/4 v8, 0x0

    :try_start_105
    aget-object v8, v16, v8

    invoke-static {v8}, Lru/killer666/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "pat":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v16, v8

    invoke-static {v8}, Lru/killer666/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "lCon":Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v8, v16, v8

    invoke-static {v8}, Lru/killer666/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, "rCon":Ljava/lang/String;
    const/4 v8, 0x3

    aget-object v8, v16, v8

    invoke-static {v8}, Lru/killer666/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lru/killer666/apache/commons/codec/language/bm/Rule;->parsePhonemeExpr(Ljava/lang/String;)Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    move-result-object v6

    .line 378
    .local v6, "ph":Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    move v7, v10

    .line 379
    .local v7, "cLine":I
    new-instance v2, Lru/killer666/apache/commons/codec/language/bm/Rule$2;

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lru/killer666/apache/commons/codec/language/bm/Rule$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;ILjava/lang/String;)V

    .line 393
    .local v2, "r":Lru/killer666/apache/commons/codec/language/bm/Rule;
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_105 .. :try_end_12f} :catch_131

    goto/16 :goto_7

    .line 394
    .end local v2    # "r":Lru/killer666/apache/commons/codec/language/bm/Rule;
    .end local v3    # "pat":Ljava/lang/String;
    .end local v4    # "lCon":Ljava/lang/String;
    .end local v5    # "rCon":Ljava/lang/String;
    .end local v6    # "ph":Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .end local v7    # "cLine":I
    :catch_131
    move-exception v11

    .line 395
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem parsing line \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 404
    .end local v9    # "cmtI":I
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "parts":[Ljava/lang/String;
    .end local v17    # "rawLine":Ljava/lang/String;
    :cond_15d
    return-object v15
.end method

.method private static pattern(Ljava/lang/String;)Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;
    .registers 14
    .param p0, "regex"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 415
    const-string v10, "^"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 416
    .local v8, "startsWith":Z
    const-string v10, "$"

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 417
    .local v4, "endsWith":Z
    if-eqz v8, :cond_35

    move v12, v7

    :goto_11
    if-eqz v4, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_19
    invoke-virtual {p0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "content":Ljava/lang/String;
    const-string v10, "["

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 420
    .local v2, "boxes":Z
    if-nez v2, :cond_5f

    .line 421
    if-eqz v8, :cond_42

    if-eqz v4, :cond_42

    .line 423
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3c

    .line 425
    new-instance v10, Lru/killer666/apache/commons/codec/language/bm/Rule$3;

    invoke-direct {v10}, Lru/killer666/apache/commons/codec/language/bm/Rule$3;-><init>()V

    .line 504
    :goto_34
    return-object v10

    .end local v2    # "boxes":Z
    .end local v3    # "content":Ljava/lang/String;
    :cond_35
    move v12, v11

    .line 417
    goto :goto_11

    :cond_37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_19

    .line 432
    .restart local v2    # "boxes":Z
    .restart local v3    # "content":Ljava/lang/String;
    :cond_3c
    new-instance v10, Lru/killer666/apache/commons/codec/language/bm/Rule$4;

    invoke-direct {v10, v3}, Lru/killer666/apache/commons/codec/language/bm/Rule$4;-><init>(Ljava/lang/String;)V

    goto :goto_34

    .line 439
    :cond_42
    if-nez v8, :cond_46

    if-eqz v4, :cond_4f

    :cond_46
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4f

    .line 441
    sget-object v10, Lru/killer666/apache/commons/codec/language/bm/Rule;->ALL_STRINGS_RMATCHER:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

    goto :goto_34

    .line 442
    :cond_4f
    if-eqz v8, :cond_57

    .line 444
    new-instance v10, Lru/killer666/apache/commons/codec/language/bm/Rule$5;

    invoke-direct {v10, v3}, Lru/killer666/apache/commons/codec/language/bm/Rule$5;-><init>(Ljava/lang/String;)V

    goto :goto_34

    .line 450
    :cond_57
    if-eqz v4, :cond_ac

    .line 452
    new-instance v10, Lru/killer666/apache/commons/codec/language/bm/Rule$6;

    invoke-direct {v10, v3}, Lru/killer666/apache/commons/codec/language/bm/Rule$6;-><init>(Ljava/lang/String;)V

    goto :goto_34

    .line 460
    :cond_5f
    const-string v10, "["

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 461
    .local v9, "startsWithBox":Z
    const-string v10, "]"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 463
    .local v5, "endsWithBox":Z
    if-eqz v9, :cond_ac

    if-eqz v5, :cond_ac

    .line 464
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "boxContent":Ljava/lang/String;
    const-string v10, "["

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_ac

    .line 467
    const-string v10, "^"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 468
    .local v6, "negate":Z
    if-eqz v6, :cond_8d

    .line 469
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 471
    :cond_8d
    move-object v0, v1

    .line 472
    .local v0, "bContent":Ljava/lang/String;
    if-nez v6, :cond_9a

    .line 474
    .local v7, "shouldMatch":Z
    :goto_90
    if-eqz v8, :cond_9c

    if-eqz v4, :cond_9c

    .line 476
    new-instance v10, Lru/killer666/apache/commons/codec/language/bm/Rule$7;

    invoke-direct {v10, v0, v7}, Lru/killer666/apache/commons/codec/language/bm/Rule$7;-><init>(Ljava/lang/String;Z)V

    goto :goto_34

    .end local v7    # "shouldMatch":Z
    :cond_9a
    move v7, v11

    .line 472
    goto :goto_90

    .line 482
    .restart local v7    # "shouldMatch":Z
    :cond_9c
    if-eqz v8, :cond_a4

    .line 484
    new-instance v10, Lru/killer666/apache/commons/codec/language/bm/Rule$8;

    invoke-direct {v10, v0, v7}, Lru/killer666/apache/commons/codec/language/bm/Rule$8;-><init>(Ljava/lang/String;Z)V

    goto :goto_34

    .line 490
    :cond_a4
    if-eqz v4, :cond_ac

    .line 492
    new-instance v10, Lru/killer666/apache/commons/codec/language/bm/Rule$9;

    invoke-direct {v10, v0, v7}, Lru/killer666/apache/commons/codec/language/bm/Rule$9;-><init>(Ljava/lang/String;Z)V

    goto :goto_34

    .line 504
    .end local v0    # "bContent":Ljava/lang/String;
    .end local v1    # "boxContent":Ljava/lang/String;
    .end local v5    # "endsWithBox":Z
    .end local v6    # "negate":Z
    .end local v7    # "shouldMatch":Z
    .end local v9    # "startsWithBox":Z
    :cond_ac
    new-instance v10, Lru/killer666/apache/commons/codec/language/bm/Rule$10;

    invoke-direct {v10, p0}, Lru/killer666/apache/commons/codec/language/bm/Rule$10;-><init>(Ljava/lang/String;)V

    goto :goto_34
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 516
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v2, v3, :cond_c

    .line 524
    :cond_b
    :goto_b
    return v1

    .line 519
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 520
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_b

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 524
    :cond_20
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 528
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 532
    :cond_d
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 536
    :cond_20
    return-object p0
.end method


# virtual methods
.method public getLContext()Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;
    .registers 2

    .prologue
    .line 572
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->lContext:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneme()Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->phoneme:Lru/killer666/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    return-object v0
.end method

.method public getRContext()Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->rContext:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

    return-object v0
.end method

.method public patternAndContextMatches(Ljava/lang/CharSequence;I)Z
    .registers 8
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 614
    if-gez p2, :cond_b

    .line 615
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "Can not match pattern at negative indexes"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 618
    :cond_b
    iget-object v3, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 619
    .local v1, "patternLength":I
    add-int v0, p2, v1

    .line 621
    .local v0, "ipl":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_1a

    .line 633
    :cond_19
    :goto_19
    return v2

    .line 628
    :cond_1a
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 630
    iget-object v3, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->rContext:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;->isMatch(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 633
    iget-object v3, p0, Lru/killer666/apache/commons/codec/language/bm/Rule;->lContext:Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3, v2}, Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;->isMatch(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_19
.end method
