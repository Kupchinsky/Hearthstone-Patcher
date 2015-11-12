.class public Lorg/simpleframework/util/thread/DirectExecutor;
.super Ljava/lang/Object;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 42
    return-void
.end method
