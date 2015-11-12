.class Lorg/simpleframework/http/session/Maintainer;
.super Ljava/lang/Object;
.source "Maintainer.java"

# interfaces
.implements Lorg/simpleframework/http/session/Controller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/http/session/Controller",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final duration:J

.field private final manager:Lorg/simpleframework/util/lease/LeaseManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/lease/LeaseManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final map:Lorg/simpleframework/util/lease/LeaseMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/lease/LeaseMap",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/lease/LeaseManager;JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p2, "duration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/LeaseManager",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/simpleframework/http/session/Maintainer;, "Lorg/simpleframework/http/session/Maintainer<TT;>;"
    .local p1, "manager":Lorg/simpleframework/util/lease/LeaseManager;, "Lorg/simpleframework/util/lease/LeaseManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/simpleframework/util/lease/LeaseMap;

    invoke-direct {v0}, Lorg/simpleframework/util/lease/LeaseMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/session/Maintainer;->map:Lorg/simpleframework/util/lease/LeaseMap;

    .line 72
    iput-object p1, p0, Lorg/simpleframework/http/session/Maintainer;->manager:Lorg/simpleframework/util/lease/LeaseManager;

    .line 73
    iput-wide p2, p0, Lorg/simpleframework/http/session/Maintainer;->duration:J

    .line 74
    iput-object p4, p0, Lorg/simpleframework/http/session/Maintainer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 75
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lorg/simpleframework/http/session/Maintainer;, "Lorg/simpleframework/http/session/Maintainer<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/simpleframework/http/session/Maintainer;->map:Lorg/simpleframework/util/lease/LeaseMap;

    invoke-virtual {v1, p1}, Lorg/simpleframework/util/lease/LeaseMap;->remove(Ljava/lang/Object;)Lorg/simpleframework/util/lease/Lease;

    move-result-object v0

    .line 120
    .local v0, "lease":Lorg/simpleframework/util/lease/Lease;, "Lorg/simpleframework/util/lease/Lease<TT;>;"
    if-nez v0, :cond_13

    .line 121
    new-instance v1, Lorg/simpleframework/http/session/SessionException;

    const-string v2, "Session does not exist"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/http/session/SessionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 123
    :cond_13
    return-void
.end method

.method public renew(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/simpleframework/http/session/Maintainer;, "Lorg/simpleframework/http/session/Maintainer<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/simpleframework/http/session/Maintainer;->map:Lorg/simpleframework/util/lease/LeaseMap;

    invoke-virtual {v1, p1}, Lorg/simpleframework/util/lease/LeaseMap;->get(Ljava/lang/Object;)Lorg/simpleframework/util/lease/Lease;

    move-result-object v0

    .line 104
    .local v0, "lease":Lorg/simpleframework/util/lease/Lease;, "Lorg/simpleframework/util/lease/Lease<TT;>;"
    if-nez v0, :cond_13

    .line 105
    new-instance v1, Lorg/simpleframework/http/session/SessionException;

    const-string v2, "Session does not exist"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/http/session/SessionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 107
    :cond_13
    iget-wide v2, p0, Lorg/simpleframework/http/session/Maintainer;->duration:J

    iget-object v1, p0, Lorg/simpleframework/http/session/Maintainer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lorg/simpleframework/util/lease/Lease;->renew(JLjava/util/concurrent/TimeUnit;)V

    .line 108
    return-void
.end method

.method public start(Ljava/lang/Object;)Lorg/simpleframework/util/lease/Lease;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/simpleframework/util/lease/Lease",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/simpleframework/http/session/Maintainer;, "Lorg/simpleframework/http/session/Maintainer<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/simpleframework/http/session/Maintainer;->manager:Lorg/simpleframework/util/lease/LeaseManager;

    iget-wide v2, p0, Lorg/simpleframework/http/session/Maintainer;->duration:J

    iget-object v4, p0, Lorg/simpleframework/http/session/Maintainer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, v2, v3, v4}, Lorg/simpleframework/util/lease/LeaseManager;->lease(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Lorg/simpleframework/util/lease/Lease;

    move-result-object v0

    .line 88
    .local v0, "lease":Lorg/simpleframework/util/lease/Lease;, "Lorg/simpleframework/util/lease/Lease<TT;>;"
    if-eqz v0, :cond_11

    .line 89
    iget-object v1, p0, Lorg/simpleframework/http/session/Maintainer;->map:Lorg/simpleframework/util/lease/LeaseMap;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/util/lease/LeaseMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_11
    return-object v0
.end method
