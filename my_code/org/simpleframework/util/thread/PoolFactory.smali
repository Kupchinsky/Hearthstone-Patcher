.class Lorg/simpleframework/util/thread/PoolFactory;
.super Ljava/lang/Object;
.source "PoolFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/simpleframework/util/thread/PoolFactory;->type:Ljava/lang/Class;

    .line 48
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 60
    iget-object v2, p0, Lorg/simpleframework/util/thread/PoolFactory;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {v1}, Lorg/simpleframework/util/thread/ThreadNamer;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v2
.end method
