.class public Lorg/simpleframework/util/KeyMap;
.super Ljava/util/HashMap;
.source "KeyMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "TT;>;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    .local p0, "this":Lorg/simpleframework/util/KeyMap;, "Lorg/simpleframework/util/KeyMap<TT;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public getKeys()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/simpleframework/util/KeyMap;, "Lorg/simpleframework/util/KeyMap<TT;>;"
    invoke-virtual {p0}, Lorg/simpleframework/util/KeyMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 72
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_c

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :goto_b
    return-object v1

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_b
.end method

.method public getValues()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/simpleframework/util/KeyMap;, "Lorg/simpleframework/util/KeyMap<TT;>;"
    invoke-virtual {p0}, Lorg/simpleframework/util/KeyMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 88
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez v0, :cond_c

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :goto_b
    return-object v1

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_b
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/simpleframework/util/KeyMap;, "Lorg/simpleframework/util/KeyMap<TT;>;"
    invoke-virtual {p0}, Lorg/simpleframework/util/KeyMap;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
