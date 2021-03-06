.class public abstract Lorg/apache/log4j/LogXF;
.super Ljava/lang/Object;
.source "LogXF.java"


# static fields
.field private static final FQCN:Ljava/lang/String;

.field protected static final TRACE:Lorg/apache/log4j/Level;

.field static class$org$apache$log4j$LogXF:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 33
    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x1388

    const-string v2, "TRACE"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/LogXF;->TRACE:Lorg/apache/log4j/Level;

    .line 37
    sget-object v0, Lorg/apache/log4j/LogXF;->class$org$apache$log4j$LogXF:Ljava/lang/Class;

    if-nez v0, :cond_1f

    const-string v0, "org.apache.log4j.LogXF"

    invoke-static {v0}, Lorg/apache/log4j/LogXF;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/LogXF;->class$org$apache$log4j$LogXF:Ljava/lang/Class;

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/LogXF;->FQCN:Ljava/lang/String;

    return-void

    :cond_1f
    sget-object v0, Lorg/apache/log4j/LogXF;->class$org$apache$log4j$LogXF:Ljava/lang/Class;

    goto :goto_18
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
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

.method public static entering(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 204
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogXF;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " ENTRY"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 207
    :cond_31
    return-void
.end method

.method public static entering(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 241
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ENTRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "msg":Ljava/lang/String;
    if-nez p3, :cond_47

    .line 243
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    :goto_38
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogXF;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 254
    .end local v4    # "msg":Ljava/lang/String;
    :cond_46
    return-void

    .line 246
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_47
    :try_start_47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_57} :catch_59

    move-result-object v4

    goto :goto_38

    .line 247
    :catch_59
    move-exception v6

    .line 248
    .local v6, "ex":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_38
.end method

.method public static entering(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 222
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ENTRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "msg":Ljava/lang/String;
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogXF;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 226
    .end local v4    # "msg":Ljava/lang/String;
    :cond_35
    return-void
.end method

.method public static entering(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 13
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 269
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ENTRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "msg":Ljava/lang/String;
    if-eqz p3, :cond_85

    array-length v0, p3

    if-lez v0, :cond_85

    .line 271
    const-string v6, "{"

    .line 272
    .local v6, "delim":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2b
    array-length v0, p3

    if-ge v8, v0, :cond_63

    .line 274
    :try_start_2e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    aget-object v1, p3, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_44} :catch_4a

    move-result-object v4

    .line 278
    :goto_45
    const-string v6, ","

    .line 272
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 275
    :catch_4a
    move-exception v7

    .line 276
    .local v7, "ex":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_45

    .line 280
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    .end local v6    # "delim":Ljava/lang/String;
    .end local v8    # "i":I
    :goto_76
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogXF;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 287
    .end local v4    # "msg":Ljava/lang/String;
    :cond_84
    return-void

    .line 282
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_76
.end method

.method public static exiting(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 300
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogXF;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " RETURN"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 303
    :cond_31
    return-void
.end method

.method public static exiting(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 338
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " RETURN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "msg":Ljava/lang/String;
    if-nez p3, :cond_47

    .line 340
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    :goto_38
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogXF;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 351
    .end local v4    # "msg":Ljava/lang/String;
    :cond_46
    return-void

    .line 343
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_47
    :try_start_47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_57} :catch_59

    move-result-object v4

    goto :goto_38

    .line 344
    :catch_59
    move-exception v6

    .line 345
    .local v6, "ex":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_38
.end method

.method public static exiting(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 319
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogXF;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " RETURN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 322
    :cond_35
    return-void
.end method

.method public static throwing(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 366
    invoke-virtual {p0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 367
    new-instance v0, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogXF;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " THROW"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 370
    :cond_31
    return-void
.end method

.method protected static toArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .param p0, "param1"    # Ljava/lang/Object;

    .prologue
    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method protected static toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .param p0, "param1"    # Ljava/lang/Object;
    .param p1, "param2"    # Ljava/lang/Object;

    .prologue
    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object v0
.end method

.method protected static toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p0, "param1"    # Ljava/lang/Object;
    .param p1, "param2"    # Ljava/lang/Object;
    .param p2, "param3"    # Ljava/lang/Object;

    .prologue
    .line 170
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    return-object v0
.end method

.method protected static toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p0, "param1"    # Ljava/lang/Object;
    .param p1, "param2"    # Ljava/lang/Object;
    .param p2, "param3"    # Ljava/lang/Object;
    .param p3, "param4"    # Ljava/lang/Object;

    .prologue
    .line 188
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    return-object v0
.end method

.method protected static valueOf(Z)Ljava/lang/Boolean;
    .registers 2
    .param p0, "b"    # Z

    .prologue
    .line 50
    if-eqz p0, :cond_5

    .line 51
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method protected static valueOf(B)Ljava/lang/Byte;
    .registers 2
    .param p0, "b"    # B

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method protected static valueOf(C)Ljava/lang/Character;
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method protected static valueOf(D)Ljava/lang/Double;
    .registers 4
    .param p0, "b"    # D

    .prologue
    .line 130
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method protected static valueOf(F)Ljava/lang/Float;
    .registers 2
    .param p0, "b"    # F

    .prologue
    .line 119
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method protected static valueOf(I)Ljava/lang/Integer;
    .registers 2
    .param p0, "b"    # I

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method protected static valueOf(J)Ljava/lang/Long;
    .registers 4
    .param p0, "b"    # J

    .prologue
    .line 108
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method protected static valueOf(S)Ljava/lang/Short;
    .registers 2
    .param p0, "b"    # S

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method
