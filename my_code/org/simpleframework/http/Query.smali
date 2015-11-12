.class public interface abstract Lorg/simpleframework/http/Query;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAll(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/Object;)Z
.end method

.method public abstract getFloat(Ljava/lang/Object;)F
.end method

.method public abstract getInteger(Ljava/lang/Object;)I
.end method

.method public abstract toString()Ljava/lang/String;
.end method
