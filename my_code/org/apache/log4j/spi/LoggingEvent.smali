.class public Lorg/apache/log4j/spi/LoggingEvent;
.super Ljava/lang/Object;
.source "LoggingEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final PARAM_ARRAY:[Ljava/lang/Integer;

.field static final TO_LEVEL:Ljava/lang/String; = "toLevel"

.field static final TO_LEVEL_PARAMS:[Ljava/lang/Class;

.field static class$org$apache$log4j$Level:Ljava/lang/Class; = null

.field static final methodCache:Ljava/util/Hashtable;

.field static final serialVersionUID:J = -0xc0d46dc8bf44ac1L

.field private static startTime:J


# instance fields
.field public final categoryName:Ljava/lang/String;

.field public final transient fqnOfCategoryClass:Ljava/lang/String;

.field public transient level:Lorg/apache/log4j/Priority;

.field private locationInfo:Lorg/apache/log4j/spi/LocationInfo;

.field private transient logger:Lorg/apache/log4j/Category;

.field private mdcCopy:Ljava/util/Hashtable;

.field private mdcCopyLookupRequired:Z

.field private transient message:Ljava/lang/Object;

.field private ndc:Ljava/lang/String;

.field private ndcLookupRequired:Z

.field private renderedMessage:Ljava/lang/String;

.field private threadName:Ljava/lang/String;

.field private throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

.field public final timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/log4j/spi/LoggingEvent;->startTime:J

    .line 142
    new-array v0, v2, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/log4j/spi/LoggingEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    .line 144
    new-array v0, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/log4j/spi/LoggingEvent;->TO_LEVEL_PARAMS:[Ljava/lang/Class;

    .line 145
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/log4j/spi/LoggingEvent;->methodCache:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Level;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/spi/ThrowableInformation;Ljava/lang/String;Lorg/apache/log4j/spi/LocationInfo;Ljava/util/Map;)V
    .registers 15
    .param p1, "fqnOfCategoryClass"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/apache/log4j/Category;
    .param p3, "timeStamp"    # J
    .param p5, "level"    # Lorg/apache/log4j/Level;
    .param p6, "message"    # Ljava/lang/Object;
    .param p7, "threadName"    # Ljava/lang/String;
    .param p8, "throwable"    # Lorg/apache/log4j/spi/ThrowableInformation;
    .param p9, "ndc"    # Ljava/lang/String;
    .param p10, "info"    # Lorg/apache/log4j/spi/LocationInfo;
    .param p11, "properties"    # Ljava/util/Map;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 222
    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    .line 224
    if-eqz p2, :cond_33

    .line 225
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    .line 229
    :goto_15
    iput-object p5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 230
    iput-object p6, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    .line 231
    if-eqz p8, :cond_1d

    .line 232
    iput-object p8, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 235
    :cond_1d
    iput-wide p3, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 236
    iput-object p7, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    .line 237
    iput-boolean v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 238
    iput-object p9, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndc:Ljava/lang/String;

    .line 239
    iput-object p10, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 240
    iput-boolean v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 241
    if-eqz p11, :cond_32

    .line 242
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p11}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 244
    :cond_32
    return-void

    .line 227
    :cond_33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "fqnOfCategoryClass"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/apache/log4j/Category;
    .param p3, "timeStamp"    # J
    .param p5, "level"    # Lorg/apache/log4j/Priority;
    .param p6, "message"    # Ljava/lang/Object;
    .param p7, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 184
    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    .line 186
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    .line 187
    iput-object p5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 188
    iput-object p6, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    .line 189
    if-eqz p7, :cond_1f

    .line 190
    new-instance v0, Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-direct {v0, p7, p2}, Lorg/apache/log4j/spi/ThrowableInformation;-><init>(Ljava/lang/Throwable;Lorg/apache/log4j/Category;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 193
    :cond_1f
    iput-wide p3, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "fqnOfCategoryClass"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/apache/log4j/Category;
    .param p3, "level"    # Lorg/apache/log4j/Priority;
    .param p4, "message"    # Ljava/lang/Object;
    .param p5, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 159
    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    .line 161
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 163
    iput-object p4, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    .line 164
    if-eqz p5, :cond_1f

    .line 165
    new-instance v0, Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-direct {v0, p5, p2}, Lorg/apache/log4j/spi/ThrowableInformation;-><init>(Ljava/lang/Throwable;Lorg/apache/log4j/Category;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 167
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 168
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 503
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

.method public static getStartTime()J
    .registers 2

    .prologue
    .line 381
    sget-wide v0, Lorg/apache/log4j/spi/LoggingEvent;->startTime:J

    return-wide v0
.end method

.method private readLevel(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 423
    .local v4, "p":I
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 424
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 425
    invoke-static {v4}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 459
    .end local v0    # "className":Ljava/lang/String;
    :goto_12
    return-void

    .line 427
    .restart local v0    # "className":Ljava/lang/String;
    :cond_13
    sget-object v5, Lorg/apache/log4j/spi/LoggingEvent;->methodCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 428
    .local v3, "m":Ljava/lang/reflect/Method;
    if-nez v3, :cond_2e

    .line 429
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 436
    .local v1, "clazz":Ljava/lang/Class;
    const-string v5, "toLevel"

    sget-object v6, Lorg/apache/log4j/spi/LoggingEvent;->TO_LEVEL_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 437
    sget-object v5, Lorg/apache/log4j/spi/LoggingEvent;->methodCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_2e
    sget-object v5, Lorg/apache/log4j/spi/LoggingEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    .line 440
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/log4j/spi/LoggingEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/Level;

    iput-object v5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;
    :try_end_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_43} :catch_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_43} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_43} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_43} :catch_82

    goto :goto_12

    .line 442
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_44
    move-exception v2

    .line 443
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/InterruptedException;

    if-nez v5, :cond_55

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_5c

    .line 445
    :cond_55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 447
    :cond_5c
    const-string v5, "Level deserialization failed, reverting to default."

    invoke-static {v5, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    invoke-static {v4}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    goto :goto_12

    .line 449
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_68
    move-exception v2

    .line 450
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "Level deserialization failed, reverting to default."

    invoke-static {v5, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    invoke-static {v4}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    goto :goto_12

    .line 452
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_75
    move-exception v2

    .line 453
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "Level deserialization failed, reverting to default."

    invoke-static {v5, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    invoke-static {v4}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    goto :goto_12

    .line 455
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_82
    move-exception v2

    .line 456
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v5, "Level deserialization failed, reverting to default."

    invoke-static {v5, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    invoke-static {v4}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    goto :goto_12
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 463
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 464
    invoke-direct {p0, p1}, Lorg/apache/log4j/spi/LoggingEvent;->readLevel(Ljava/io/ObjectInputStream;)V

    .line 467
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-nez v0, :cond_12

    .line 468
    new-instance v0, Lorg/apache/log4j/spi/LocationInfo;

    invoke-direct {v0, v1, v1}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 469
    :cond_12
    return-void
.end method

.method private writeLevel(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    invoke-virtual {v1}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 502
    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 503
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v1, Lorg/apache/log4j/spi/LoggingEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v1, :cond_22

    const-string v1, "org.apache.log4j.Level"

    invoke-static {v1}, Lorg/apache/log4j/spi/LoggingEvent;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/spi/LoggingEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :goto_1b
    if-ne v0, v1, :cond_25

    .line 504
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 511
    :goto_21
    return-void

    .line 503
    :cond_22
    sget-object v1, Lorg/apache/log4j/spi/LoggingEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    goto :goto_1b

    .line 509
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_21
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 478
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 482
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 486
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 489
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 491
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 494
    invoke-direct {p0, p1}, Lorg/apache/log4j/spi/LoggingEvent;->writeLevel(Ljava/io/ObjectOutputStream;)V

    .line 495
    return-void
.end method


# virtual methods
.method public getFQNOfLoggerClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lorg/apache/log4j/Level;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    check-cast v0, Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;
    .registers 4

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-nez v0, :cond_12

    .line 253
    new-instance v0, Lorg/apache/log4j/spi/LocationInfo;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 255
    :cond_12
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    return-object v0
.end method

.method public getLogger()Lorg/apache/log4j/Category;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getMDC(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-eqz v1, :cond_d

    .line 333
    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 334
    .local v0, "r":Ljava/lang/Object;
    if-eqz v0, :cond_d

    .line 338
    .end local v0    # "r":Ljava/lang/Object;
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p1}, Lorg/apache/log4j/MDC;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public getMDCCopy()V
    .registers 3

    .prologue
    .line 347
    iget-boolean v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    if-eqz v1, :cond_15

    .line 348
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 351
    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v0

    .line 352
    .local v0, "t":Ljava/util/Hashtable;
    if-eqz v0, :cond_15

    .line 353
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 356
    .end local v0    # "t":Ljava/util/Hashtable;
    :cond_15
    return-void
.end method

.method public getMessage()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 294
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    .line 296
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getNDC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    if-eqz v0, :cond_d

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 309
    invoke-static {}, Lorg/apache/log4j/NDC;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndc:Ljava/lang/String;

    .line 311
    :cond_d
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndc:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .registers 3

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 603
    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v1, :cond_11

    .line 604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 608
    .local v0, "properties":Ljava/util/Map;
    :goto_c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 606
    .end local v0    # "properties":Ljava/util/Map;
    :cond_11
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .restart local v0    # "properties":Ljava/util/Map;
    goto :goto_c
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 546
    .local v1, "value":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 547
    .local v0, "retval":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 548
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_b
    return-object v0
.end method

.method public getPropertyKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 586
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRenderedMessage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 360
    iget-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    if-eqz v2, :cond_14

    .line 361
    iget-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 362
    iget-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    .line 374
    :cond_14
    :goto_14
    iget-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    return-object v2

    .line 364
    :cond_17
    iget-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    .line 366
    .local v0, "repository":Lorg/apache/log4j/spi/LoggerRepository;
    instance-of v2, v0, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v2, :cond_31

    move-object v1, v0

    .line 367
    check-cast v1, Lorg/apache/log4j/spi/RendererSupport;

    .line 368
    .local v1, "rs":Lorg/apache/log4j/spi/RendererSupport;
    invoke-interface {v1}, Lorg/apache/log4j/spi/RendererSupport;->getRendererMap()Lorg/apache/log4j/or/RendererMap;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/apache/log4j/or/RendererMap;->findAndRender(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    goto :goto_14

    .line 370
    .end local v1    # "rs":Lorg/apache/log4j/spi/RendererSupport;
    :cond_31
    iget-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    goto :goto_14
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 387
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    .line 388
    :cond_e
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    return-object v0
.end method

.method public getThrowableStrRep()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    if-nez v0, :cond_6

    .line 411
    const/4 v0, 0x0

    .line 413
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-virtual {v0}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public final getTimeStamp()J
    .registers 3

    .prologue
    .line 571
    iget-wide v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    return-wide v0
.end method

.method public final locationInformationExists()Z
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public removeProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 631
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    .line 632
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 634
    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_12

    .line 635
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 637
    :cond_12
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    .line 526
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 528
    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_12

    .line 529
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 531
    :cond_12
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-void
.end method
