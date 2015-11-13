.class synthetic Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$2;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$commons$codec$language$bm$NameType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 448
    invoke-static {}, Lru/killer666/apache/commons/codec/language/bm/NameType;->values()[Lru/killer666/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$2;->$SwitchMap$org$apache$commons$codec$language$bm$NameType:[I

    :try_start_9
    sget-object v0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$2;->$SwitchMap$org$apache$commons$codec$language$bm$NameType:[I

    sget-object v1, Lru/killer666/apache/commons/codec/language/bm/NameType;->SEPHARDIC:Lru/killer666/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v1}, Lru/killer666/apache/commons/codec/language/bm/NameType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$2;->$SwitchMap$org$apache$commons$codec$language$bm$NameType:[I

    sget-object v1, Lru/killer666/apache/commons/codec/language/bm/NameType;->ASHKENAZI:Lru/killer666/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v1}, Lru/killer666/apache/commons/codec/language/bm/NameType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lru/killer666/apache/commons/codec/language/bm/PhoneticEngine$2;->$SwitchMap$org$apache$commons$codec$language$bm$NameType:[I

    sget-object v1, Lru/killer666/apache/commons/codec/language/bm/NameType;->GENERIC:Lru/killer666/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v1}, Lru/killer666/apache/commons/codec/language/bm/NameType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
