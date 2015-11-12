.class interface abstract Lorg/simpleframework/http/core/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method

.method public abstract getSession(Lorg/simpleframework/http/core/Entity;)Lorg/simpleframework/http/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method

.method public abstract getSession(Lorg/simpleframework/http/core/Entity;Z)Lorg/simpleframework/http/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method
