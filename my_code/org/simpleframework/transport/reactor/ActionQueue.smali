.class Lorg/simpleframework/transport/reactor/ActionQueue;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "ActionQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<",
        "Lorg/simpleframework/transport/reactor/Action;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 41
    return-void
.end method
