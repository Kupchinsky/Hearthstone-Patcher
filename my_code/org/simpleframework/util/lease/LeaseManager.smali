.class public Lorg/simpleframework/util/lease/LeaseManager;
.super Ljava/lang/Object;
.source "LeaseManager.java"

# interfaces
.implements Lorg/simpleframework/util/lease/LeaseProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/util/lease/LeaseProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private handler:Lorg/simpleframework/util/lease/Controller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/lease/Controller",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/lease/Cleaner;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Cleaner",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseManager;, "Lorg/simpleframework/util/lease/LeaseManager<TT;>;"
    .local p1, "cleaner":Lorg/simpleframework/util/lease/Cleaner;, "Lorg/simpleframework/util/lease/Cleaner<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/simpleframework/util/lease/Maintainer;

    invoke-direct {v0, p1}, Lorg/simpleframework/util/lease/Maintainer;-><init>(Lorg/simpleframework/util/lease/Cleaner;)V

    iput-object v0, p0, Lorg/simpleframework/util/lease/LeaseManager;->handler:Lorg/simpleframework/util/lease/Controller;

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 88
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseManager;, "Lorg/simpleframework/util/lease/LeaseManager<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/util/lease/LeaseManager;->handler:Lorg/simpleframework/util/lease/Controller;

    invoke-interface {v1}, Lorg/simpleframework/util/lease/Controller;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 92
    :goto_5
    return-void

    .line 89
    :catch_6
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_5
.end method

.method public lease(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Lorg/simpleframework/util/lease/Lease;
    .registers 9
    .param p2, "duration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/simpleframework/util/lease/Lease",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseManager;, "Lorg/simpleframework/util/lease/LeaseManager<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/simpleframework/util/lease/Entry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/simpleframework/util/lease/Entry;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 71
    .local v0, "contract":Lorg/simpleframework/util/lease/Contract;, "Lorg/simpleframework/util/lease/Contract<TT;>;"
    :try_start_5
    iget-object v2, p0, Lorg/simpleframework/util/lease/LeaseManager;->handler:Lorg/simpleframework/util/lease/Controller;

    invoke-interface {v2, v0}, Lorg/simpleframework/util/lease/Controller;->issue(Lorg/simpleframework/util/lease/Contract;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_12

    .line 75
    new-instance v2, Lorg/simpleframework/util/lease/ContractLease;

    iget-object v3, p0, Lorg/simpleframework/util/lease/LeaseManager;->handler:Lorg/simpleframework/util/lease/Controller;

    invoke-direct {v2, v3, v0}, Lorg/simpleframework/util/lease/ContractLease;-><init>(Lorg/simpleframework/util/lease/Controller;Lorg/simpleframework/util/lease/Contract;)V

    :goto_11
    return-object v2

    .line 72
    :catch_12
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_11
.end method
