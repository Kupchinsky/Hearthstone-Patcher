.class Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;
.super Ljava/lang/Object;
.source "ThreadNamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/util/thread/ThreadNamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sequencer"
.end annotation


# instance fields
.field private final map:Lorg/simpleframework/util/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/KeyMap",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lorg/simpleframework/util/KeyMap;

    invoke-direct {v0}, Lorg/simpleframework/util/KeyMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;->map:Lorg/simpleframework/util/KeyMap;

    .line 86
    return-void
.end method


# virtual methods
.method public declared-synchronized next(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;->map:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v1, p1}, Lorg/simpleframework/util/KeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_15

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v0    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 102
    .restart local v0    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;->map:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/util/KeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    move-result v1

    monitor-exit p0

    return v1

    .line 98
    .end local v0    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method
