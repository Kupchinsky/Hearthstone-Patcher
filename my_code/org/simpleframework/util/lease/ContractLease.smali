.class Lorg/simpleframework/util/lease/ContractLease;
.super Ljava/lang/Object;
.source "ContractLease.java"

# interfaces
.implements Lorg/simpleframework/util/lease/Lease;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/util/lease/Lease",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final contract:Lorg/simpleframework/util/lease/Contract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/lease/Contract",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final handler:Lorg/simpleframework/util/lease/Controller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/lease/Controller",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/lease/Controller;Lorg/simpleframework/util/lease/Contract;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Controller",
            "<TT;>;",
            "Lorg/simpleframework/util/lease/Contract",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/simpleframework/util/lease/ContractLease;, "Lorg/simpleframework/util/lease/ContractLease<TT;>;"
    .local p1, "handler":Lorg/simpleframework/util/lease/Controller;, "Lorg/simpleframework/util/lease/Controller<TT;>;"
    .local p2, "contract":Lorg/simpleframework/util/lease/Contract;, "Lorg/simpleframework/util/lease/Contract<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/simpleframework/util/lease/ContractLease;->handler:Lorg/simpleframework/util/lease/Controller;

    .line 55
    iput-object p2, p0, Lorg/simpleframework/util/lease/ContractLease;->contract:Lorg/simpleframework/util/lease/Contract;

    .line 56
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/simpleframework/util/lease/ContractLease;, "Lorg/simpleframework/util/lease/ContractLease<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/lease/ContractLease;->handler:Lorg/simpleframework/util/lease/Controller;

    iget-object v1, p0, Lorg/simpleframework/util/lease/ContractLease;->contract:Lorg/simpleframework/util/lease/Contract;

    invoke-interface {v0, v1}, Lorg/simpleframework/util/lease/Controller;->cancel(Lorg/simpleframework/util/lease/Contract;)V

    .line 105
    return-void
.end method

.method public getExpiry(Ljava/util/concurrent/TimeUnit;)J
    .registers 4
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/simpleframework/util/lease/ContractLease;, "Lorg/simpleframework/util/lease/ContractLease<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/lease/ContractLease;->contract:Lorg/simpleframework/util/lease/Contract;

    invoke-interface {v0, p1}, Lorg/simpleframework/util/lease/Contract;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/simpleframework/util/lease/ContractLease;, "Lorg/simpleframework/util/lease/ContractLease<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/lease/ContractLease;->contract:Lorg/simpleframework/util/lease/Contract;

    invoke-interface {v0}, Lorg/simpleframework/util/lease/Contract;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public renew(JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/simpleframework/util/lease/ContractLease;, "Lorg/simpleframework/util/lease/ContractLease<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_b

    .line 89
    iget-object v0, p0, Lorg/simpleframework/util/lease/ContractLease;->contract:Lorg/simpleframework/util/lease/Contract;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/util/lease/Contract;->setDelay(JLjava/util/concurrent/TimeUnit;)V

    .line 91
    :cond_b
    iget-object v0, p0, Lorg/simpleframework/util/lease/ContractLease;->handler:Lorg/simpleframework/util/lease/Controller;

    iget-object v1, p0, Lorg/simpleframework/util/lease/ContractLease;->contract:Lorg/simpleframework/util/lease/Contract;

    invoke-interface {v0, v1}, Lorg/simpleframework/util/lease/Controller;->renew(Lorg/simpleframework/util/lease/Contract;)V

    .line 92
    return-void
.end method
