.class Lorg/simpleframework/http/core/TrackerBuilder;
.super Ljava/lang/Object;
.source "TrackerBuilder.java"

# interfaces
.implements Lorg/simpleframework/http/core/Builder;


# instance fields
.field private body:Lorg/simpleframework/http/core/Body;

.field private channel:Lorg/simpleframework/http/core/Channel;

.field private header:Lorg/simpleframework/http/core/Header;

.field private tracker:Lorg/simpleframework/http/core/Tracker;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Tracker;Lorg/simpleframework/http/core/Channel;)V
    .registers 3
    .param p1, "tracker"    # Lorg/simpleframework/http/core/Tracker;
    .param p2, "channel"    # Lorg/simpleframework/http/core/Channel;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/simpleframework/http/core/TrackerBuilder;->tracker:Lorg/simpleframework/http/core/Tracker;

    .line 67
    iput-object p2, p0, Lorg/simpleframework/http/core/TrackerBuilder;->channel:Lorg/simpleframework/http/core/Channel;

    .line 68
    return-void
.end method


# virtual methods
.method public getBody()Lorg/simpleframework/http/core/Body;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/http/core/TrackerBuilder;->body:Lorg/simpleframework/http/core/Body;

    return-object v0
.end method

.method public getChannel()Lorg/simpleframework/http/core/Channel;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/simpleframework/http/core/TrackerBuilder;->channel:Lorg/simpleframework/http/core/Channel;

    return-object v0
.end method

.method public getHeader()Lorg/simpleframework/http/core/Header;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/simpleframework/http/core/TrackerBuilder;->header:Lorg/simpleframework/http/core/Header;

    return-object v0
.end method

.method public getSession(Z)Lorg/simpleframework/http/session/Session;
    .registers 3
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/util/lease/LeaseException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/simpleframework/http/core/TrackerBuilder;->tracker:Lorg/simpleframework/http/core/Tracker;

    invoke-interface {v0, p0, p1}, Lorg/simpleframework/http/core/Tracker;->getSession(Lorg/simpleframework/http/core/Entity;Z)Lorg/simpleframework/http/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lorg/simpleframework/http/core/Body;)V
    .registers 2
    .param p1, "body"    # Lorg/simpleframework/http/core/Body;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/simpleframework/http/core/TrackerBuilder;->body:Lorg/simpleframework/http/core/Body;

    .line 80
    return-void
.end method

.method public setHeader(Lorg/simpleframework/http/core/Header;)V
    .registers 2
    .param p1, "header"    # Lorg/simpleframework/http/core/Header;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/simpleframework/http/core/TrackerBuilder;->header:Lorg/simpleframework/http/core/Header;

    .line 92
    return-void
.end method
