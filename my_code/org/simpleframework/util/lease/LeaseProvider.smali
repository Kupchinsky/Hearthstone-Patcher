.class public interface abstract Lorg/simpleframework/util/lease/LeaseProvider;
.super Ljava/lang/Object;
.source "LeaseProvider.java"


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
.end method

.method public abstract lease(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Lorg/simpleframework/util/lease/Lease;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/simpleframework/util/lease/Lease",
            "<TT;>;"
        }
    .end annotation
.end method
