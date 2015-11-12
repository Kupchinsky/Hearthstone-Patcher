.class public Lorg/simpleframework/util/thread/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private engine:Lorg/simpleframework/util/thread/SchedulerQueue;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/simpleframework/util/thread/SchedulerQueue;

    invoke-direct {v0, p1}, Lorg/simpleframework/util/thread/SchedulerQueue;-><init>(I)V

    iput-object v0, p0, Lorg/simpleframework/util/thread/Scheduler;->engine:Lorg/simpleframework/util/thread/SchedulerQueue;

    .line 49
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/util/thread/Scheduler;->execute(Ljava/lang/Runnable;J)V

    .line 60
    return-void
.end method

.method public execute(Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/simpleframework/util/thread/Scheduler;->execute(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 73
    return-void
.end method

.method public execute(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/simpleframework/util/thread/Scheduler;->engine:Lorg/simpleframework/util/thread/SchedulerQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/simpleframework/util/thread/SchedulerQueue;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 87
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/simpleframework/util/thread/Scheduler;->engine:Lorg/simpleframework/util/thread/SchedulerQueue;

    invoke-virtual {v0}, Lorg/simpleframework/util/thread/SchedulerQueue;->stop()V

    .line 97
    return-void
.end method
