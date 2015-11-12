.class interface abstract Lorg/simpleframework/util/lease/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


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
.method public abstract cancel(Lorg/simpleframework/util/lease/Contract;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Contract",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract issue(Lorg/simpleframework/util/lease/Contract;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Contract",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method

.method public abstract renew(Lorg/simpleframework/util/lease/Contract;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Contract",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation
.end method
