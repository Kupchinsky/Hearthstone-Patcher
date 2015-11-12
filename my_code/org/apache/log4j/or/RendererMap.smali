.class public Lorg/apache/log4j/or/RendererMap;
.super Ljava/lang/Object;
.source "RendererMap.java"


# static fields
.field static class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

.field static defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;


# instance fields
.field map:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lorg/apache/log4j/or/DefaultRenderer;

    invoke-direct {v0}, Lorg/apache/log4j/or/DefaultRenderer;-><init>()V

    sput-object v0, Lorg/apache/log4j/or/RendererMap;->defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    .line 40
    return-void
.end method

.method public static addRenderer(Lorg/apache/log4j/spi/RendererSupport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "repository"    # Lorg/apache/log4j/spi/RendererSupport;
    .param p1, "renderedClassName"    # Ljava/lang/String;
    .param p2, "renderingClassName"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Rendering class: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "], Rendered class: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 51
    sget-object v3, Lorg/apache/log4j/or/RendererMap;->class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

    if-nez v3, :cond_58

    const-string v3, "org.apache.log4j.or.ObjectRenderer"

    invoke-static {v3}, Lorg/apache/log4j/or/RendererMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/or/RendererMap;->class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

    :goto_32
    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/or/ObjectRenderer;

    .line 55
    .local v2, "renderer":Lorg/apache/log4j/or/ObjectRenderer;
    if-nez v2, :cond_5b

    .line 56
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not instantiate renderer ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 66
    :goto_57
    return-void

    .line 51
    .end local v2    # "renderer":Lorg/apache/log4j/or/ObjectRenderer;
    :cond_58
    sget-object v3, Lorg/apache/log4j/or/RendererMap;->class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

    goto :goto_32

    .line 60
    .restart local v2    # "renderer":Lorg/apache/log4j/or/ObjectRenderer;
    :cond_5b
    :try_start_5b
    invoke-static {p1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 61
    .local v1, "renderedClass":Ljava/lang/Class;
    invoke-interface {p0, v1, v2}, Lorg/apache/log4j/spi/RendererSupport;->setRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    :try_end_62
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_62} :catch_63

    goto :goto_57

    .line 62
    .end local v1    # "renderedClass":Ljava/lang/Class;
    :catch_63
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not find class ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_57
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
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
.method public clear()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 189
    return-void
.end method

.method public findAndRender(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 77
    if-nez p1, :cond_4

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/or/RendererMap;->get(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/log4j/or/ObjectRenderer;->doRender(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;
    .registers 5
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "r":Lorg/apache/log4j/or/ObjectRenderer;
    move-object v0, p1

    .local v0, "c":Ljava/lang/Class;
    :goto_2
    if-eqz v0, :cond_1d

    .line 151
    iget-object v2, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lorg/apache/log4j/or/ObjectRenderer;
    check-cast v1, Lorg/apache/log4j/or/ObjectRenderer;

    .line 152
    .restart local v1    # "r":Lorg/apache/log4j/or/ObjectRenderer;
    if-eqz v1, :cond_10

    move-object v2, v1

    .line 159
    :goto_f
    return-object v2

    .line 155
    :cond_10
    invoke-virtual {p0, v0}, Lorg/apache/log4j/or/RendererMap;->searchInterfaces(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_18

    move-object v2, v1

    .line 157
    goto :goto_f

    .line 149
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 159
    :cond_1d
    sget-object v2, Lorg/apache/log4j/or/RendererMap;->defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;

    goto :goto_f
.end method

.method public get(Ljava/lang/Object;)Lorg/apache/log4j/or/ObjectRenderer;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-nez p1, :cond_4

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/or/RendererMap;->get(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v0

    goto :goto_3
.end method

.method public getDefaultRenderer()Lorg/apache/log4j/or/ObjectRenderer;
    .registers 2

    .prologue
    .line 182
    sget-object v0, Lorg/apache/log4j/or/RendererMap;->defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;

    return-object v0
.end method

.method public put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .registers 4
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "or"    # Lorg/apache/log4j/or/ObjectRenderer;

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method searchInterfaces(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;
    .registers 6
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 165
    iget-object v3, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/or/ObjectRenderer;

    .line 166
    .local v2, "r":Lorg/apache/log4j/or/ObjectRenderer;
    if-eqz v2, :cond_c

    move-object v3, v2

    .line 176
    :goto_b
    return-object v3

    .line 169
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 170
    .local v1, "ia":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v3, v1

    if-ge v0, v3, :cond_21

    .line 171
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lorg/apache/log4j/or/RendererMap;->searchInterfaces(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_1e

    move-object v3, v2

    .line 173
    goto :goto_b

    .line 170
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 176
    :cond_21
    const/4 v3, 0x0

    goto :goto_b
.end method
