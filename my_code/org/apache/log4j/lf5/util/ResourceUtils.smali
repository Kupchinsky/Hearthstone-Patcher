.class public Lorg/apache/log4j/lf5/util/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceAsStream(Ljava/lang/Object;Lorg/apache/log4j/lf5/util/Resource;)Ljava/io/InputStream;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "resource"    # Lorg/apache/log4j/lf5/util/Resource;

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 75
    .local v1, "loader":Ljava/lang/ClassLoader;
    const/4 v0, 0x0

    .line 77
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_14

    .line 78
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 83
    :goto_13
    return-object v0

    .line 80
    :cond_14
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_13
.end method

.method public static getResourceAsURL(Ljava/lang/Object;Lorg/apache/log4j/lf5/util/Resource;)Ljava/net/URL;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "resource"    # Lorg/apache/log4j/lf5/util/Resource;

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 104
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 106
    .local v1, "url":Ljava/net/URL;
    if-eqz v0, :cond_14

    .line 107
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 112
    :goto_13
    return-object v1

    .line 109
    :cond_14
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    goto :goto_13
.end method
