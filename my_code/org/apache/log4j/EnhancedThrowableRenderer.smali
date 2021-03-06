.class public final Lorg/apache/log4j/EnhancedThrowableRenderer;
.super Ljava/lang/Object;
.source "EnhancedThrowableRenderer.java"

# interfaces
.implements Lorg/apache/log4j/spi/ThrowableRenderer;


# static fields
.field static class$java$lang$Throwable:Ljava/lang/Class;


# instance fields
.field private getClassNameMethod:Ljava/lang/reflect/Method;

.field private getStackTraceMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "noArgs":[Ljava/lang/Class;
    :try_start_4
    sget-object v2, Lorg/apache/log4j/EnhancedThrowableRenderer;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_27

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/log4j/EnhancedThrowableRenderer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/EnhancedThrowableRenderer;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_10
    const-string v3, "getStackTrace"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/EnhancedThrowableRenderer;->getStackTraceMethod:Ljava/lang/reflect/Method;

    .line 53
    const-string v2, "java.lang.StackTraceElement"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 54
    .local v1, "ste":Ljava/lang/Class;
    const-string v2, "getClassName"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/EnhancedThrowableRenderer;->getClassNameMethod:Ljava/lang/reflect/Method;

    .line 57
    .end local v1    # "ste":Ljava/lang/Class;
    :goto_26
    return-void

    .line 52
    :cond_27
    sget-object v2, Lorg/apache/log4j/EnhancedThrowableRenderer;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2a

    goto :goto_10

    .line 55
    :catch_2a
    move-exception v2

    goto :goto_26
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 52
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

.method private findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v2

    .line 163
    :goto_c
    return-object v2

    .line 159
    :catch_d
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_e
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_c

    .line 162
    :catch_13
    move-exception v1

    .line 163
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_c
.end method

.method private formatElement(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 18
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "classMap"    # Ljava/util/Map;

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v13, "\tat "

    invoke-direct {v1, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 90
    :try_start_c
    iget-object v14, p0, Lorg/apache/log4j/EnhancedThrowableRenderer;->getClassNameMethod:Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "className":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 92
    .local v2, "classDetails":Ljava/lang/Object;
    if-eqz v2, :cond_2b

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_99

    .line 147
    .end local v2    # "classDetails":Ljava/lang/Object;
    .end local v3    # "className":Ljava/lang/String;
    :goto_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 95
    .restart local v2    # "classDetails":Ljava/lang/Object;
    .restart local v3    # "className":Ljava/lang/String;
    :cond_2b
    :try_start_2b
    invoke-direct {p0, v3}, Lorg/apache/log4j/EnhancedThrowableRenderer;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 96
    .local v4, "cls":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 97
    .local v5, "detailStart":I
    const/16 v13, 0x5b

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_99

    .line 99
    :try_start_38
    invoke-virtual {v4}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v13

    invoke-virtual {v13}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v12

    .line 100
    .local v12, "source":Ljava/security/CodeSource;
    if-eqz v12, :cond_76

    .line 101
    invoke-virtual {v12}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v9

    .line 102
    .local v9, "locationURL":Ljava/net/URL;
    if-eqz v9, :cond_76

    .line 106
    const-string v13, "file"

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    .line 107
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "path":Ljava/lang/String;
    if-eqz v10, :cond_76

    .line 112
    const/16 v13, 0x2f

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 113
    .local v8, "lastSlash":I
    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 114
    .local v7, "lastBack":I
    if-le v7, v8, :cond_69

    .line 115
    move v8, v7

    .line 121
    :cond_69
    if-lez v8, :cond_73

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_9b

    .line 122
    :cond_73
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_76
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_76} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_76} :catch_99

    .line 134
    .end local v7    # "lastBack":I
    .end local v8    # "lastSlash":I
    .end local v9    # "locationURL":Ljava/net/URL;
    .end local v10    # "path":Ljava/lang/String;
    .end local v12    # "source":Ljava/security/CodeSource;
    :cond_76
    :goto_76
    const/16 v13, 0x3a

    :try_start_78
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v11

    .line 136
    .local v11, "pkg":Ljava/lang/Package;
    if-eqz v11, :cond_8a

    .line 137
    invoke-virtual {v11}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "implVersion":Ljava/lang/String;
    if-eqz v6, :cond_8a

    .line 139
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    .end local v6    # "implVersion":Ljava/lang/String;
    :cond_8a
    const/16 v13, 0x5d

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_98} :catch_99

    goto :goto_26

    .line 145
    .end local v2    # "classDetails":Ljava/lang/Object;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "cls":Ljava/lang/Class;
    .end local v5    # "detailStart":I
    .end local v11    # "pkg":Ljava/lang/Package;
    :catch_99
    move-exception v13

    goto :goto_26

    .line 124
    .restart local v2    # "classDetails":Ljava/lang/Object;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "cls":Ljava/lang/Class;
    .restart local v5    # "detailStart":I
    .restart local v7    # "lastBack":I
    .restart local v8    # "lastSlash":I
    .restart local v9    # "locationURL":Ljava/net/URL;
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v12    # "source":Ljava/security/CodeSource;
    :cond_9b
    add-int/lit8 v13, v8, 0x1

    :try_start_9d
    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_76

    .line 132
    .end local v7    # "lastBack":I
    .end local v8    # "lastSlash":I
    .end local v9    # "locationURL":Ljava/net/URL;
    .end local v10    # "path":Ljava/lang/String;
    .end local v12    # "source":Ljava/security/CodeSource;
    :catch_a5
    move-exception v13

    goto :goto_76

    .line 128
    .restart local v9    # "locationURL":Ljava/net/URL;
    .restart local v12    # "source":Ljava/security/CodeSource;
    :cond_a7
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_aa
    .catch Ljava/lang/SecurityException; {:try_start_9d .. :try_end_aa} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_aa} :catch_99

    goto :goto_76
.end method


# virtual methods
.method public doRender(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 10
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    iget-object v6, p0, Lorg/apache/log4j/EnhancedThrowableRenderer;->getStackTraceMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_34

    .line 65
    const/4 v5, 0x0

    .line 66
    .local v5, "noArgs":[Ljava/lang/Object;
    :try_start_5
    iget-object v6, p0, Lorg/apache/log4j/EnhancedThrowableRenderer;->getStackTraceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v6, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 67
    .local v2, "elements":[Ljava/lang/Object;
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 68
    .local v4, "lines":[Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v1, "classMap":Ljava/util/Map;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    array-length v6, v2

    if-ge v3, v6, :cond_38

    .line 71
    add-int/lit8 v6, v3, 0x1

    aget-object v7, v2, v3

    invoke-direct {p0, v7, v1}, Lorg/apache/log4j/EnhancedThrowableRenderer;->formatElement(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_33

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 74
    .end local v1    # "classMap":Ljava/util/Map;
    .end local v2    # "elements":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "lines":[Ljava/lang/String;
    :catch_33
    move-exception v6

    .line 77
    .end local v5    # "noArgs":[Ljava/lang/Object;
    :cond_34
    invoke-static {p1}, Lorg/apache/log4j/DefaultThrowableRenderer;->render(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v4

    :cond_38
    return-object v4
.end method
