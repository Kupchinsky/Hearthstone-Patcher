.class public Lorg/simpleframework/http/session/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lorg/simpleframework/http/session/SessionProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/http/session/SessionProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final composer:Lorg/simpleframework/http/session/Composer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/http/session/Composer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    .local p0, "this":Lorg/simpleframework/http/session/SessionManager;, "Lorg/simpleframework/http/session/SessionManager<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/http/session/SessionManager;-><init>(Lorg/simpleframework/http/session/Observer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 84
    .local p0, "this":Lorg/simpleframework/http/session/SessionManager;, "Lorg/simpleframework/http/session/SessionManager<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/simpleframework/http/session/SessionManager;-><init>(Lorg/simpleframework/http/session/Observer;JLjava/util/concurrent/TimeUnit;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/http/session/Observer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/http/session/Observer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/simpleframework/http/session/SessionManager;, "Lorg/simpleframework/http/session/SessionManager<TT;>;"
    .local p1, "observer":Lorg/simpleframework/http/session/Observer;, "Lorg/simpleframework/http/session/Observer<TT;>;"
    const-wide/16 v0, 0x4b0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/simpleframework/http/session/SessionManager;-><init>(Lorg/simpleframework/http/session/Observer;JLjava/util/concurrent/TimeUnit;)V

    .line 71
    return-void
.end method

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
    .line 98
    .local p0, "this":Lorg/simpleframework/http/session/SessionManager;, "Lorg/simpleframework/http/session/SessionManager<TT;>;"
    .local p1, "observer":Lorg/simpleframework/http/session/Observer;, "Lorg/simpleframework/http/session/Observer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lorg/simpleframework/http/session/Composer;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/simpleframework/http/session/Composer;-><init>(Lorg/simpleframework/http/session/Observer;JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lorg/simpleframework/http/session/SessionManager;->composer:Lorg/simpleframework/http/session/Composer;

    .line 100
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/simpleframework/http/session/SessionManager;, "Lorg/simpleframework/http/session/SessionManager<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/http/session/SessionManager;->composer:Lorg/simpleframework/http/session/Composer;

    invoke-virtual {v0}, Lorg/simpleframework/http/session/Composer;->close()V

    .line 155
    return-void
.end method

.method public open(Ljava/lang/Object;)Lorg/simpleframework/http/session/Session;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/simpleframework/http/session/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/simpleframework/http/session/SessionManager;, "Lorg/simpleframework/http/session/SessionManager<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/http/session/SessionManager;->open(Ljava/lang/Object;Z)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/Object;Z)Lorg/simpleframework/http/session/Session;
    .registers 5
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lorg/simpleframework/http/session/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lorg/simpleframework/http/session/SessionManager;, "Lorg/simpleframework/http/session/SessionManager<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/simpleframework/http/session/SessionManager;->composer:Lorg/simpleframework/http/session/Composer;

    invoke-virtual {v1, p1}, Lorg/simpleframework/http/session/Composer;->lookup(Ljava/lang/Object;)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    .line 136
    .local v0, "session":Lorg/simpleframework/http/session/Session;
    if-eqz v0, :cond_9

    .line 142
    .end local v0    # "session":Lorg/simpleframework/http/session/Session;
    :goto_8
    return-object v0

    .line 139
    .restart local v0    # "session":Lorg/simpleframework/http/session/Session;
    :cond_9
    if-nez p2, :cond_d

    .line 140
    const/4 v0, 0x0

    goto :goto_8

    .line 142
    :cond_d
    iget-object v1, p0, Lorg/simpleframework/http/session/SessionManager;->composer:Lorg/simpleframework/http/session/Composer;

    invoke-virtual {v1, p1}, Lorg/simpleframework/http/session/Composer;->compose(Ljava/lang/Object;)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    goto :goto_8
.end method
