.class public Lorg/slf4j/impl/Log4jMDCAdapter;
.super Ljava/lang/Object;
.source "Log4jMDCAdapter.java"

# interfaces
.implements Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 36
    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v0

    .line 37
    .local v0, "map":Ljava/util/Map;
    if-eqz v0, :cond_9

    .line 38
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 40
    :cond_9
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Lorg/apache/log4j/MDC;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCopyOfContextMap()Ljava/util/Map;
    .registers 3

    .prologue
    .line 67
    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v0

    .line 68
    .local v0, "old":Ljava/util/Map;
    if-eqz v0, :cond_c

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 71
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p1, p2}, Lorg/apache/log4j/MDC;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1}, Lorg/apache/log4j/MDC;->remove(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setContextMap(Ljava/util/Map;)V
    .registers 7
    .param p1, "contextMap"    # Ljava/util/Map;

    .prologue
    .line 76
    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v2

    .line 77
    .local v2, "old":Ljava/util/Map;
    if-nez v2, :cond_28

    .line 78
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, "entrySetIterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    .local v1, "mapEntry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/log4j/MDC;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 84
    .end local v0    # "entrySetIterator":Ljava/util/Iterator;
    .end local v1    # "mapEntry":Ljava/util/Map$Entry;
    :cond_28
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 85
    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    :cond_2e
    return-void
.end method
