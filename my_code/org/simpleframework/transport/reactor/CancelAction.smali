.class Lorg/simpleframework/transport/reactor/CancelAction;
.super Ljava/lang/Object;
.source "CancelAction.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Action;


# instance fields
.field private final action:Lorg/simpleframework/transport/reactor/Action;

.field private final task:Lorg/simpleframework/transport/reactor/Operation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/reactor/Action;)V
    .registers 3
    .param p1, "action"    # Lorg/simpleframework/transport/reactor/Action;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-interface {p1}, Lorg/simpleframework/transport/reactor/Action;->getOperation()Lorg/simpleframework/transport/reactor/Operation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/transport/reactor/CancelAction;->task:Lorg/simpleframework/transport/reactor/Operation;

    .line 55
    iput-object p1, p0, Lorg/simpleframework/transport/reactor/CancelAction;->action:Lorg/simpleframework/transport/reactor/Action;

    .line 56
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/CancelAction;->action:Lorg/simpleframework/transport/reactor/Action;

    invoke-interface {v0}, Lorg/simpleframework/transport/reactor/Action;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    return-object v0
.end method

.method public getExpiry()J
    .registers 3

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInterest()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/CancelAction;->action:Lorg/simpleframework/transport/reactor/Action;

    invoke-interface {v0}, Lorg/simpleframework/transport/reactor/Action;->getInterest()I

    move-result v0

    return v0
.end method

.method public getOperation()Lorg/simpleframework/transport/reactor/Operation;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/CancelAction;->task:Lorg/simpleframework/transport/reactor/Operation;

    return-object v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/simpleframework/transport/reactor/CancelAction;->task:Lorg/simpleframework/transport/reactor/Operation;

    invoke-interface {v0}, Lorg/simpleframework/transport/reactor/Operation;->cancel()V

    .line 66
    return-void
.end method
