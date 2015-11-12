.class public interface abstract Lorg/simpleframework/http/session/Observer;
.super Ljava/lang/Object;
.source "Observer.java"


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
.method public abstract cancel(Lorg/simpleframework/http/session/Session;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/http/session/Session",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract create(Lorg/simpleframework/http/session/Session;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/http/session/Session",
            "<TT;>;)V"
        }
    .end annotation
.end method
