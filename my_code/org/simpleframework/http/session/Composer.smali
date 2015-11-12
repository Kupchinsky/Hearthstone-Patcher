.class Lorg/simpleframework/http/session/Composer;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "Composer.java"

# interfaces
.implements Lorg/simpleframework/util/lease/Cleaner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<TT;",
        "Lorg/simpleframework/http/session/Session;",
        ">;",
        "Lorg/simpleframework/util/lease/Cleaner",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private handler:Lorg/simpleframework/http/session/Controller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/http/session/Controller",
            "<TT;>;"
        }
    .end annotation
.end field

.field private manager:Lorg/simpleframework/util/lease/LeaseManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/lease/LeaseManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private observer:Lorg/simpleframework/http/session/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/http/session/Observer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/session/Observer;JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p2, "duration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/http/session/Observer",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/simpleframework/http/session/Composer;, "Lorg/simpleframework/http/session/Composer<TT;>;"
    .local p1, "observer":Lorg/simpleframework/http/session/Observer;, "Lorg/simpleframework/http/session/Observer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 71
    new-instance v0, Lorg/simpleframework/util/lease/LeaseManager;

    invoke-direct {v0, p0}, Lorg/simpleframework/util/lease/LeaseManager;-><init>(Lorg/simpleframework/util/lease/Cleaner;)V

    iput-object v0, p0, Lorg/simpleframework/http/session/Composer;->manager:Lorg/simpleframework/util/lease/LeaseManager;

    .line 72
    new-instance v0, Lorg/simpleframework/http/session/Maintainer;

    iget-object v1, p0, Lorg/simpleframework/http/session/Composer;->manager:Lorg/simpleframework/util/lease/LeaseManager;

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/simpleframework/http/session/Maintainer;-><init>(Lorg/simpleframework/util/lease/LeaseManager;JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lorg/simpleframework/http/session/Composer;->handler:Lorg/simpleframework/http/session/Controller;

    .line 73
    iput-object p1, p0, Lorg/simpleframework/http/session/Composer;->observer:Lorg/simpleframework/http/session/Observer;

    .line 74
    return-void
.end method

.method private create(Ljava/lang/Object;)Lorg/simpleframework/http/session/Session;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/simpleframework/http/session/Session",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lorg/simpleframework/http/session/Composer;, "Lorg/simpleframework/http/session/Composer<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/simpleframework/http/session/Composer;->handler:Lorg/simpleframework/http/session/Controller;

    invoke-interface {v1, p1}, Lorg/simpleframework/http/session/Controller;->start(Ljava/lang/Object;)Lorg/simpleframework/util/lease/Lease;

    move-result-object v0

    .line 142
    .local v0, "lease":Lorg/simpleframework/util/lease/Lease;, "Lorg/simpleframework/util/lease/Lease<TT;>;"
    if-eqz v0, :cond_d

    .line 143
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/http/session/Composer;->create(Ljava/lang/Object;Lorg/simpleframework/util/lease/Lease;)Lorg/simpleframework/http/session/Session;

    move-result-object v1

    .line 145
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private create(Ljava/lang/Object;Lorg/simpleframework/util/lease/Lease;)Lorg/simpleframework/http/session/Session;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/simpleframework/util/lease/Lease",
            "<TT;>;)",
            "Lorg/simpleframework/http/session/Session",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/simpleframework/http/session/Composer;, "Lorg/simpleframework/http/session/Composer<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "lease":Lorg/simpleframework/util/lease/Lease;, "Lorg/simpleframework/util/lease/Lease<TT;>;"
    new-instance v0, Lorg/simpleframework/http/session/LeaseSession;

    invoke-direct {v0, p2}, Lorg/simpleframework/http/session/LeaseSession;-><init>(Lorg/simpleframework/util/lease/Lease;)V

    .line 162
    .local v0, "session":Lorg/simpleframework/http/session/Session;, "Lorg/simpleframework/http/session/Session<TT;>;"
    if-eqz p1, :cond_a

    .line 163
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/http/session/Composer;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_a
    iget-object v1, p0, Lorg/simpleframework/http/session/Composer;->observer:Lorg/simpleframework/http/session/Observer;

    if-eqz v1, :cond_13

    .line 166
    iget-object v1, p0, Lorg/simpleframework/http/session/Composer;->observer:Lorg/simpleframework/http/session/Observer;

    invoke-interface {v1, v0}, Lorg/simpleframework/http/session/Observer;->create(Lorg/simpleframework/http/session/Session;)V

    .line 168
    :cond_13
    return-object v0
.end method

.method private locate(Ljava/lang/Object;)Lorg/simpleframework/http/session/Session;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/simpleframework/http/session/Session",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/simpleframework/http/session/Composer;, "Lorg/simpleframework/http/session/Composer<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/session/Composer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/http/session/Session;

    .line 106
    .local v0, "session":Lorg/simpleframework/http/session/Session;, "Lorg/simpleframework/http/session/Session<TT;>;"
    if-eqz v0, :cond_d

    .line 107
    iget-object v1, p0, Lorg/simpleframework/http/session/Composer;->handler:Lorg/simpleframework/http/session/Controller;

    invoke-interface {v1, p1}, Lorg/simpleframework/http/session/Controller;->renew(Ljava/lang/Object;)V

    .line 109
    :cond_d
    return-object v0
.end method


# virtual methods
.method public clean(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lorg/simpleframework/http/session/Composer;, "Lorg/simpleframework/http/session/Composer<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/session/Composer;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/http/session/Session;

    .line 197
    .local v0, "session":Lorg/simpleframework/http/session/Session;, "Lorg/simpleframework/http/session/Session<TT;>;"
    if-eqz p1, :cond_d

    .line 198
    iget-object v1, p0, Lorg/simpleframework/http/session/Composer;->handler:Lorg/simpleframework/http/session/Controller;

    invoke-interface {v1, p1}, Lorg/simpleframework/http/session/Controller;->cancel(Ljava/lang/Object;)V

    .line 200
    :cond_d
    iget-object v1, p0, Lorg/simpleframework/http/session/Composer;->observer:Lorg/simpleframework/http/session/Observer;

    if-eqz v1, :cond_16

    .line 201
    iget-object v1, p0, Lorg/simpleframework/http/session/Composer;->observer:Lorg/simpleframework/http/session/Observer;

    invoke-interface {v1, v0}, Lorg/simpleframework/http/session/Observer;->cancel(Lorg/simpleframework/http/session/Session;)V

    .line 203
    :cond_16
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lorg/simpleframework/http/session/Composer;, "Lorg/simpleframework/http/session/Composer<TT;>;"
    iget-boolean v0, p0, Lorg/simpleframework/http/session/Composer;->closed:Z

    if-nez v0, :cond_9

    .line 181
    iget-object v0, p0, Lorg/simpleframework/http/session/Composer;->manager:Lorg/simpleframework/util/lease/LeaseManager;

    invoke-virtual {v0}, Lorg/simpleframework/util/lease/LeaseManager;->close()V

    .line 183
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/http/session/Composer;->closed:Z

    .line 184
    return-void
.end method

.method public compose(Ljava/lang/Object;)Lorg/simpleframework/http/session/Session;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/simpleframework/http/session/Session",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/simpleframework/http/session/Composer;, "Lorg/simpleframework/http/session/Composer<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lorg/simpleframework/http/session/Composer;->closed:Z

    if-eqz v0, :cond_f

    .line 124
    new-instance v0, Lorg/simpleframework/http/session/SessionException;

    const-string v1, "Session creation is closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/http/session/SessionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 126
    :cond_f
    invoke-direct {p0, p1}, Lorg/simpleframework/http/session/Composer;->create(Ljava/lang/Object;)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;)Lorg/simpleframework/http/session/Session;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/simpleframework/http/session/Session",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/simpleframework/http/session/Composer;, "Lorg/simpleframework/http/session/Composer<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lorg/simpleframework/http/session/Composer;->closed:Z

    if-eqz v0, :cond_f

    .line 88
    new-instance v0, Lorg/simpleframework/http/session/SessionException;

    const-string v1, "Session creation is closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/http/session/SessionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 90
    :cond_f
    invoke-direct {p0, p1}, Lorg/simpleframework/http/session/Composer;->locate(Ljava/lang/Object;)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    return-object v0
.end method
