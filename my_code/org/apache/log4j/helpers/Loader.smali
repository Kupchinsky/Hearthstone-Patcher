.class public Lorg/apache/log4j/helpers/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# static fields
.field static final TSTR:Ljava/lang/String; = "Caught Exception while in Loader.getResource. This may be innocuous."

.field static class$java$lang$Thread:Ljava/lang/Class;

.field static class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;

.field private static ignoreTCL:Z

.field private static java1:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    sput-boolean v6, Lorg/apache/log4j/helpers/Loader;->java1:Z

    .line 39
    sput-boolean v5, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    .line 42
    const-string v3, "java.version"

    invoke-static {v3, v7}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_24

    .line 45
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 46
    .local v0, "i":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_24

    .line 47
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_24

    .line 48
    sput-boolean v5, Lorg/apache/log4j/helpers/Loader;->java1:Z

    .line 51
    .end local v0    # "i":I
    :cond_24
    const-string v3, "log4j.ignoreTCL"

    invoke-static {v3, v7}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "ignoreTCLProp":Ljava/lang/String;
    if-eqz v1, :cond_32

    .line 53
    invoke-static {v1, v6}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    .line 55
    :cond_32
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 106
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

.method public static getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .param p0, "resource"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 92
    .local v2, "url":Ljava/net/URL;
    :try_start_2
    sget-boolean v3, Lorg/apache/log4j/helpers/Loader;->java1:Z

    if-nez v3, :cond_3e

    sget-boolean v3, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    if-nez v3, :cond_3e

    .line 93
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->getTCL()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_3e

    .line 95
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Trying to find ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] using context classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_3e

    move-object v3, v2

    .line 136
    :goto_3d
    return-object v3

    .line 106
    :cond_3e
    sget-object v3, Lorg/apache/log4j/helpers/Loader;->class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;

    if-nez v3, :cond_7e

    const-string v3, "org.apache.log4j.helpers.Loader"

    invoke-static {v3}, Lorg/apache/log4j/helpers/Loader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/helpers/Loader;->class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;

    :goto_4a
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_87

    .line 108
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Trying to find ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " class loader."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_87

    move-object v3, v2

    .line 112
    goto :goto_3d

    .line 106
    :cond_7e
    sget-object v3, Lorg/apache/log4j/helpers/Loader;->class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;
    :try_end_80
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_80} :catch_81
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_80} :catch_a8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_80} :catch_c6

    goto :goto_4a

    .line 115
    :catch_81
    move-exception v1

    .line 116
    .local v1, "t":Ljava/lang/IllegalAccessException;
    const-string v3, "Caught Exception while in Loader.getResource. This may be innocuous."

    invoke-static {v3, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v1    # "t":Ljava/lang/IllegalAccessException;
    :cond_87
    :goto_87
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Trying to find ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] using ClassLoader.getSystemResource()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 136
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    goto :goto_3d

    .line 117
    :catch_a8
    move-exception v1

    .line 118
    .local v1, "t":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/InterruptedException;

    if-nez v3, :cond_b9

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_c0

    .line 120
    :cond_b9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 122
    :cond_c0
    const-string v3, "Caught Exception while in Loader.getResource. This may be innocuous."

    invoke-static {v3, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_87

    .line 123
    .end local v1    # "t":Ljava/lang/reflect/InvocationTargetException;
    :catch_c6
    move-exception v1

    .line 127
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, "Caught Exception while in Loader.getResource. This may be innocuous."

    invoke-static {v3, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_87
.end method

.method public static getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;
    .registers 3
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 65
    invoke-static {p0}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method private static getTCL()Ljava/lang/ClassLoader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    const/4 v1, 0x0

    .line 160
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_2
    sget-object v3, Lorg/apache/log4j/helpers/Loader;->class$java$lang$Thread:Ljava/lang/Class;

    if-nez v3, :cond_20

    const-string v3, "java.lang.Thread"

    invoke-static {v3}, Lorg/apache/log4j/helpers/Loader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/helpers/Loader;->class$java$lang$Thread:Ljava/lang/Class;

    :goto_e
    const-string v4, "getContextClassLoader"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_14} :catch_23

    move-result-object v1

    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    :goto_1f
    return-object v2

    .line 160
    :cond_20
    :try_start_20
    sget-object v3, Lorg/apache/log4j/helpers/Loader;->class$java$lang$Thread:Ljava/lang/Class;
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_22} :catch_23

    goto :goto_e

    .line 161
    :catch_23
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1f
.end method

.method public static isJava1()Z
    .registers 1

    .prologue
    .line 145
    sget-boolean v0, Lorg/apache/log4j/helpers/Loader;->java1:Z

    return v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 181
    sget-boolean v1, Lorg/apache/log4j/helpers/Loader;->java1:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    if-eqz v1, :cond_d

    .line 182
    :cond_8
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 198
    :goto_c
    return-object v1

    .line 185
    :cond_d
    :try_start_d
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->getTCL()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_14} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_33

    move-result-object v1

    goto :goto_c

    .line 190
    :catch_16
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-nez v1, :cond_27

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2e

    .line 193
    :cond_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 198
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_2e
    :goto_2e
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    .line 195
    :catch_33
    move-exception v1

    goto :goto_2e
.end method
