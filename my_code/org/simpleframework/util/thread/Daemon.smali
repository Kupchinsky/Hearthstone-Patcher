.class public abstract Lorg/simpleframework/util/thread/Daemon;
.super Ljava/lang/Object;
.source "Daemon.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private thread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/simpleframework/util/thread/Daemon;->thread:Ljava/lang/Thread;

    .line 49
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interrupt()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/simpleframework/util/thread/Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 88
    return-void
.end method

.method public isStarted()Z
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lorg/simpleframework/util/thread/Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public join()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/simpleframework/util/thread/Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 100
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/simpleframework/util/thread/Daemon;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {v1}, Lorg/simpleframework/util/thread/ThreadNamer;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/simpleframework/util/thread/Daemon;->isStarted()Z

    move-result v2

    if-nez v2, :cond_18

    .line 62
    iget-object v2, p0, Lorg/simpleframework/util/thread/Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lorg/simpleframework/util/thread/Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 65
    :cond_18
    return-void
.end method
