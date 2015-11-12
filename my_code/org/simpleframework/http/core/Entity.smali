.class interface abstract Lorg/simpleframework/http/core/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# virtual methods
.method public abstract getBody()Lorg/simpleframework/http/core/Body;
.end method

.method public abstract getChannel()Lorg/simpleframework/http/core/Channel;
.end method

.method public abstract getHeader()Lorg/simpleframework/http/core/Header;
.end method

.method public abstract getSession(Z)Lorg/simpleframework/http/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method
