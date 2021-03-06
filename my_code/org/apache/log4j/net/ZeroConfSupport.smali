.class public Lorg/apache/log4j/net/ZeroConfSupport;
.super Ljava/lang/Object;
.source "ZeroConfSupport.java"


# static fields
.field static class$java$lang$String:Ljava/lang/Class;

.field static class$java$util$Hashtable:Ljava/lang/Class;

.field static class$java$util$Map:Ljava/lang/Class;

.field private static jmDNS:Ljava/lang/Object;

.field private static jmDNSClass:Ljava/lang/Class;

.field private static serviceInfoClass:Ljava/lang/Class;


# instance fields
.field serviceInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lorg/apache/log4j/net/ZeroConfSupport;->initializeJMDNS()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "zone"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/log4j/net/ZeroConfSupport;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "zone"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "properties"    # Ljava/util/Map;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    .line 40
    .local v0, "isVersion3":Z
    :try_start_4
    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_c} :catch_27

    .line 41
    const/4 v0, 0x1

    .line 46
    :goto_d
    if-eqz v0, :cond_1b

    .line 47
    const-string v1, "using JmDNS version 3 to construct serviceInfo instance"

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/log4j/net/ZeroConfSupport;->buildServiceInfoVersion3(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    .line 53
    :goto_1a
    return-void

    .line 50
    :cond_1b
    const-string v1, "using JmDNS version 1.0 to construct serviceInfo instance"

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/log4j/net/ZeroConfSupport;->buildServiceInfoVersion1(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    goto :goto_1a

    .line 42
    :catch_27
    move-exception v1

    goto :goto_d
.end method

.method private buildServiceInfoVersion1(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 14
    .param p1, "zone"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "properties"    # Ljava/util/Map;

    .prologue
    .line 88
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, p4}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 90
    .local v3, "hashtableProperties":Ljava/util/Hashtable;
    const/4 v6, 0x6

    :try_start_6
    new-array v0, v6, [Ljava/lang/Class;

    .line 91
    .local v0, "args":[Ljava/lang/Class;
    const/4 v7, 0x0

    sget-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v6, :cond_8b

    const-string v6, "java.lang.String"

    invoke-static {v6}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_15
    aput-object v6, v0, v7

    .line 92
    const/4 v7, 0x1

    sget-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v6, :cond_8e

    const-string v6, "java.lang.String"

    invoke-static {v6}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_24
    aput-object v6, v0, v7

    .line 93
    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v0, v6

    .line 94
    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v0, v6

    .line 95
    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v0, v6

    .line 96
    const/4 v7, 0x5

    sget-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Hashtable:Ljava/lang/Class;

    if-nez v6, :cond_91

    const-string v6, "java.util.Hashtable"

    invoke-static {v6}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Hashtable:Ljava/lang/Class;

    :goto_42
    aput-object v6, v0, v7

    .line 97
    sget-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 98
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x6

    new-array v5, v6, [Ljava/lang/Object;

    .line 99
    .local v5, "values":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 100
    const/4 v6, 0x1

    aput-object p3, v5, v6

    .line 101
    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    .line 102
    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    .line 103
    const/4 v6, 0x4

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    .line 104
    const/4 v6, 0x5

    aput-object v3, v5, v6

    .line 105
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 106
    .local v4, "result":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "created serviceinfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 117
    .end local v0    # "args":[Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "result":Ljava/lang/Object;
    .end local v5    # "values":[Ljava/lang/Object;
    :goto_8a
    return-object v4

    .line 91
    .restart local v0    # "args":[Ljava/lang/Class;
    :cond_8b
    sget-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_15

    .line 92
    :cond_8e
    sget-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_24

    .line 96
    :cond_91
    sget-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Hashtable:Ljava/lang/Class;
    :try_end_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_93} :catch_94
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_93} :catch_9c
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_93} :catch_a3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_93} :catch_aa

    goto :goto_42

    .line 108
    .end local v0    # "args":[Ljava/lang/Class;
    :catch_94
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v6, "Unable to construct ServiceInfo instance"

    invoke-static {v6, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_9a
    const/4 v4, 0x0

    goto :goto_8a

    .line 110
    :catch_9c
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v6, "Unable to get ServiceInfo constructor"

    invoke-static {v6, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9a

    .line 112
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_a3
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v6, "Unable to construct ServiceInfo instance"

    invoke-static {v6, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9a

    .line 114
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_aa
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "Unable to construct ServiceInfo instance"

    invoke-static {v6, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9a
.end method

.method private buildServiceInfoVersion3(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 13
    .param p1, "zone"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "properties"    # Ljava/util/Map;

    .prologue
    .line 122
    const/4 v5, 0x6

    :try_start_1
    new-array v0, v5, [Ljava/lang/Class;

    .line 123
    .local v0, "args":[Ljava/lang/Class;
    const/4 v6, 0x0

    sget-object v5, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v5, :cond_89

    const-string v5, "java.lang.String"

    invoke-static {v5}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_10
    aput-object v5, v0, v6

    .line 124
    const/4 v6, 0x1

    sget-object v5, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v5, :cond_8c

    const-string v5, "java.lang.String"

    invoke-static {v5}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_1f
    aput-object v5, v0, v6

    .line 125
    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v5

    .line 126
    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v5

    .line 127
    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v5

    .line 128
    const/4 v6, 0x5

    sget-object v5, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Map:Ljava/lang/Class;

    if-nez v5, :cond_8f

    const-string v5, "java.util.Map"

    invoke-static {v5}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Map:Ljava/lang/Class;

    :goto_3d
    aput-object v5, v0, v6

    .line 129
    sget-object v5, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    const-string v6, "create"

    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 130
    .local v3, "serviceInfoCreateMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/Object;

    .line 131
    .local v4, "values":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 132
    const/4 v5, 0x1

    aput-object p3, v4, v5

    .line 133
    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 134
    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 135
    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 136
    const/4 v5, 0x5

    aput-object p4, v4, v5

    .line 137
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, "result":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "created serviceinfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 147
    .end local v0    # "args":[Ljava/lang/Class;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "serviceInfoCreateMethod":Ljava/lang/reflect/Method;
    .end local v4    # "values":[Ljava/lang/Object;
    :goto_88
    return-object v2

    .line 123
    .restart local v0    # "args":[Ljava/lang/Class;
    :cond_89
    sget-object v5, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_10

    .line 124
    :cond_8c
    sget-object v5, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1f

    .line 128
    :cond_8f
    sget-object v5, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Map:Ljava/lang/Class;
    :try_end_91
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_91} :catch_92
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_91} :catch_9a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_91} :catch_a1

    goto :goto_3d

    .line 140
    .end local v0    # "args":[Ljava/lang/Class;
    :catch_92
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "Unable to invoke create method"

    invoke-static {v5, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_98
    const/4 v2, 0x0

    goto :goto_88

    .line 142
    :catch_9a
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "Unable to find create method"

    invoke-static {v5, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_98

    .line 144
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_a1
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "Unable to invoke create method"

    invoke-static {v5, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_98
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 91
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

.method private static createJmDNSVersion1()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 62
    :try_start_0
    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_f

    move-result-object v1

    .line 68
    :goto_6
    return-object v1

    .line 63
    :catch_7
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v1, "Unable to instantiate JMDNS"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_d
    const/4 v1, 0x0

    goto :goto_6

    .line 65
    :catch_f
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "Unable to instantiate JMDNS"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method private static createJmDNSVersion3()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 74
    :try_start_1
    sget-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v4, "create"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 75
    .local v1, "jmDNSCreateMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_f} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_f} :catch_1f

    move-result-object v2

    .line 83
    :goto_10
    return-object v2

    .line 76
    :catch_11
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Unable to instantiate jmdns class"

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_18
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "Unable to access constructor"

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 80
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1f
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "Unable to call constructor"

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public static getJMDNSInstance()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 204
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    return-object v0
.end method

.method private static initializeJMDNS()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 180
    :try_start_0
    const-string v2, "javax.jmdns.JmDNS"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    .line 181
    const-string v2, "javax.jmdns.ServiceInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_21

    .line 187
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_10
    const/4 v1, 0x0

    .line 190
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .local v1, "isVersion3":Z
    :try_start_11
    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v3, "create"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_19} :catch_2d

    .line 191
    const/4 v1, 0x1

    .line 196
    :goto_1a
    if-eqz v1, :cond_28

    .line 197
    invoke-static {}, Lorg/apache/log4j/net/ZeroConfSupport;->createJmDNSVersion3()Ljava/lang/Object;

    move-result-object v2

    .line 199
    :goto_20
    return-object v2

    .line 182
    .end local v1    # "isVersion3":Z
    :catch_21
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "JmDNS or serviceInfo class not found"

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 199
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "isVersion3":Z
    :cond_28
    invoke-static {}, Lorg/apache/log4j/net/ZeroConfSupport;->createJmDNSVersion1()Ljava/lang/Object;

    move-result-object v2

    goto :goto_20

    .line 192
    :catch_2d
    move-exception v2

    goto :goto_1a
.end method


# virtual methods
.method public advertise()V
    .registers 8

    .prologue
    .line 152
    :try_start_0
    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v3, "registerService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 153
    .local v1, "method":Ljava/lang/reflect/Method;
    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "registered serviceInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_35} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_35} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_35} :catch_44

    .line 162
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_35
    return-void

    .line 155
    :catch_36
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Unable to invoke registerService method"

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 157
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3d
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "No registerService method"

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 159
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_44
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Unable to invoke registerService method"

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35
.end method

.method public unadvertise()V
    .registers 8

    .prologue
    .line 166
    :try_start_0
    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v3, "unregisterService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 167
    .local v1, "method":Ljava/lang/reflect/Method;
    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unregistered serviceInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_35} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_35} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_35} :catch_44

    .line 176
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_35
    return-void

    .line 169
    :catch_36
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Unable to invoke unregisterService method"

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 171
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3d
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "No unregisterService method"

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 173
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_44
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Unable to invoke unregisterService method"

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35
.end method
