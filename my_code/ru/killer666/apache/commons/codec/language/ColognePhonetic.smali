.class public Lru/killer666/apache/commons/codec/language/ColognePhonetic;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"

# interfaces
.implements Lru/killer666/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;,
        Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;,
        Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
    }
.end annotation


# static fields
.field private static final AEIJOUY:[C

.field private static final AHKLOQRUX:[C

.field private static final AHOUKQX:[C

.field private static final CKQ:[C

.field private static final GKQ:[C

.field private static final PREPROCESS_MAP:[[C

.field private static final SCZ:[C

.field private static final SZ:[C

.field private static final TDX:[C

.field private static final WFPV:[C


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 183
    new-array v0, v2, [C

    fill-array-data v0, :array_68

    sput-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->AEIJOUY:[C

    .line 184
    new-array v0, v4, [C

    fill-array-data v0, :array_74

    sput-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->SCZ:[C

    .line 185
    new-array v0, v1, [C

    fill-array-data v0, :array_7c

    sput-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->WFPV:[C

    .line 186
    new-array v0, v4, [C

    fill-array-data v0, :array_84

    sput-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->GKQ:[C

    .line 187
    new-array v0, v4, [C

    fill-array-data v0, :array_8c

    sput-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->CKQ:[C

    .line 188
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_94

    sput-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->AHKLOQRUX:[C

    .line 189
    new-array v0, v3, [C

    fill-array-data v0, :array_a2

    sput-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->SZ:[C

    .line 190
    new-array v0, v2, [C

    fill-array-data v0, :array_a8

    sput-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->AHOUKQX:[C

    .line 191
    new-array v0, v4, [C

    fill-array-data v0, :array_b4

    sput-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->TDX:[C

    .line 287
    new-array v0, v1, [[C

    const/4 v1, 0x0

    new-array v2, v3, [C

    fill-array-data v2, :array_bc

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_c2

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_c8

    aput-object v1, v0, v3

    new-array v1, v3, [C

    fill-array-data v1, :array_ce

    aput-object v1, v0, v4

    sput-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    return-void

    .line 183
    :array_68
    .array-data 2
        0x41s
        0x45s
        0x49s
        0x4as
        0x4fs
        0x55s
        0x59s
    .end array-data

    .line 184
    nop

    :array_74
    .array-data 2
        0x53s
        0x43s
        0x5as
    .end array-data

    .line 185
    nop

    :array_7c
    .array-data 2
        0x57s
        0x46s
        0x50s
        0x56s
    .end array-data

    .line 186
    :array_84
    .array-data 2
        0x47s
        0x4bs
        0x51s
    .end array-data

    .line 187
    nop

    :array_8c
    .array-data 2
        0x43s
        0x4bs
        0x51s
    .end array-data

    .line 188
    nop

    :array_94
    .array-data 2
        0x41s
        0x48s
        0x4bs
        0x4cs
        0x4fs
        0x51s
        0x52s
        0x55s
        0x58s
    .end array-data

    .line 189
    nop

    :array_a2
    .array-data 2
        0x53s
        0x5as
    .end array-data

    .line 190
    :array_a8
    .array-data 2
        0x41s
        0x48s
        0x4fs
        0x55s
        0x4bs
        0x51s
        0x58s
    .end array-data

    .line 191
    nop

    :array_b4
    .array-data 2
        0x54s
        0x44s
        0x58s
    .end array-data

    .line 287
    nop

    :array_bc
    .array-data 2
        0xc4s
        0x41s
    .end array-data

    :array_c2
    .array-data 2
        0xdcs
        0x55s
    .end array-data

    :array_c8
    .array-data 2
        0xd6s
        0x4fs
    .end array-data

    :array_ce
    .array-data 2
        0xdfs
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method private static arrayContains([CC)Z
    .registers 7
    .param p0, "arr"    # [C
    .param p1, "key"    # C

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_e

    aget-char v1, v0, v2

    .line 299
    .local v1, "element":C
    if-ne v1, p1, :cond_b

    .line 300
    const/4 v4, 0x1

    .line 303
    .end local v1    # "element":C
    :goto_a
    return v4

    .line 298
    .restart local v1    # "element":C
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 303
    .end local v1    # "element":C
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method private preprocess(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 427
    sget-object v6, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 431
    .local v1, "chrs":[C
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_b
    array-length v6, v1

    if-ge v4, v6, :cond_2e

    .line 432
    aget-char v6, v1, v4

    const/16 v7, 0x5a

    if-le v6, v7, :cond_28

    .line 433
    sget-object v0, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    .local v0, "arr$":[[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_18
    if-ge v3, v5, :cond_28

    aget-object v2, v0, v3

    .line 434
    .local v2, "element":[C
    aget-char v6, v1, v4

    const/4 v7, 0x0

    aget-char v7, v2, v7

    if-ne v6, v7, :cond_2b

    .line 435
    const/4 v6, 0x1

    aget-char v6, v2, v6

    aput-char v6, v1, v4

    .line 431
    .end local v0    # "arr$":[[C
    .end local v2    # "element":[C
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 433
    .restart local v0    # "arr$":[[C
    .restart local v2    # "element":[C
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 441
    .end local v0    # "arr$":[[C
    .end local v2    # "element":[C
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_2e
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method


# virtual methods
.method public colognePhonetic(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x5a

    const/16 v12, 0x53

    const/16 v11, 0x48

    const/16 v10, 0x30

    const/16 v9, 0x2f

    .line 318
    if-nez p1, :cond_e

    .line 319
    const/4 v8, 0x0

    .line 399
    :goto_d
    return-object v8

    .line 322
    :cond_e
    invoke-direct {p0, p1}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->preprocess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 324
    new-instance v6, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v6, p0, v8}, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;-><init>(Lru/killer666/apache/commons/codec/language/ColognePhonetic;I)V

    .line 325
    .local v6, "output":Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;
    new-instance v2, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;-><init>(Lru/killer666/apache/commons/codec/language/ColognePhonetic;[C)V

    .line 329
    .local v2, "input":Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;
    const/16 v3, 0x2d

    .line 330
    .local v3, "lastChar":C
    const/16 v4, 0x2f

    .line 334
    .local v4, "lastCode":C
    invoke-virtual {v2}, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v7

    .line 336
    .local v7, "rightLength":I
    :cond_2e
    :goto_2e
    if-lez v7, :cond_118

    .line 337
    invoke-virtual {v2}, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->removeNext()C

    move-result v0

    .line 339
    .local v0, "chr":C
    invoke-virtual {v2}, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5e

    .line 340
    invoke-virtual {v2}, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v5

    .line 345
    .local v5, "nextChar":C
    :goto_3e
    sget-object v8, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->AEIJOUY:[C

    invoke-static {v8, v0}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 346
    const/16 v1, 0x30

    .line 392
    .local v1, "code":C
    :goto_48
    const/16 v8, 0x2d

    if-eq v1, v8, :cond_5b

    if-eq v4, v1, :cond_52

    if-ne v1, v10, :cond_58

    if-eq v4, v9, :cond_58

    :cond_52
    if-lt v1, v10, :cond_58

    const/16 v8, 0x38

    if-le v1, v8, :cond_5b

    .line 393
    :cond_58
    invoke-virtual {v6, v1}, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->addRight(C)V

    .line 396
    :cond_5b
    move v3, v0

    .line 397
    move v4, v1

    goto :goto_2e

    .line 342
    .end local v1    # "code":C
    .end local v5    # "nextChar":C
    :cond_5e
    const/16 v5, 0x2d

    .restart local v5    # "nextChar":C
    goto :goto_3e

    .line 347
    :cond_61
    if-eq v0, v11, :cond_69

    const/16 v8, 0x41

    if-lt v0, v8, :cond_69

    if-le v0, v13, :cond_6e

    .line 348
    :cond_69
    if-eq v4, v9, :cond_2e

    .line 351
    const/16 v1, 0x2d

    .restart local v1    # "code":C
    goto :goto_48

    .line 352
    .end local v1    # "code":C
    :cond_6e
    const/16 v8, 0x42

    if-eq v0, v8, :cond_78

    const/16 v8, 0x50

    if-ne v0, v8, :cond_7b

    if-eq v5, v11, :cond_7b

    .line 353
    :cond_78
    const/16 v1, 0x31

    .restart local v1    # "code":C
    goto :goto_48

    .line 354
    .end local v1    # "code":C
    :cond_7b
    const/16 v8, 0x44

    if-eq v0, v8, :cond_83

    const/16 v8, 0x54

    if-ne v0, v8, :cond_8e

    :cond_83
    sget-object v8, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->SCZ:[C

    invoke-static {v8, v5}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_8e

    .line 355
    const/16 v1, 0x32

    .restart local v1    # "code":C
    goto :goto_48

    .line 356
    .end local v1    # "code":C
    :cond_8e
    sget-object v8, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->WFPV:[C

    invoke-static {v8, v0}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 357
    const/16 v1, 0x33

    .restart local v1    # "code":C
    goto :goto_48

    .line 358
    .end local v1    # "code":C
    :cond_99
    sget-object v8, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->GKQ:[C

    invoke-static {v8, v0}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_a4

    .line 359
    const/16 v1, 0x34

    .restart local v1    # "code":C
    goto :goto_48

    .line 360
    .end local v1    # "code":C
    :cond_a4
    const/16 v8, 0x58

    if-ne v0, v8, :cond_b8

    sget-object v8, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->CKQ:[C

    invoke-static {v8, v3}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_b8

    .line 361
    const/16 v1, 0x34

    .line 362
    .restart local v1    # "code":C
    invoke-virtual {v2, v12}, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->addLeft(C)V

    .line 363
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    .line 364
    .end local v1    # "code":C
    :cond_b8
    if-eq v0, v12, :cond_bc

    if-ne v0, v13, :cond_bf

    .line 365
    :cond_bc
    const/16 v1, 0x38

    .restart local v1    # "code":C
    goto :goto_48

    .line 366
    .end local v1    # "code":C
    :cond_bf
    const/16 v8, 0x43

    if-ne v0, v8, :cond_ed

    .line 367
    if-ne v4, v9, :cond_d5

    .line 368
    sget-object v8, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->AHKLOQRUX:[C

    invoke-static {v8, v5}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 369
    const/16 v1, 0x34

    .restart local v1    # "code":C
    goto/16 :goto_48

    .line 371
    .end local v1    # "code":C
    :cond_d1
    const/16 v1, 0x38

    .restart local v1    # "code":C
    goto/16 :goto_48

    .line 374
    .end local v1    # "code":C
    :cond_d5
    sget-object v8, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->SZ:[C

    invoke-static {v8, v3}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_e5

    sget-object v8, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->AHOUKQX:[C

    invoke-static {v8, v5}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_e9

    .line 375
    :cond_e5
    const/16 v1, 0x38

    .restart local v1    # "code":C
    goto/16 :goto_48

    .line 377
    .end local v1    # "code":C
    :cond_e9
    const/16 v1, 0x34

    .restart local v1    # "code":C
    goto/16 :goto_48

    .line 380
    .end local v1    # "code":C
    :cond_ed
    sget-object v8, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->TDX:[C

    invoke-static {v8, v0}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_f9

    .line 381
    const/16 v1, 0x38

    .restart local v1    # "code":C
    goto/16 :goto_48

    .line 382
    .end local v1    # "code":C
    :cond_f9
    const/16 v8, 0x52

    if-ne v0, v8, :cond_101

    .line 383
    const/16 v1, 0x37

    .restart local v1    # "code":C
    goto/16 :goto_48

    .line 384
    .end local v1    # "code":C
    :cond_101
    const/16 v8, 0x4c

    if-ne v0, v8, :cond_109

    .line 385
    const/16 v1, 0x35

    .restart local v1    # "code":C
    goto/16 :goto_48

    .line 386
    .end local v1    # "code":C
    :cond_109
    const/16 v8, 0x4d

    if-eq v0, v8, :cond_111

    const/16 v8, 0x4e

    if-ne v0, v8, :cond_115

    .line 387
    :cond_111
    const/16 v1, 0x36

    .restart local v1    # "code":C
    goto/16 :goto_48

    .line 389
    .end local v1    # "code":C
    :cond_115
    move v1, v0

    .restart local v1    # "code":C
    goto/16 :goto_48

    .line 399
    .end local v0    # "chr":C
    .end local v1    # "code":C
    .end local v5    # "nextChar":C
    :cond_118
    invoke-virtual {v6}, Lru/killer666/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_d
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lru/killer666/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 404
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 405
    new-instance v0, Lru/killer666/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method\'s parameter was expected to be of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". But actually it was of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_3b
    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncodeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lru/killer666/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
