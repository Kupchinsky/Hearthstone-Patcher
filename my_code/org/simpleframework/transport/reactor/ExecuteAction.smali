.class Lorg/simpleframework/transport/reactor/ExecuteAction;
.super Ljava/lang/Object;
.source "ExecuteAction.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Action;


# instance fields
.field private final expiry:J

.field private final require:I

.field private final task:Lorg/simpleframework/transport/reactor/Operation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/reactor/Operation;IJ)V
    .registers 8
    .param p1, "task"    # Lorg/simpleframework/transport/reactor/Operation;
    .param p2, "require"    # I
    .param p3, "expiry"    # J

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/simpleframework/transport/reactor/ExecuteAction;->expiry:J

    .line 60
    iput p2, p0, Lorg/simpleframework/transport/reactor/ExecuteAction;->require:I

    .line 61
    iput-object p1, p0, Lorg/simpleframework/transport/reactor/ExecuteAction;->task:Lorg/simpleframework/transport/reactor/Operation;

    .line 62
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/ExecuteAction;->task:Lorg/simpleframework/transport/reactor/Operation;

    invoke-interface {v0}, Lorg/simpleframework/transport/reactor/Operation;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    return-object v0
.end method

.method public getExpiry()J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/simpleframework/transport/reactor/ExecuteAction;->expiry:J

    return-wide v0
.end method

.method public getInterest()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lorg/simpleframework/transport/reactor/ExecuteAction;->require:I

    return v0
.end method

.method public getOperation()Lorg/simpleframework/transport/reactor/Operation;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/ExecuteAction;->task:Lorg/simpleframework/transport/reactor/Operation;

    return-object v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/ExecuteAction;->task:Lorg/simpleframework/transport/reactor/Operation;

    invoke-interface {v0}, Lorg/simpleframework/transport/reactor/Operation;->run()V

    .line 73
    return-void
.end method
