.class interface abstract Lorg/simpleframework/util/lease/Contract;
.super Ljava/lang/Object;
.source "Contract.java"

# interfaces
.implements Ljava/util/concurrent/Delayed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Delayed;"
    }
.end annotation


# virtual methods
.method public abstract getDelay(Ljava/util/concurrent/TimeUnit;)J
.end method

.method public abstract getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract setDelay(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
