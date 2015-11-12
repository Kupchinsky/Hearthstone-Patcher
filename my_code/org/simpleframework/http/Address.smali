.class public interface abstract Lorg/simpleframework/http/Address;
.super Ljava/lang/Object;
.source "Address.java"


# virtual methods
.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getParameters()Lorg/simpleframework/util/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/util/KeyMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPath()Lorg/simpleframework/http/Path;
.end method

.method public abstract getPort()I
.end method

.method public abstract getQuery()Lorg/simpleframework/http/Query;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
