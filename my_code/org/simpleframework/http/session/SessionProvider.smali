.class public interface abstract Lorg/simpleframework/http/session/SessionProvider;
.super Ljava/lang/Object;
.source "SessionProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/Object;)Lorg/simpleframework/http/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/simpleframework/http/session/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/Object;Z)Lorg/simpleframework/http/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lorg/simpleframework/http/session/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method
