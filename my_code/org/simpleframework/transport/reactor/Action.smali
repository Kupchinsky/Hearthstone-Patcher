.class interface abstract Lorg/simpleframework/transport/reactor/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public abstract getChannel()Ljava/nio/channels/SelectableChannel;
.end method

.method public abstract getExpiry()J
.end method

.method public abstract getInterest()I
.end method

.method public abstract getOperation()Lorg/simpleframework/transport/reactor/Operation;
.end method
