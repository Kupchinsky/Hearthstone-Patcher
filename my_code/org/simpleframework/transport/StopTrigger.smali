.class Lorg/simpleframework/transport/StopTrigger;
.super Lorg/simpleframework/util/thread/Daemon;
.source "StopTrigger.java"


# instance fields
.field private final processor:Lorg/simpleframework/transport/Processor;

.field private final reactor:Lorg/simpleframework/transport/reactor/Reactor;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Processor;Lorg/simpleframework/transport/reactor/Reactor;)V
    .registers 3
    .param p1, "processor"    # Lorg/simpleframework/transport/Processor;
    .param p2, "reactor"    # Lorg/simpleframework/transport/reactor/Reactor;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/simpleframework/util/thread/Daemon;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/simpleframework/transport/StopTrigger;->processor:Lorg/simpleframework/transport/Processor;

    .line 55
    iput-object p2, p0, Lorg/simpleframework/transport/StopTrigger;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    .line 56
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/transport/StopTrigger;->processor:Lorg/simpleframework/transport/Processor;

    invoke-interface {v1}, Lorg/simpleframework/transport/Processor;->stop()V

    .line 72
    iget-object v1, p0, Lorg/simpleframework/transport/StopTrigger;->reactor:Lorg/simpleframework/transport/reactor/Reactor;

    invoke-interface {v1}, Lorg/simpleframework/transport/reactor/Reactor;->stop()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 76
    :goto_a
    return-void

    .line 73
    :catch_b
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_a
.end method
