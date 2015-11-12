.class Lorg/simpleframework/http/core/CookieTracker;
.super Ljava/lang/Object;
.source "CookieTracker.java"

# interfaces
.implements Lorg/simpleframework/http/core/Tracker;


# instance fields
.field private final provider:Lorg/simpleframework/http/session/SessionProvider;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 57
    const-wide/16 v0, 0x4b0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lorg/simpleframework/http/core/CookieTracker;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 58
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/simpleframework/http/session/SessionManager;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/http/session/SessionManager;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/CookieTracker;->provider:Lorg/simpleframework/http/session/SessionProvider;

    .line 71
    return-void
.end method

.method private getSession(Lorg/simpleframework/http/Cookie;Z)Lorg/simpleframework/http/session/Session;
    .registers 5
    .param p1, "cookie"    # Lorg/simpleframework/http/Cookie;
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lorg/simpleframework/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 123
    const/4 v1, 0x0

    .line 125
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Lorg/simpleframework/http/core/CookieTracker;->provider:Lorg/simpleframework/http/session/SessionProvider;

    invoke-interface {v1, v0, p2}, Lorg/simpleframework/http/session/SessionProvider;->open(Ljava/lang/Object;Z)Lorg/simpleframework/http/session/Session;

    move-result-object v1

    goto :goto_7
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
    .line 135
    iget-object v0, p0, Lorg/simpleframework/http/core/CookieTracker;->provider:Lorg/simpleframework/http/session/SessionProvider;

    invoke-interface {v0}, Lorg/simpleframework/http/session/SessionProvider;->close()V

    .line 136
    return-void
.end method

.method public getSession(Lorg/simpleframework/http/core/Entity;)Lorg/simpleframework/http/session/Session;
    .registers 3
    .param p1, "entity"    # Lorg/simpleframework/http/core/Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/http/core/CookieTracker;->getSession(Lorg/simpleframework/http/core/Entity;Z)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Lorg/simpleframework/http/core/Entity;Z)Lorg/simpleframework/http/session/Session;
    .registers 6
    .param p1, "entity"    # Lorg/simpleframework/http/core/Entity;
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-interface {p1}, Lorg/simpleframework/http/core/Entity;->getHeader()Lorg/simpleframework/http/core/Header;

    move-result-object v1

    .line 100
    .local v1, "header":Lorg/simpleframework/http/core/Header;
    invoke-interface {v1, p2}, Lorg/simpleframework/http/core/Header;->getSession(Z)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    .line 102
    .local v0, "cookie":Lorg/simpleframework/http/Cookie;
    if-nez v0, :cond_c

    .line 103
    const/4 v2, 0x0

    .line 105
    :goto_b
    return-object v2

    :cond_c
    invoke-direct {p0, v0, p2}, Lorg/simpleframework/http/core/CookieTracker;->getSession(Lorg/simpleframework/http/Cookie;Z)Lorg/simpleframework/http/session/Session;

    move-result-object v2

    goto :goto_b
.end method
