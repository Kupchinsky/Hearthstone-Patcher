.class public final Lorg/apache/log4j/helpers/MDCKeySetExtractor;
.super Ljava/lang/Object;
.source "MDCKeySetExtractor.java"


# static fields
.field public static final INSTANCE:Lorg/apache/log4j/helpers/MDCKeySetExtractor;

.field static class$org$apache$log4j$pattern$LogEvent:Ljava/lang/Class;

.field static class$org$apache$log4j$spi$LoggingEvent:Ljava/lang/Class;


# instance fields
.field private final getKeySetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/MDCKeySetExtractor;-><init>()V

    sput-object v0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->INSTANCE:Lorg/apache/log4j/helpers/MDCKeySetExtractor;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x0

    .line 44
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    :try_start_4
    sget-object v2, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$spi$LoggingEvent:Ljava/lang/Class;

    if-nez v2, :cond_1a

    const-string v2, "org.apache.log4j.spi.LoggingEvent"

    invoke-static {v2}, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$spi$LoggingEvent:Ljava/lang/Class;

    :goto_10
    const-string v3, "getPropertyKeySet"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_1d

    move-result-object v1

    .line 49
    :goto_17
    iput-object v1, p0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->getKeySetMethod:Ljava/lang/reflect/Method;

    .line 51
    return-void

    .line 44
    :cond_1a
    :try_start_1a
    sget-object v2, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$spi$LoggingEvent:Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 46
    :catch_1d
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_17
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getPropertyKeySet(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/util/Set;
    .registers 13
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, "keySet":Ljava/util/Set;
    iget-object v9, p0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->getKeySetMethod:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_f

    .line 59
    iget-object v9, p0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->getKeySetMethod:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "keySet":Ljava/util/Set;
    check-cast v4, Ljava/util/Set;

    .line 90
    .restart local v4    # "keySet":Ljava/util/Set;
    :cond_e
    :goto_e
    return-object v4

    .line 64
    :cond_f
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v6, "outBytes":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    .local v5, "os":Ljava/io/ObjectOutputStream;
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 69
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 73
    .local v7, "raw":[B
    sget-object v9, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$pattern$LogEvent:Ljava/lang/Class;

    if-nez v9, :cond_54

    const-string v9, "org.apache.log4j.pattern.LogEvent"

    invoke-static {v9}, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$pattern$LogEvent:Ljava/lang/Class;

    :goto_2f
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "subClassName":Ljava/lang/String;
    const/4 v9, 0x6

    aget-byte v9, v7, v9

    if-eqz v9, :cond_41

    const/4 v9, 0x7

    aget-byte v9, v7, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_e

    .line 78
    :cond_41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_57

    .line 79
    add-int/lit8 v9, v1, 0x8

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 73
    .end local v1    # "i":I
    .end local v8    # "subClassName":Ljava/lang/String;
    :cond_54
    sget-object v9, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$pattern$LogEvent:Ljava/lang/Class;

    goto :goto_2f

    .line 81
    .restart local v1    # "i":I
    .restart local v8    # "subClassName":Ljava/lang/String;
    :cond_57
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 82
    .local v2, "inBytes":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 83
    .local v3, "is":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "cracked":Ljava/lang/Object;
    instance-of v9, v0, Lorg/apache/log4j/pattern/LogEvent;

    if-eqz v9, :cond_6f

    .line 85
    check-cast v0, Lorg/apache/log4j/pattern/LogEvent;

    .end local v0    # "cracked":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/apache/log4j/pattern/LogEvent;->getPropertyKeySet()Ljava/util/Set;

    move-result-object v4

    .line 87
    :cond_6f
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_e
.end method
