.class Lorg/simpleframework/util/lease/ContractQueue;
.super Ljava/util/concurrent/DelayQueue;
.source "ContractQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/DelayQueue",
        "<",
        "Lorg/simpleframework/util/lease/Contract",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    .local p0, "this":Lorg/simpleframework/util/lease/ContractQueue;, "Lorg/simpleframework/util/lease/ContractQueue<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/DelayQueue;-><init>()V

    .line 43
    return-void
.end method
